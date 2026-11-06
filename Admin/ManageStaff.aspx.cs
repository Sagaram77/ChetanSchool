using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageStaff : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStaff();

                if (Request.QueryString["action"] == "new")
                {
                    ShowNewForm();
                }
            }
        }

        private void LoadStaff()
        {
            try
            {
                DataTable dt = StaffService.GetStaffForAdmin();
                gvStaff.DataSource = dt;
                gvStaff.DataBind();

                if (dt != null)
                {
                    lblStaffCount.Text = $"{dt.Rows.Count} Faculty Member(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading staff: " + ex.Message);
            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ShowNewForm();
        }

        private void ShowNewForm()
        {
            pnlForm.Visible = true;
            litFormTitle.Text = "Add Faculty Member";
            hfStaffId.Value = "0";
            txtFullName.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtQualifications.Text = string.Empty;
            txtExperience.Text = string.Empty;
            txtDisplayOrder.Text = "1";
            chkIsActive.Checked = true;
            hfExistingPhoto.Value = string.Empty;
            ddlDepartment.SelectedIndex = 0;

            imgPhotoPreview.Style["display"] = "none";
            divPlaceholderIcon.Style["display"] = "flex";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pnlForm.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            try
            {
                int staffId = Convert.ToInt32(hfStaffId.Value);
                string fullName = txtFullName.Text.Trim();
                string designation = txtDesignation.Text.Trim();
                string department = ddlDepartment.SelectedValue;
                string qualifications = txtQualifications.Text.Trim();
                int? exp = int.TryParse(txtExperience.Text, out int parsedExp) ? parsedExp : (int?)null;
                int displayOrder = int.TryParse(txtDisplayOrder.Text, out int ord) ? ord : 1;
                bool isActive = chkIsActive.Checked;

                string photoUrl = hfExistingPhoto.Value;
                if (fuPhoto.HasFile)
                {
                    string ext = Path.GetExtension(fuPhoto.FileName).ToLower();
                    if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".webp")
                    {
                        string folderPath = Server.MapPath("~/Uploads/Staff/");
                        if (!Directory.Exists(folderPath))
                        {
                            Directory.CreateDirectory(folderPath);
                        }

                        string fileName = "staff_" + DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + Guid.NewGuid().ToString().Substring(0, 4) + ext;
                        string savePath = Path.Combine(folderPath, fileName);
                        fuPhoto.SaveAs(savePath);
                        photoUrl = "~/Uploads/Staff/" + fileName;
                    }
                }

                if (staffId == 0)
                {
                    StaffService.AddStaff(fullName, designation, department, qualifications, exp, photoUrl, displayOrder);
                    ShowAlert("success", "Faculty member added successfully!");
                }
                else
                {
                    StaffService.UpdateStaff(staffId, fullName, designation, department, qualifications, exp, photoUrl, displayOrder, isActive);
                    ShowAlert("success", "Faculty member record updated successfully!");
                }

                pnlForm.Visible = false;
                LoadStaff();
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error saving staff record: " + ex.Message);
            }
        }

        protected void gvStaff_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int staffId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditStaff")
            {
                DataTable dt = StaffService.GetStaffForAdmin();
                DataRow[] rows = dt.Select("StaffId = " + staffId);
                if (rows.Length > 0)
                {
                    DataRow dr = rows[0];
                    pnlForm.Visible = true;
                    litFormTitle.Text = "Edit Faculty Member: " + dr["FullName"];
                    hfStaffId.Value = staffId.ToString();
                    txtFullName.Text = dr["FullName"].ToString();
                    txtDesignation.Text = dr["Designation"].ToString();
                    txtQualifications.Text = dr["Qualifications"] != DBNull.Value ? dr["Qualifications"].ToString() : "";
                    txtExperience.Text = dr["ExperienceYears"] != DBNull.Value ? dr["ExperienceYears"].ToString() : "";
                    txtDisplayOrder.Text = dr["DisplayOrder"] != DBNull.Value ? dr["DisplayOrder"].ToString() : "1";
                    chkIsActive.Checked = Convert.ToBoolean(dr["IsActive"]);

                    string dept = dr["Department"].ToString();
                    if (ddlDepartment.Items.FindByValue(dept) != null)
                    {
                        ddlDepartment.SelectedValue = dept;
                    }

                    string photo = dr["PhotoUrl"] != DBNull.Value ? dr["PhotoUrl"].ToString() : "";
                    hfExistingPhoto.Value = photo;
                    if (!string.IsNullOrEmpty(photo))
                    {
                        imgPhotoPreview.ImageUrl = ResolveUrl(photo);
                        imgPhotoPreview.Style["display"] = "block";
                        divPlaceholderIcon.Style["display"] = "none";
                    }
                    else
                    {
                        imgPhotoPreview.Style["display"] = "none";
                        divPlaceholderIcon.Style["display"] = "flex";
                    }
                }
            }
            else if (e.CommandName == "DeleteStaff")
            {
                try
                {
                    StaffService.DeleteStaff(staffId);
                    ShowAlert("success", "Faculty member deleted successfully.");
                    LoadStaff();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting staff record: " + ex.Message);
                }
            }
        }

        private void ShowAlert(string type, string message)
        {
            pnlAlert.Visible = true;
            pnlAlert.CssClass = $"alert alert-{type} alert-dismissible fade show mb-4";
            lblAlertMsg.Text = message;
        }
    }
}
