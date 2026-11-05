using System;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Academics
{
    public partial class CompetitiveCoaching : System.Web.UI.Page
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
