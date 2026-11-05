using System;
using System.Web.UI;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admissions
{
    public partial class AdmissionProcedure : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string admissionUrl = SiteSettingsService.GetAdmissionFormLink();
                if (string.IsNullOrWhiteSpace(admissionUrl))
                {
                    admissionUrl = "https://drive.google.com/";
                }

                lnkOnlineAdmission.NavigateUrl = admissionUrl;
                lnkApplyBottom.NavigateUrl = admissionUrl;
            }
        }
    }
}
