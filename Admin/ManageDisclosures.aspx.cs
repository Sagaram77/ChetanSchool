using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageDisclosures : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtSession.Text = "2025-26";
                LoadDisclosures();
            }
        }

        private void LoadDisclosures()
        {
            try
            {
                DataTable dt = DisclosureService.GetAllDisclosures();
                gvDisclosures.DataSource = dt;
                gvDisclosures.DataBind();

                if (dt != null)
                {
                    lblDiscCount.Text = $"{dt.Rows.Count} Document(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading disclosures: " + ex.Message);
            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ShowNewForm();
        }

        private void ShowNewForm()
        {
            pnlForm.Visible = true;
            litFormTitle.Text = "Add Disclosure Document";
            hfDisclosureId.Value = "0";
            txtDocumentTitle.Text = string.Empty;
            txtDocNumber.Text = string.Empty;
            txtSession.Text = "2025-26";
            txtFileSize.Text = string.Empty;
            txtDisplayOrder.Text = "1";
            hfExistingPdf.Value = string.Empty;
            ddlCategory.SelectedIndex = 0;
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
                int discId = Convert.ToInt32(hfDisclosureId.Value);
                string title = txtDocumentTitle.Text.Trim();
                string category = ddlCategory.SelectedValue;
                string docNumber = txtDocNumber.Text.Trim();
                string session = txtSession.Text.Trim();
                string fileSize = txtFileSize.Text.Trim();
                int displayOrder = int.TryParse(txtDisplayOrder.Text, out int ord) ? ord : 1;

                string pdfUrl = hfExistingPdf.Value;
                if (fuPdf.HasFile)
                {
                    string ext = Path.GetExtension(fuPdf.FileName).ToLower();
                    if (ext == ".pdf")
                    {
                        string fileName = "disclosure_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ext;
                        string savePath = Server.MapPath("~/Uploads/Disclosures/" + fileName);
                        fuPdf.SaveAs(savePath);
                        pdfUrl = "~/Uploads/Disclosures/" + fileName;

                        if (string.IsNullOrEmpty(fileSize))
                        {
                            long bytes = fuPdf.FileContent.Length;
                            fileSize = (bytes / 1024) + " KB";
                        }
                    }
                    else
                    {
                        ShowAlert("warning", "Only PDF files are supported for CBSE disclosure uploads.");
                        return;
                    }
                }

                if (string.IsNullOrEmpty(pdfUrl))
                {
                    pdfUrl = "#";
                }

                if (discId == 0)
                {
                    DisclosureService.AddDisclosure(category, title, docNumber, pdfUrl, fileSize, session, displayOrder);
                    ShowAlert("success", "Mandatory disclosure document record added successfully!");
                }
                else
                {
                    DisclosureService.UpdateDisclosure(discId, category, title, docNumber, pdfUrl, fileSize, session, displayOrder);
                    ShowAlert("success", "Mandatory disclosure document record updated successfully!");
                }

                pnlForm.Visible = false;
                LoadDisclosures();
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error saving disclosure: " + ex.Message);
            }
        }

        protected void gvDisclosures_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int discId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditDisc")
            {
                DataTable dt = DisclosureService.GetAllDisclosures();
                DataRow[] rows = dt.Select("DisclosureId = " + discId);
                if (rows.Length > 0)
                {
                    DataRow dr = rows[0];
                    pnlForm.Visible = true;
                    litFormTitle.Text = "Edit Document: " + dr["DocumentTitle"];
                    hfDisclosureId.Value = discId.ToString();
                    txtDocumentTitle.Text = dr["DocumentTitle"].ToString();
                    txtDocNumber.Text = dr["DocumentNumber"] != DBNull.Value ? dr["DocumentNumber"].ToString() : "";
                    txtSession.Text = dr["AcademicSession"] != DBNull.Value ? dr["AcademicSession"].ToString() : "";
                    txtFileSize.Text = dr["FileSize"] != DBNull.Value ? dr["FileSize"].ToString() : "";
                    txtDisplayOrder.Text = dr["DisplayOrder"] != DBNull.Value ? dr["DisplayOrder"].ToString() : "1";

                    string cat = dr["Category"].ToString();
                    if (ddlCategory.Items.FindByValue(cat) != null)
                    {
                        ddlCategory.SelectedValue = cat;
                    }

                    hfExistingPdf.Value = dr["PdfFileUrl"] != DBNull.Value ? dr["PdfFileUrl"].ToString() : "";
                }
            }
            else if (e.CommandName == "DeleteDisc")
            {
                try
                {
                    DisclosureService.DeleteDisclosure(discId);
                    ShowAlert("success", "Document deleted successfully.");
                    LoadDisclosures();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting disclosure: " + ex.Message);
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
