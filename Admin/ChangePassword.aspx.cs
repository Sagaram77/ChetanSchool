using System;
using System.Web.UI;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ChangePassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            if (Session["AdminUserId"] == null)
            {
                Response.Redirect("~/Admin/Login.aspx");
                return;
            }

            int userId = Convert.ToInt32(Session["AdminUserId"]);
            string currentPwd = txtCurrentPassword.Text.Trim();
            string newPwd = txtNewPassword.Text.Trim();

            if (newPwd.Length < 6)
            {
                ShowAlert("warning", "New password must be at least 6 characters long.");
                return;
            }

            try
            {
                bool success = AdminService.ChangePassword(userId, currentPwd, newPwd);
                if (success)
                {
                    ShowAlert("success", "Password changed successfully! Please use your new password for future logins.");
                    txtCurrentPassword.Text = string.Empty;
                    txtNewPassword.Text = string.Empty;
                    txtConfirmPassword.Text = string.Empty;
                }
                else
                {
                    ShowAlert("danger", "Incorrect current password. Please verify and try again.");
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "An error occurred while changing password: " + ex.Message);
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
