using System;
using System.Data;
using System.IO;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManagePopup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPopupData();
            }
        }

        private void LoadPopupData()
        {
            try
            {
                DataRow r = SiteSettingsService.GetLatestPopup();
                if (r != null)
                {
                    hfPopupId.Value = r["PopupId"].ToString();
                    txtTitle.Text = r["Title"].ToString();
                    txtDescription.Text = r["Description"] != null ? r["Description"].ToString() : "";
                    txtActionUrl.Text = r["ActionUrl"] != null ? r["ActionUrl"].ToString() : "";
                    txtActionText.Text = r["ActionText"] != null ? r["ActionText"].ToString() : "Learn More";
                    chkIsActive.Checked = r["IsActive"] != DBNull.Value && Convert.ToBoolean(r["IsActive"]);

                    string img = r["ImageUrl"] != null ? r["ImageUrl"].ToString() : "";
                    hfExistingImageUrl.Value = img;

                    // Preview
                    litPreviewTitle.Text = txtTitle.Text;
                    litPreviewDescription.Text = txtDescription.Text;
                    litPreviewActionText.Text = txtActionText.Text;

                    if (!string.IsNullOrEmpty(img))
                    {
                        imgPreview.ImageUrl = ResolveUrl(img);
                        imgPreview.Visible = true;
                    }
                    else
                    {
                        imgPreview.Visible = false;
                    }
                }
                else
                {
                    chkIsActive.Checked = true;
                    txtActionText.Text = "Learn More";
                    imgPreview.Visible = false;
                }
            }
            catch (Exception ex)
            {
                ShowAlert("Error loading popup: " + ex.Message, false);
            }
        }

        protected void btnSavePopup_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text.Trim();
            if (string.IsNullOrEmpty(title))
            {
                ShowAlert("Please enter a title for the announcement.", false);
                return;
            }

            int popupId = 0;
            int.TryParse(hfPopupId.Value, out popupId);

            string imageUrl = hfExistingImageUrl.Value;

            // Handle photo upload
            if (fuPopupPhoto.HasFile)
            {
                string ext = Path.GetExtension(fuPopupPhoto.FileName).ToLower();
                if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".webp" || ext == ".gif")
                {
                    try
                    {
                        string uploadFolder = Server.MapPath("~/Uploads/Popups/");
                        if (!Directory.Exists(uploadFolder))
                        {
                            Directory.CreateDirectory(uploadFolder);
                        }

                        string fileName = "popup_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ext;
                        string savePath = Path.Combine(uploadFolder, fileName);
                        fuPopupPhoto.SaveAs(savePath);

                        imageUrl = "~/Uploads/Popups/" + fileName;
                    }
                    catch (Exception ex)
                    {
                        ShowAlert("Failed to upload photo: " + ex.Message, false);
                        return;
                    }
                }
                else
                {
                    ShowAlert("Invalid file format. Please upload JPG, PNG, WEBP, or GIF images.", false);
                    return;
                }
            }

            string description = txtDescription.Text.Trim();
            string actionUrl = txtActionUrl.Text.Trim();
            string actionText = txtActionText.Text.Trim();
            if (string.IsNullOrEmpty(actionText)) actionText = "Learn More";
            bool isActive = chkIsActive.Checked;

            try
            {
                bool saved = SiteSettingsService.SavePopup(popupId, title, imageUrl, description, actionUrl, actionText, isActive);
                if (saved)
                {
                    ShowAlert("Home Page Notice Modal saved successfully!", true);
                    LoadPopupData();
                }
                else
                {
                    ShowAlert("Unable to save announcement popup. Please check database connectivity.", false);
                }
            }
            catch (Exception ex)
            {
                ShowAlert("Error saving popup: " + ex.Message, false);
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
