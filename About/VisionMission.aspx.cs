using System;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.About
{
    public partial class VisionMission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (lnkSidebarAdmission != null)
                {
                    lnkSidebarAdmission.HRef = SiteSettingsService.GetAdmissionFormLink();
                }
            }
        }
    }
}
