using System;
using System.Web;
using System.Web.Security;

namespace Chetancbsewebsite.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            // Session and Forms Auth Guard
            if (Session["AdminUserId"] == null && !HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Admin/Login.aspx?returnUrl=" + Server.UrlEncode(Request.RawUrl));
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AdminFullName"] != null)
                {
                    litAdminName.Text = Session["AdminFullName"].ToString();
                }
                if (Session["AdminRole"] != null)
                {
                    litAdminRole.Text = Session["AdminRole"].ToString();
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Admin/Login.aspx");
        }
    }
}
