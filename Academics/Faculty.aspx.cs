using System;
using System.Data;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Academics
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFaculty("All");
            }
        }

        protected void ddlDepartmentFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadFaculty(ddlDepartmentFilter.SelectedValue);
        }

        private void LoadFaculty(string department)
        {
            try
            {
                DataTable dt;
                if (string.IsNullOrEmpty(department) || department.Equals("All", StringComparison.OrdinalIgnoreCase))
                {
                    dt = StaffService.GetAllStaff();
                }
                else
                {
                    dt = StaffService.GetStaffByDepartment(department);
                }

                if (dt != null && dt.Rows.Count > 0)
                {
                    rptFaculty.DataSource = dt;
                    rptFaculty.DataBind();
                    rptFaculty.Visible = true;
                    pnlNoFaculty.Visible = false;
                }
                else
                {
                    rptFaculty.Visible = false;
                    pnlNoFaculty.Visible = true;
                }
            }
            catch (Exception)
            {
                rptFaculty.Visible = false;
                pnlNoFaculty.Visible = true;
            }
        }
    }
}
