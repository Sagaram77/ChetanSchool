using System;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Academics
{
    public partial class Curriculum : System.Web.UI.Page
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
