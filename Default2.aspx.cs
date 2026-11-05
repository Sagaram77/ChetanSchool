using System;
using System.Data;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFeaturedNews();
                LoadAdmissionLinks();
                LoadNoticeModal();
            }
        }

        private void LoadFeaturedNews()
        {
            try
            {
                DataTable dt = NewsService.GetFeaturedNews(4);
                if (dt != null && dt.Rows.Count > 0)
                {
                    rptFeaturedNews.DataSource = dt;
                    rptFeaturedNews.DataBind();
                }
            }
            catch (Exception)
            {
                // Fallback gracefully
            }
        }

        private void LoadAdmissionLinks()
        {
            try
            {
                string admissionUrl = SiteSettingsService.GetAdmissionFormLink();
                if (lnkHeroAdmission != null) lnkHeroAdmission.HRef = admissionUrl;
                if (lnkBottomAdmission != null) lnkBottomAdmission.HRef = admissionUrl;
            }
            catch (Exception)
            {
                // Fallback gracefully
            }
        }

        private void LoadNoticeModal()
        {
            try
            {
                DataRow popup = SiteSettingsService.GetActivePopup();
                if (popup != null)
                {
                    pnlNoticeModal.Visible = true;
                    litModalTitle.Text = popup["Title"] != null ? popup["Title"].ToString() : "Important Notice";
                    litModalDescription.Text = popup["Description"] != null ? popup["Description"].ToString() : "";

                    string imgUrl = popup["ImageUrl"] != null ? popup["ImageUrl"].ToString() : "";
                    if (!string.IsNullOrEmpty(imgUrl))
                    {
                        imgModalPhoto.ImageUrl = ResolveUrl(imgUrl);
                        imgModalPhoto.Visible = true;
                    }
                    else
                    {
                        imgModalPhoto.Visible = false;
                    }

                    string actionUrl = popup["ActionUrl"] != null ? popup["ActionUrl"].ToString() : "";
                    string actionText = popup["ActionText"] != null && !string.IsNullOrEmpty(popup["ActionText"].ToString())
                        ? popup["ActionText"].ToString()
                        : "Learn More";

                    if (!string.IsNullOrEmpty(actionUrl))
                    {
                        lnkModalAction.NavigateUrl = actionUrl;
                        litModalActionText.Text = actionText;
                        lnkModalAction.Visible = true;
                    }
                    else
                    {
                        lnkModalAction.Visible = false;
                    }

                    string script = @"
                        window.addEventListener('load', function() {
                            var modalEl = document.getElementById('schoolNoticeModal');
                            if (modalEl && window.bootstrap) {
                                var noticeModal = new bootstrap.Modal(modalEl);
                                noticeModal.show();
                            }
                        });
                    ";
                    ClientScript.RegisterStartupScript(this.GetType(), "ShowNoticeModal", script, true);
                }
                else
                {
                    pnlNoticeModal.Visible = false;
                }
            }
            catch (Exception)
            {
                pnlNoticeModal.Visible = false;
            }
        }
    }
}
