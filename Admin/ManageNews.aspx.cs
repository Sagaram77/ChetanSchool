using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageNews : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtPublishedDate.Text = DateTime.Today.ToString("yyyy-MM-dd");
                LoadNewsList();

                if (Request.QueryString["action"] == "new")
                {
                    ShowNewForm();
                }
            }
        }

        private void LoadNewsList()
        {
            try
            {
                DataTable dt = NewsService.GetAllNews();
                gvNews.DataSource = dt;
                gvNews.DataBind();

                if (dt != null)
                {
                    lblNewsCount.Text = $"{dt.Rows.Count} Item(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading news list: " + ex.Message);
            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ShowNewForm();
        }

        private void ShowNewForm()
        {
            pnlForm.Visible = true;
            litFormTitle.Text = "Add New Announcement";
            hfNewsId.Value = "0";
            txtTitle.Text = string.Empty;
            txtSummary.Text = string.Empty;
            txtContent.Text = string.Empty;
            ddlCategory.SelectedIndex = 0;
            txtPublishedDate.Text = DateTime.Today.ToString("yyyy-MM-dd");
            chkIsTicker.Checked = false;
            chkIsFeatured.Checked = false;
            chkIsActive.Checked = true;
            hfExistingThumb.Value = string.Empty;
            hfExistingAttachment.Value = string.Empty;
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
                int newsId = Convert.ToInt32(hfNewsId.Value);
                string title = txtTitle.Text.Trim();
                string summary = txtSummary.Text.Trim();
                string content = txtContent.Text.Trim();
                string category = ddlCategory.SelectedValue;
                DateTime pubDate = DateTime.TryParse(txtPublishedDate.Text, out DateTime d) ? d : DateTime.Today;
                bool isTicker = chkIsTicker.Checked;
                bool isFeatured = chkIsFeatured.Checked;
                bool isActive = chkIsActive.Checked;

                // Handle Thumbnail upload
                string thumbUrl = hfExistingThumb.Value;
                if (fuThumbnail.HasFile)
                {
                    string ext = Path.GetExtension(fuThumbnail.FileName).ToLower();
                    if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".webp")
                    {
                        string fileName = "news_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ext;
                        string savePath = Server.MapPath("~/Uploads/News/" + fileName);
                        fuThumbnail.SaveAs(savePath);
                        thumbUrl = "~/Uploads/News/" + fileName;
                    }
                    else
                    {
                        ShowAlert("warning", "Thumbnail must be an image (jpg, png, webp).");
                        return;
                    }
                }

                // Handle Attachment PDF upload
                string attachmentUrl = hfExistingAttachment.Value;
                if (fuAttachment.HasFile)
                {
                    string ext = Path.GetExtension(fuAttachment.FileName).ToLower();
                    if (ext == ".pdf")
                    {
                        string fileName = "doc_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ext;
                        string savePath = Server.MapPath("~/Uploads/News/" + fileName);
                        fuAttachment.SaveAs(savePath);
                        attachmentUrl = "~/Uploads/News/" + fileName;
                    }
                    else
                    {
                        ShowAlert("warning", "Attachment must be a PDF file.");
                        return;
                    }
                }

                if (newsId == 0)
                {
                    // Add
                    int newId = NewsService.AddNews(title, summary, content, category, pubDate, isTicker, isFeatured, attachmentUrl, thumbUrl);
                    if (newId > 0)
                    {
                        ShowAlert("success", "Announcement added successfully!");
                    }
                }
                else
                {
                    // Update
                    bool updated = NewsService.UpdateNews(newsId, title, summary, content, category, pubDate, isTicker, isFeatured, attachmentUrl, thumbUrl, isActive);
                    if (updated)
                    {
                        ShowAlert("success", "Announcement updated successfully!");
                    }
                }

                pnlForm.Visible = false;
                LoadNewsList();
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error saving announcement: " + ex.Message);
            }
        }

        protected void gvNews_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int newsId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditNews")
            {
                DataRow dr = NewsService.GetNewsById(newsId);
                if (dr != null)
                {
                    pnlForm.Visible = true;
                    litFormTitle.Text = "Edit Announcement #" + newsId;
                    hfNewsId.Value = newsId.ToString();
                    txtTitle.Text = dr["Title"].ToString();
                    txtSummary.Text = dr["Summary"] != DBNull.Value ? dr["Summary"].ToString() : "";
                    txtContent.Text = dr["ContentDetails"] != DBNull.Value ? dr["ContentDetails"].ToString() : "";

                    string cat = dr["Category"].ToString();
                    if (ddlCategory.Items.FindByValue(cat) != null)
                    {
                        ddlCategory.SelectedValue = cat;
                    }

                    if (dr["PublishedDate"] != DBNull.Value)
                    {
                        txtPublishedDate.Text = Convert.ToDateTime(dr["PublishedDate"]).ToString("yyyy-MM-dd");
                    }

                    chkIsTicker.Checked = Convert.ToBoolean(dr["IsTicker"]);
                    chkIsFeatured.Checked = Convert.ToBoolean(dr["IsFeatured"]);
                    chkIsActive.Checked = Convert.ToBoolean(dr["IsActive"]);

                    hfExistingThumb.Value = dr["ThumbnailUrl"] != DBNull.Value ? dr["ThumbnailUrl"].ToString() : "";
                    hfExistingAttachment.Value = dr["AttachmentUrl"] != DBNull.Value ? dr["AttachmentUrl"].ToString() : "";
                }
            }
            else if (e.CommandName == "DeleteNews")
            {
                try
                {
                    NewsService.DeleteNews(newsId);
                    ShowAlert("success", "Announcement deleted successfully.");
                    LoadNewsList();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting announcement: " + ex.Message);
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
