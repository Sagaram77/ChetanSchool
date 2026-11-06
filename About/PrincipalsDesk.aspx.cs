using System;
using System.Data;
using System.Text;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.About
{
    public partial class PrincipalsDesk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPrincipalDetails();

                if (lnkSidebarAdmission != null)
                {
                    lnkSidebarAdmission.HRef = SiteSettingsService.GetAdmissionFormLink();
                }
            }
        }

        private void LoadPrincipalDetails()
        {
            try
            {
                DataRow dr = StaffService.GetPrincipal();
                if (dr != null)
                {
                    if (dr["FullName"] != DBNull.Value && !string.IsNullOrWhiteSpace(dr["FullName"].ToString()))
                    {
                        litPrincipalName.Text = dr["FullName"].ToString();
                        litSignOffName.Text = dr["FullName"].ToString();
                    }

                    if (dr["Designation"] != DBNull.Value && !string.IsNullOrWhiteSpace(dr["Designation"].ToString()))
                    {
                        litPrincipalDesignation.Text = dr["Designation"].ToString();
                    }

                    if (dr["Qualifications"] != DBNull.Value && !string.IsNullOrWhiteSpace(dr["Qualifications"].ToString()))
                    {
                        string[] quals = dr["Qualifications"].ToString().Split(new char[] { ',', ';' }, StringSplitOptions.RemoveEmptyEntries);
                        StringBuilder sb = new StringBuilder();
                        foreach (string q in quals)
                        {
                            sb.AppendFormat("<span class=\"badge bg-light text-primary border\">{0}</span> ", Server.HtmlEncode(q.Trim()));
                        }
                        litPrincipalQualifications.Text = sb.ToString();
                    }

                    if (dr["ExperienceYears"] != DBNull.Value)
                    {
                        litPrincipalExp.Text = $"{dr["ExperienceYears"]}+ Years of Dedicated Service in CBSE & Higher Secondary Education";
                    }

                    string photoUrl = dr["PhotoUrl"] != DBNull.Value ? dr["PhotoUrl"].ToString() : "";
                    if (!string.IsNullOrEmpty(photoUrl))
                    {
                        imgPrincipalPhoto.ImageUrl = ResolveUrl(photoUrl);
                        imgPrincipalPhoto.Visible = true;
                        divPrincipalIcon.Visible = false;
                    }
                    else
                    {
                        imgPrincipalPhoto.Visible = false;
                        divPrincipalIcon.Visible = true;
                    }
                }
            }
            catch
            {
                // Fallback gracefully to default markup values
                imgPrincipalPhoto.Visible = false;
                divPrincipalIcon.Visible = true;
            }
        }
    }
}
