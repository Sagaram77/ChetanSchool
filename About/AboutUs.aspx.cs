using System;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.About
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (lnkApplyAdmission != null)
                {
                    lnkApplyAdmission.HRef = SiteSettingsService.GetAdmissionFormLink();
                }
            }
        }
    }
}
