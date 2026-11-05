using System;
using System.Data;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.MasterPages
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTickers();
                LoadAdmissionLinks();
            }
        }

        private void LoadTickers()
        {
            try
            {
                DataTable dt = NewsService.GetTickers();
                if (dt != null && dt.Rows.Count > 0)
                {
                    rptTickers.DataSource = dt;
                    rptTickers.DataBind();
                }
            }
            catch (Exception)
            {
                // Fallback gracefully if database is undergoing initialization
            }
        }

        private void LoadAdmissionLinks()
        {
            try
            {
                string admissionLink = SiteSettingsService.GetAdmissionFormLink();
                if (lnkHeaderAdmission != null) lnkHeaderAdmission.HRef = admissionLink;
                if (lnkNavAdmission != null) lnkNavAdmission.HRef = admissionLink;
                if (lnkFooterAdmission != null) lnkFooterAdmission.HRef = admissionLink;
            }
            catch (Exception)
            {
                // Default fallback
            }
        }
    }
}
