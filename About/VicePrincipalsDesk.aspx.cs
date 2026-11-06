using System;
using System.Data;
using System.Text;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.About
{
    public partial class VicePrincipalsDesk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadVicePrincipalDetails();

                if (lnkSidebarAdmission != null)
                {
                    lnkSidebarAdmission.HRef = SiteSettingsService.GetAdmissionFormLink();
                }
            }
        }

        private void LoadVicePrincipalDetails()
        {
            try
            {
                DataRow dr = StaffService.GetVicePrincipal();
                if (dr != null)
                {
                    if (dr["FullName"] != DBNull.Value && !string.IsNullOrWhiteSpace(dr["FullName"].ToString()))
                    {
                        litVicePrincipalName.Text = dr["FullName"].ToString();
                        litSignOffName.Text = dr["FullName"].ToString();
                    }

                    if (dr["Designation"] != DBNull.Value && !string.IsNullOrWhiteSpace(dr["Designation"].ToString()))
                    {
                        litVicePrincipalDesignation.Text = dr["Designation"].ToString();
                    }

                    if (dr["Qualifications"] != DBNull.Value && !string.IsNullOrWhiteSpace(dr["Qualifications"].ToString()))
                    {
                        string[] quals = dr["Qualifications"].ToString().Split(new char[] { ',', ';' }, StringSplitOptions.RemoveEmptyEntries);
                        StringBuilder sb = new StringBuilder();
                        foreach (string q in quals)
                        {
                            sb.AppendFormat("<span class=\"badge bg-light text-primary border\">{0}</span> ", Server.HtmlEncode(q.Trim()));
                        }
                        litVicePrincipalQualifications.Text = sb.ToString();
                    }

                    if (dr["ExperienceYears"] != DBNull.Value)
                    {
                        litVicePrincipalExp.Text = $"{dr["ExperienceYears"]}+ Years of Academic Leadership & Pedagogical Coordination";
                    }

                    string photoUrl = dr["PhotoUrl"] != DBNull.Value ? dr["PhotoUrl"].ToString() : "";
                    if (!string.IsNullOrEmpty(photoUrl))
                    {
                        imgVicePrincipalPhoto.ImageUrl = ResolveUrl(photoUrl);
                        imgVicePrincipalPhoto.Visible = true;
                        divVicePrincipalIcon.Visible = false;
                    }
                    else
                    {
                        imgVicePrincipalPhoto.Visible = false;
                        divVicePrincipalIcon.Visible = true;
                    }
                }
            }
            catch
            {
                // Fallback gracefully to default markup values
                imgVicePrincipalPhoto.Visible = false;
                divVicePrincipalIcon.Visible = true;
            }
        }
    }
}
