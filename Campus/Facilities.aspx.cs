using System;
using System.Data;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Campus
{
    public partial class Facilities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFacilities();
            }
        }

        private void LoadFacilities()
        {
            try
            {
                DataTable dt = FacilityService.GetAllFacilities();
                rptFacilities.DataSource = dt;
                rptFacilities.DataBind();
            }
            catch (Exception)
            {
                // Graceful fallback
            }
        }
    }
}
