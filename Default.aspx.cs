using System;
using System.Data;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFeaturedNews();
                LoadAdmissionLinks();
                LoadParentTestimonials();
                LoadNoticeModal();
            }
        }

        private void LoadParentTestimonials()
        {
            try
            {
                DataTable dt = TestimonialService.GetActiveTestimonials();
                if (dt != null && dt.Rows.Count > 0)
                {
                    rptParentTestimonials.DataSource = dt;
                    rptParentTestimonials.DataBind();
                }
            }
            catch (Exception)
            {
            }
        }

        public string GetStarHtml(int rating)
        {
            if (rating < 1) rating = 1;
            if (rating > 5) rating = 5;

            string html = "";
            for (int i = 1; i <= 5; i++)
            {
                if (i <= rating)
                {
                    html += "<i class=\"bi bi-star-fill text-warning me-1\"></i>";
                }
                else
                {
                    html += "<i class=\"bi bi-star text-muted opacity-50 me-1\"></i>";
                }
            }
            return html;
        }

        public string GetAvatarColor(int index)
        {
            string[] colors = new string[] {
                "#0b2545", // Deep Navy
                "#f59e0b", // Amber/Gold
                "#ff6b6b", // Coral
                "#10b981", // Emerald
                "#8b5cf6", // Purple
                "#0ea5e9"  // Sky
            };
            return colors[index % colors.Length];
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
                // Graceful fallback during initial setup
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

                    // Auto-trigger the Bootstrap 5 modal on window load
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
