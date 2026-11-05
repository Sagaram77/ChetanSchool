using System;
using System.Web.Security;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AdminUserId"] != null)
                {
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                ShowAlert("Please enter both username and password.");
                return;
            }

            try
            {
                string fullName;
                string role;
                int userId;
                string error;

                if (AdminService.ValidateAdmin(username, password, out fullName, out role, out userId, out error))
                {
                    Session["AdminUserId"] = userId;
                    Session["AdminUsername"] = username;
                    Session["AdminFullName"] = fullName;
                    Session["AdminRole"] = role;

                    FormsAuthentication.SetAuthCookie(username, false);

                    string returnUrl = Request.QueryString["returnUrl"];
                    if (!string.IsNullOrEmpty(returnUrl))
                    {
                        Response.Redirect(returnUrl);
                    }
                    else
                    {
                        Response.Redirect("~/Admin/Dashboard.aspx");
                    }
                }
                else
                {
                    ShowAlert(error);
                }
            }
            catch (Exception ex)
            {
                ShowAlert("Database connection error: " + ex.Message + " (Please verify database 'Chetancbsehubli' exists on server 'SAGAR-M-DELL').");
            }
        }

        private void ShowAlert(string message)
        {
            pnlAlert.Visible = true;
            litErrorMsg.Text = message;
        }
    }
}
