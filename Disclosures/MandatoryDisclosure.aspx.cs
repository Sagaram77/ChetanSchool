using System;
using System.Data;
using System.Web.UI;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Disclosures
{
    public partial class MandatoryDisclosure : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDisclosures();
            }
        }

        private void BindDisclosures()
        {
            try
            {
                DataTable dtDocs = DisclosureService.GetDisclosuresByCategory("Documents and Information");
                rptDocuments.DataSource = dtDocs;
                rptDocuments.DataBind();

                DataTable dtAcademics = DisclosureService.GetDisclosuresByCategory("Result and Academics");
                rptAcademics.DataSource = dtAcademics;
                rptAcademics.DataBind();
            }
            catch (Exception ex)
            {
                // In case DB is not yet populated or offline, page gracefully renders empty repeaters
                System.Diagnostics.Trace.TraceError("Error loading disclosures: " + ex.Message);
            }
        }
    }
}
