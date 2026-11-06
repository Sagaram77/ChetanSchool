using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageTestimonials : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTestimonials();
            }
        }

        private void LoadTestimonials()
        {
            try
            {
                DataTable dt = TestimonialService.GetAllTestimonialsForAdmin();
                gvTestimonials.DataSource = dt;
                gvTestimonials.DataBind();

                if (dt != null)
                {
                    lblCount.Text = $"{dt.Rows.Count} Testimonial(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading testimonials: " + ex.Message);
            }
        }

        protected void btnToggleForm_Click(object sender, EventArgs e)
        {
            ClearForm();
            litFormTitle.Text = "Add New Parent Testimonial";
            pnlForm.Visible = true;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearForm();
            pnlForm.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string parentName = txtParentName.Text.Trim();
                    string childClass = txtChildClass.Text.Trim();
                    int rating = Convert.ToInt32(ddlRating.SelectedValue);
                    string testimonialText = txtTestimonialText.Text.Trim();
                    int displayOrder = 1;
                    int.TryParse(txtDisplayOrder.Text.Trim(), out displayOrder);
                    bool isActive = chkIsActive.Checked;

                    string photoUrl = hfExistingPhoto.Value;

                    // Handle Photo Upload
                    if (fuPhoto.HasFile)
                    {
                        string ext = Path.GetExtension(fuPhoto.FileName).ToLower();
                        if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".webp")
                        {
                            string folderPath = Server.MapPath("~/Uploads/Testimonials/");
                            if (!Directory.Exists(folderPath))
                            {
                                Directory.CreateDirectory(folderPath);
                            }

                            string uniqueFileName = "parent_" + DateTime.Now.Ticks + ext;
                            string savePath = Path.Combine(folderPath, uniqueFileName);
                            fuPhoto.SaveAs(savePath);
                            photoUrl = "~/Uploads/Testimonials/" + uniqueFileName;
                        }
                        else
                        {
                            ShowAlert("warning", "Please select a valid image file (.jpg, .jpeg, .png, .webp).");
                            return;
                        }
                    }

                    int id = 0;
                    int.TryParse(hfTestimonialId.Value, out id);

                    if (id > 0)
                    {
                        // Update
                        bool updated = TestimonialService.UpdateTestimonial(id, parentName, childClass, rating, testimonialText, photoUrl, displayOrder, isActive);
                        if (updated)
                        {
                            ShowAlert("success", "Parent testimonial updated successfully!");
                        }
                        else
                        {
                            ShowAlert("danger", "Failed to update testimonial.");
                        }
                    }
                    else
                    {
                        // Add
                        int newId = TestimonialService.AddTestimonial(parentName, childClass, rating, testimonialText, photoUrl, displayOrder, isActive);
                        if (newId > 0)
                        {
                            ShowAlert("success", "New parent testimonial added successfully!");
                        }
                        else
                        {
                            ShowAlert("danger", "Failed to add testimonial.");
                        }
                    }

                    ClearForm();
                    pnlForm.Visible = false;
                    LoadTestimonials();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "An error occurred: " + ex.Message);
                }
            }
        }

        protected void gvTestimonials_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditTestimonial")
            {
                DataRow dr = TestimonialService.GetTestimonialById(id);
                if (dr != null)
                {
                    hfTestimonialId.Value = id.ToString();
                    txtParentName.Text = dr["ParentName"].ToString();
                    txtChildClass.Text = dr["ChildClass"].ToString();
                    ddlRating.SelectedValue = dr["Rating"].ToString();
                    txtTestimonialText.Text = dr["TestimonialText"].ToString();
                    txtDisplayOrder.Text = dr["DisplayOrder"].ToString();
                    chkIsActive.Checked = Convert.ToBoolean(dr["IsActive"]);

                    string photo = dr["PhotoUrl"] != DBNull.Value ? dr["PhotoUrl"].ToString() : string.Empty;
                    hfExistingPhoto.Value = photo;

                    if (!string.IsNullOrEmpty(photo))
                    {
                        imgPhotoPreview.ImageUrl = ResolveUrl(photo);
                        imgPhotoPreview.Style["display"] = "block";
                        previewPlaceholder.Style["display"] = "none";
                    }
                    else
                    {
                        imgPhotoPreview.Style["display"] = "none";
                        previewPlaceholder.Style["display"] = "flex";
                    }

                    litFormTitle.Text = "Edit Parent Testimonial";
                    pnlForm.Visible = true;
                }
            }
            else if (e.CommandName == "DeleteTestimonial")
            {
                bool deleted = TestimonialService.DeleteTestimonial(id);
                if (deleted)
                {
                    ShowAlert("success", "Testimonial deleted successfully!");
                    LoadTestimonials();
                }
                else
                {
                    ShowAlert("danger", "Failed to delete testimonial.");
                }
            }
        }

        public string GetStarHtml(int rating)
        {
            if (rating < 1) rating = 1;
            if (rating > 5) rating = 5;

            string html = "";
            for (int i = 1; i <= 5; i++)
            {
                if (i <= rating)
                {
                    html += "<i class=\"bi bi-star-fill text-warning me-1\"></i>";
                }
                else
                {
                    html += "<i class=\"bi bi-star text-muted opacity-50 me-1\"></i>";
                }
            }
            return html;
        }

        private void ClearForm()
        {
            hfTestimonialId.Value = string.Empty;
            hfExistingPhoto.Value = string.Empty;
            txtParentName.Text = string.Empty;
            txtChildClass.Text = string.Empty;
            txtTestimonialText.Text = string.Empty;
            ddlRating.SelectedValue = "5";
            txtDisplayOrder.Text = "1";
            chkIsActive.Checked = true;
            imgPhotoPreview.ImageUrl = string.Empty;
            imgPhotoPreview.Style["display"] = "none";
            previewPlaceholder.Style["display"] = "flex";
        }

        private void ShowAlert(string type, string message)
        {
            pnlAlert.Visible = true;
            pnlAlert.CssClass = $"alert alert-{type} alert-dismissible fade show mb-4";
            lblAlertMsg.Text = message;
        }
    }
}
