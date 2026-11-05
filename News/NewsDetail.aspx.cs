using System;
using System.Data;
using System.Web.UI;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.News
{
    public partial class NewsDetail : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int newsId;
                if (int.TryParse(Request.QueryString["id"], out newsId))
                {
                    LoadDetail(newsId);
                }
                else
                {
                    ShowNotFound();
                }
            }
        }

        private void LoadDetail(int newsId)
        {
            try
            {
                DataRow dr = NewsService.GetNewsById(newsId);
                if (dr != null)
                {
                    pnlContent.Visible = true;
                    pnlNotFound.Visible = false;

                    litTitle.Text = Server.HtmlEncode(dr["Title"].ToString());
                    lblCategory.Text = Server.HtmlEncode(dr["Category"].ToString());
                    lblDate.Text = Convert.ToDateTime(dr["PublishedDate"]).ToString("dd MMMM yyyy");
                    litSummary.Text = Server.HtmlEncode(dr["Summary"] != DBNull.Value ? dr["Summary"].ToString() : "");
                    
                    string details = dr["ContentDetails"] != DBNull.Value ? dr["ContentDetails"].ToString() : "";
                    litDetails.Text = string.IsNullOrEmpty(details) ? litSummary.Text : details.Replace("\n", "<br />");

                    string thumb = dr["ThumbnailUrl"] != DBNull.Value ? dr["ThumbnailUrl"].ToString() : "";
                    if (!string.IsNullOrEmpty(thumb))
                    {
                        imgThumbnail.ImageUrl = ResolveUrl(thumb);
                        imgThumbnail.Visible = true;
                    }

                    string attachment = dr["AttachmentUrl"] != DBNull.Value ? dr["AttachmentUrl"].ToString() : "";
                    if (!string.IsNullOrEmpty(attachment))
                    {
                        pnlAttachment.Visible = true;
                        lnkAttachment.NavigateUrl = ResolveUrl(attachment);
                    }
                }
                else
                {
                    ShowNotFound();
                }
            }
            catch (Exception ex)
            {
                ShowNotFound();
                System.Diagnostics.Trace.TraceError("Error loading news detail: " + ex.Message);
            }
        }

        private void ShowNotFound()
        {
            pnlContent.Visible = false;
            pnlNotFound.Visible = true;
        }
    }
}
