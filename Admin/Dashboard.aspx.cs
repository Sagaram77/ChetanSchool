using System;
using System.Data;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AdminFullName"] != null)
                {
                    litAdminName.Text = Session["AdminFullName"].ToString();
                }

                LoadStatistics();
                LoadRecentMessages();
            }
        }

        private void LoadStatistics()
        {
            try
            {
                DataTable dt = AdminService.GetDashboardStats();
                if (dt != null && dt.Rows.Count > 0)
                {
                    DataRow r = dt.Rows[0];
                    litTotalStaff.Text = r["TotalStaff"].ToString();
                    litTotalNews.Text = r["TotalNews"].ToString();
                    litTotalAlbums.Text = r["TotalAlbums"].ToString();
                    litTotalDisclosures.Text = r["TotalDisclosures"].ToString();
                }
            }
            catch (Exception)
            {
                // In case DB is offline or not yet seeded
            }
        }

        private void LoadRecentMessages()
        {
            try
            {
                DataTable dt = ContactService.GetAllMessages();
                if (dt != null)
                {
                    // Take top 5 rows
                    if (dt.Rows.Count > 5)
                    {
                        DataTable top5 = dt.Clone();
                        for (int i = 0; i < 5; i++)
                        {
                            top5.ImportRow(dt.Rows[i]);
                        }
                        gvRecentMessages.DataSource = top5;
                    }
                    else
                    {
                        gvRecentMessages.DataSource = dt;
                    }
                    gvRecentMessages.DataBind();
                }
            }
            catch (Exception)
            {
                // Fallback gracefully
            }
        }
    }
}
