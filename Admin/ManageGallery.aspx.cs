using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageGallery : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtAcademicYear.Text = "2025-26";
                txtEventDate.Text = DateTime.Today.ToString("yyyy-MM-dd");
                LoadAlbums();
            }
        }

        private void LoadAlbums()
        {
            try
            {
                DataTable dt = GalleryService.GetAllAlbums();
                gvAlbums.DataSource = dt;
                gvAlbums.DataBind();

                if (dt != null)
                {
                    lblAlbumCount.Text = $"{dt.Rows.Count} Album(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading albums: " + ex.Message);
            }
        }

        protected void btnNewAlbum_Click(object sender, EventArgs e)
        {
            pnlAlbumForm.Visible = true;
            pnlPhotosManager.Visible = false;
            txtAlbumTitle.Text = string.Empty;
            txtDescription.Text = string.Empty;
        }

        protected void btnCancelAlbum_Click(object sender, EventArgs e)
        {
            pnlAlbumForm.Visible = false;
        }

        protected void btnSaveAlbum_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            try
            {
                string title = txtAlbumTitle.Text.Trim();
                string category = ddlCategory.SelectedValue;
                string academicYear = txtAcademicYear.Text.Trim();
                string description = txtDescription.Text.Trim();
                int displayOrder = int.TryParse(txtDisplayOrder.Text, out int ord) ? ord : 1;
                DateTime? eventDate = DateTime.TryParse(txtEventDate.Text, out DateTime dt) ? dt : (DateTime?)null;

                string coverUrl = null;
                if (fuCoverImage.HasFile)
                {
                    string ext = Path.GetExtension(fuCoverImage.FileName).ToLower();
                    if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".webp")
                    {
                        string fileName = "album_cover_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ext;
                        string savePath = Server.MapPath("~/Uploads/Gallery/" + fileName);
                        fuCoverImage.SaveAs(savePath);
                        coverUrl = "~/Uploads/Gallery/" + fileName;
                    }
                }

                int albumId = GalleryService.AddAlbum(title, category, description, coverUrl, eventDate, academicYear, displayOrder);
                if (albumId > 0)
                {
                    ShowAlert("success", "Album created successfully! Now you can upload photos to it.");
                    pnlAlbumForm.Visible = false;
                    LoadAlbums();
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error saving album: " + ex.Message);
            }
        }

        protected void gvAlbums_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int albumId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "ManagePhotos")
            {
                OpenPhotosManager(albumId);
            }
            else if (e.CommandName == "DeleteAlbum")
            {
                try
                {
                    GalleryService.DeleteAlbum(albumId);
                    ShowAlert("success", "Album deleted successfully.");
                    pnlPhotosManager.Visible = false;
                    LoadAlbums();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting album: " + ex.Message);
                }
            }
        }

        private void OpenPhotosManager(int albumId)
        {
            DataRow dr = GalleryService.GetAlbumById(albumId);
            if (dr != null)
            {
                pnlPhotosManager.Visible = true;
                pnlAlbumForm.Visible = false;
                hfCurrentAlbumId.Value = albumId.ToString();
                lblCurrentAlbumTitle.Text = dr["AlbumTitle"].ToString();

                LoadAlbumPhotos(albumId);
            }
        }

        private void LoadAlbumPhotos(int albumId)
        {
            DataTable dt = GalleryService.GetPhotosByAlbumId(albumId);
            if (dt != null && dt.Rows.Count > 0)
            {
                rptAlbumPhotos.DataSource = dt;
                rptAlbumPhotos.DataBind();
                rptAlbumPhotos.Visible = true;
                pnlNoPhotos.Visible = false;
            }
            else
            {
                rptAlbumPhotos.Visible = false;
                pnlNoPhotos.Visible = true;
            }
        }

        protected void btnClosePhotos_Click(object sender, EventArgs e)
        {
            pnlPhotosManager.Visible = false;
        }

        protected void btnUploadPhoto_Click(object sender, EventArgs e)
        {
            if (!fuPhoto.HasFile)
            {
                ShowAlert("warning", "Please select a photo file to upload.");
                return;
            }

            int albumId = Convert.ToInt32(hfCurrentAlbumId.Value);
            string ext = Path.GetExtension(fuPhoto.FileName).ToLower();
            if (ext != ".jpg" && ext != ".jpeg" && ext != ".png" && ext != ".webp")
            {
                ShowAlert("warning", "Photo must be an image (jpg, jpeg, png, webp).");
                return;
            }

            try
            {
                string fileName = "photo_" + albumId + "_" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + ext;
                string savePath = Server.MapPath("~/Uploads/Gallery/" + fileName);
                fuPhoto.SaveAs(savePath);

                string photoUrl = "~/Uploads/Gallery/" + fileName;
                string caption = txtPhotoCaption.Text.Trim();

                GalleryService.AddPhoto(albumId, photoUrl, caption);
                ShowAlert("success", "Photo uploaded successfully!");
                txtPhotoCaption.Text = string.Empty;

                LoadAlbumPhotos(albumId);
                LoadAlbums();
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error uploading photo: " + ex.Message);
            }
        }

        protected void rptAlbumPhotos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeletePhoto")
            {
                int photoId = Convert.ToInt32(e.CommandArgument);
                try
                {
                    GalleryService.DeletePhoto(photoId);
                    ShowAlert("success", "Photo removed.");
                    int albumId = Convert.ToInt32(hfCurrentAlbumId.Value);
                    LoadAlbumPhotos(albumId);
                    LoadAlbums();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting photo: " + ex.Message);
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
