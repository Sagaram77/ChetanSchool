using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageTc : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtAcademicYear.Text = "2025-26";
                txtDateOfIssue.Text = DateTime.Today.ToString("yyyy-MM-dd");
                LoadTc(string.Empty);

                if (Request.QueryString["action"] == "new")
                {
                    ShowNewForm();
                }
            }
        }

        private void LoadTc(string keyword)
        {
            try
            {
                DataTable dt = TcService.SearchTc(keyword);
                gvTc.DataSource = dt;
                gvTc.DataBind();

                if (dt != null)
                {
                    lblTcCount.Text = $"{dt.Rows.Count} Record(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading TC records: " + ex.Message);
            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ShowNewForm();
        }

        private void ShowNewForm()
        {
            pnlForm.Visible = true;
            txtTcNumber.Text = string.Empty;
            txtAdmissionNo.Text = string.Empty;
            txtStudentName.Text = string.Empty;
            txtFatherName.Text = string.Empty;
            txtAcademicYear.Text = "2025-26";
            txtDateOfIssue.Text = DateTime.Today.ToString("yyyy-MM-dd");
            ddlClassLeaving.SelectedIndex = 0;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pnlForm.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            try
            {
                string tcNo = txtTcNumber.Text.Trim();
                string admissionNo = txtAdmissionNo.Text.Trim();
                string studentName = txtStudentName.Text.Trim();
                string fatherName = txtFatherName.Text.Trim();
                string classLeaving = ddlClassLeaving.SelectedValue;
                string academicYear = txtAcademicYear.Text.Trim();
                DateTime dateOfIssue = DateTime.TryParse(txtDateOfIssue.Text, out DateTime dt) ? dt : DateTime.Today;

                if (!fuTcPdf.HasFile)
                {
                    ShowAlert("warning", "Please select a PDF file to upload.");
                    return;
                }

                string ext = Path.GetExtension(fuTcPdf.FileName).ToLower();
                if (ext != ".pdf")
                {
                    ShowAlert("warning", "Only PDF files are allowed for Transfer Certificates.");
                    return;
                }

                string safeTcNo = tcNo.Replace("/", "_").Replace("\\", "_");
                string fileName = "TC_" + safeTcNo + "_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".pdf";
                string savePath = Server.MapPath("~/Uploads/TC/" + fileName);
                fuTcPdf.SaveAs(savePath);
                string pdfUrl = "~/Uploads/TC/" + fileName;

                int newId = TcService.AddTc(admissionNo, tcNo, studentName, fatherName, classLeaving, dateOfIssue, pdfUrl, academicYear);
                if (newId > 0)
                {
                    ShowAlert("success", "Transfer Certificate uploaded and saved successfully!");
                    pnlForm.Visible = false;
                    LoadTc(string.Empty);
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error saving TC: " + ex.Message);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtSearch.Text.Trim();
            LoadTc(keyword);
        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            txtSearch.Text = string.Empty;
            LoadTc(string.Empty);
        }

        protected void gvTc_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteTc")
            {
                int tcId = Convert.ToInt32(e.CommandArgument);
                try
                {
                    TcService.DeleteTc(tcId);
                    ShowAlert("success", "Transfer Certificate record removed.");
                    LoadTc(txtSearch.Text.Trim());
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting TC: " + ex.Message);
                }
            }
        }

        private void ShowAlert(string type, string message)
        {
            pnlAlert.Visible = true;
            pnlAlert.CssClass = $"alert alert-{type} alert-dismissible fade show mb-4";
            lblAlertMsg.Text = message;
        }
    }
}
