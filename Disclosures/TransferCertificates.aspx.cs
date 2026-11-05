using System;
using System.Data;
using System.Web.UI;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Disclosures
{
    public partial class TransferCertificates : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTcRecords(string.Empty);
            }
        }

        private void LoadTcRecords(string keyword)
        {
            try
            {
                DataTable dt = TcService.SearchTc(keyword);
                gvTcList.DataSource = dt;
                gvTcList.DataBind();

                if (dt != null && dt.Rows.Count > 0)
                {
                    lblResultCount.Text = $"{dt.Rows.Count} Record(s) Found";
                }
                else
                {
                    lblResultCount.Text = "0 Records Found";
                }
            }
            catch (Exception ex)
            {
                lblResultCount.Text = "Status: Offline";
                System.Diagnostics.Trace.TraceError("Error loading TC records: " + ex.Message);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtSearch.Text.Trim();
            LoadTcRecords(keyword);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSearch.Text = string.Empty;
            LoadTcRecords(string.Empty);
        }
    }
}
