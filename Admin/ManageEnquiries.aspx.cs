using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageEnquiries : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEnquiries();
            }
        }

        private void LoadEnquiries()
        {
            try
            {
                string status = ddlStatusFilter.SelectedValue;
                DataTable dt = EnquiryService.GetAllEnquiries(status);
                gvEnquiries.DataSource = dt;
                gvEnquiries.DataBind();

                if (dt != null)
                {
                    lblEnquiryCount.Text = $"{dt.Rows.Count} Enquiry Record(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading enquiries: " + ex.Message);
            }
        }

        protected void ddlStatusFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadEnquiries();
        }

        protected void btnCloseDetail_Click(object sender, EventArgs e)
        {
            pnlDetail.Visible = false;
        }

        protected void btnSaveStatus_Click(object sender, EventArgs e)
        {
            try
            {
                int enqId = Convert.ToInt32(hfEnquiryId.Value);
                string newStatus = ddlUpdateStatus.SelectedValue;
                string remarks = txtAdminRemarks.Text.Trim();

                bool updated = EnquiryService.UpdateStatus(enqId, newStatus, remarks);
                if (updated)
                {
                    ShowAlert("success", "Enquiry status updated successfully!");
                    pnlDetail.Visible = false;
                    LoadEnquiries();
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error updating enquiry status: " + ex.Message);
            }
        }

        protected void gvEnquiries_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int enqId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "ViewEnquiry")
            {
                DataTable dt = EnquiryService.GetAllEnquiries();
                DataRow[] rows = dt.Select("EnquiryId = " + enqId);
                if (rows.Length > 0)
                {
                    DataRow dr = rows[0];
                    pnlDetail.Visible = true;
                    lblEnquiryId.Text = enqId.ToString();
                    hfEnquiryId.Value = enqId.ToString();

                    litStudentName.Text = dr["StudentName"].ToString();
                    litClassApplied.Text = dr["ClassAppliedFor"].ToString();
                    litDob.Text = dr["DateOfBirth"] != DBNull.Value ? Convert.ToDateTime(dr["DateOfBirth"]).ToString("dd-MMM-yyyy") : "Not specified";
                    litParentName.Text = dr["ParentName"].ToString();
                    litPhone.Text = dr["Phone"].ToString();
                    litEmail.Text = dr["Email"].ToString();
                    litCurrentSchool.Text = dr["CurrentSchool"] != DBNull.Value ? dr["CurrentSchool"].ToString() : "N/A";
                    litAddress.Text = dr["Address"] != DBNull.Value ? dr["Address"].ToString() : "N/A";
                    litMessage.Text = dr["Message"] != DBNull.Value && !string.IsNullOrEmpty(dr["Message"].ToString()) ? dr["Message"].ToString() : "No message provided.";

                    string currentStatus = dr["EnquiryStatus"].ToString();
                    if (ddlUpdateStatus.Items.FindByValue(currentStatus) != null)
                    {
                        ddlUpdateStatus.SelectedValue = currentStatus;
                    }

                    txtAdminRemarks.Text = dr["AdminRemarks"] != DBNull.Value ? dr["AdminRemarks"].ToString() : "";
                }
            }
            else if (e.CommandName == "DeleteEnquiry")
            {
                try
                {
                    EnquiryService.DeleteEnquiry(enqId);
                    ShowAlert("success", "Enquiry record deleted successfully.");
                    LoadEnquiries();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting enquiry: " + ex.Message);
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
