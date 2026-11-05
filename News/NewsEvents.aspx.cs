using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.News
{
    public partial class NewsEvents : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cat = Request.QueryString["cat"];
                if (string.IsNullOrEmpty(cat)) cat = "All";
                LoadNews(cat);
            }
        }

        private void LoadNews(string category)
        {
            try
            {
                DataTable dt = NewsService.GetAllNews(category);
                if (dt != null && dt.Rows.Count > 0)
                {
                    rptNews.DataSource = dt;
                    rptNews.DataBind();
                    rptNews.Visible = true;
                    pnlNoNews.Visible = false;
                }
                else
                {
                    rptNews.Visible = false;
                    pnlNoNews.Visible = true;
                }

                HighlightActiveFilter(category);
            }
            catch (Exception ex)
            {
                rptNews.Visible = false;
                pnlNoNews.Visible = true;
                System.Diagnostics.Trace.TraceError("Error loading news: " + ex.Message);
            }
        }

        private void HighlightActiveFilter(string cat)
        {
            btnFilterAll.CssClass = "btn btn-outline-primary px-4 rounded-pill fw-bold";
            btnFilterAnnounce.CssClass = "btn btn-outline-primary px-4 rounded-pill fw-bold";
            btnFilterCircular.CssClass = "btn btn-outline-primary px-4 rounded-pill fw-bold";
            btnFilterEvents.CssClass = "btn btn-outline-primary px-4 rounded-pill fw-bold";
            btnFilterAcademics.CssClass = "btn btn-outline-primary px-4 rounded-pill fw-bold";

            switch (cat.ToLower())
            {
                case "announcement":
                    btnFilterAnnounce.CssClass = "btn btn-primary px-4 rounded-pill fw-bold";
                    break;
                case "circular":
                    btnFilterCircular.CssClass = "btn btn-primary px-4 rounded-pill fw-bold";
                    break;
                case "event":
                    btnFilterEvents.CssClass = "btn btn-primary px-4 rounded-pill fw-bold";
                    break;
                case "academic":
                    btnFilterAcademics.CssClass = "btn btn-primary px-4 rounded-pill fw-bold";
                    break;
                default:
                    btnFilterAll.CssClass = "btn btn-primary px-4 rounded-pill fw-bold";
                    break;
            }
        }

        protected void FilterCategory_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string category = btn.CommandArgument;
            LoadNews(category);
        }
    }
}
