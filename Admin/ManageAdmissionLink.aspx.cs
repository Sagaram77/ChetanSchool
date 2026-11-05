using System;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageAdmissionLink : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCurrentLink();
            }
        }

        private void LoadCurrentLink()
        {
            string link = SiteSettingsService.GetAdmissionFormLink();
            if (string.IsNullOrWhiteSpace(link))
            {
                link = "https://drive.google.com/";
            }

            txtAdmissionLink.Text = link;
            btnTestLink.HRef = link;
        }

        protected void btnSaveLink_Click(object sender, EventArgs e)
        {
            string link = txtAdmissionLink.Text.Trim();
            if (string.IsNullOrEmpty(link))
            {
                link = "https://drive.google.com/";
            }

            if (!link.StartsWith("http://", StringComparison.OrdinalIgnoreCase) && !link.StartsWith("https://", StringComparison.OrdinalIgnoreCase))
            {
                link = "https://" + link;
                txtAdmissionLink.Text = link;
            }

            bool success = SiteSettingsService.UpdateSetting("AdmissionFormLink", link, "Dynamic Google Drive / ERP link for Online Admissions");
            if (success)
            {
                btnTestLink.HRef = link;
                ShowAlert("Online Admission Google Drive / ERP link has been updated successfully across the entire website!", true);
            }
            else
            {
                ShowAlert("Failed to update Admission link. Please check database connectivity.", false);
            }
        }

        private void ShowAlert(string message, bool isSuccess)
        {
            pnlAlert.Visible = true;
            pnlAlert.CssClass = isSuccess ? "alert alert-success alert-dismissible fade show mb-4" : "alert alert-danger alert-dismissible fade show mb-4";
            litAlertMsg.Text = (isSuccess ? "<i class='bi bi-check-circle-fill me-2'></i>" : "<i class='bi bi-exclamation-triangle-fill me-2'></i>") + message;
        }
    }
}
