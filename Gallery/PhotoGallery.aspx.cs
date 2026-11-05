using System;
using System.Data;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Gallery
{
    public partial class PhotoGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string albumIdQuery = Request.QueryString["albumId"];
                int albumId;
                if (!string.IsNullOrEmpty(albumIdQuery) && int.TryParse(albumIdQuery, out albumId))
                {
                    LoadSingleAlbum(albumId);
                }
                else
                {
                    LoadAlbums();
                }
            }
        }

        private void LoadAlbums()
        {
            try
            {
                pnlAlbumsView.Visible = true;
                pnlPhotosView.Visible = false;

                DataTable dt = GalleryService.GetActiveAlbums();
                rptAlbums.DataSource = dt;
                rptAlbums.DataBind();
            }
            catch (Exception)
            {
                // Graceful fallback
            }
        }

        private void LoadSingleAlbum(int albumId)
        {
            try
            {
                DataRow album = GalleryService.GetAlbumById(albumId);
                if (album != null)
                {
                    pnlAlbumsView.Visible = false;
                    pnlPhotosView.Visible = true;

                    litAlbumTitle.Text = album["AlbumTitle"].ToString();
                    litAlbumDesc.Text = album["Description"] != null ? album["Description"].ToString() : "";

                    DataTable photos = GalleryService.GetPhotosByAlbumId(albumId);
                    if (photos != null && photos.Rows.Count > 0)
                    {
                        rptPhotos.DataSource = photos;
                        rptPhotos.DataBind();
                        rptPhotos.Visible = true;
                        pnlNoPhotos.Visible = false;
                    }
                    else
                    {
                        rptPhotos.Visible = false;
                        pnlNoPhotos.Visible = true;
                    }
                }
                else
                {
                    LoadAlbums();
                }
            }
            catch (Exception)
            {
                LoadAlbums();
            }
        }
    }
}
