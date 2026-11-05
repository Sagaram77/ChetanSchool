using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class GalleryService
    {
        public static DataTable GetActiveAlbums()
        {
            string query = @"
                SELECT a.AlbumId, a.AlbumTitle, a.Category, a.Description, a.CoverImageUrl, a.EventDate, a.AcademicYear,
                       COUNT(p.PhotoId) AS PhotoCount
                FROM GalleryAlbums a
                LEFT JOIN GalleryPhotos p ON a.AlbumId = p.AlbumId
                WHERE a.IsActive = 1
                GROUP BY a.AlbumId, a.AlbumTitle, a.Category, a.Description, a.CoverImageUrl, a.EventDate, a.AcademicYear, a.DisplayOrder
                ORDER BY a.DisplayOrder ASC, a.EventDate DESC;
            ";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetAllAlbums()
        {
            string query = @"
                SELECT a.AlbumId, a.AlbumTitle, a.Category, a.Description, a.CoverImageUrl, a.EventDate, a.AcademicYear, a.IsActive,
                       COUNT(p.PhotoId) AS PhotoCount
                FROM GalleryAlbums a
                LEFT JOIN GalleryPhotos p ON a.AlbumId = p.AlbumId
                GROUP BY a.AlbumId, a.AlbumTitle, a.Category, a.Description, a.CoverImageUrl, a.EventDate, a.AcademicYear, a.DisplayOrder, a.IsActive
                ORDER BY a.DisplayOrder ASC, a.EventDate DESC;
            ";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataRow GetAlbumById(int albumId)
        {
            string query = "SELECT * FROM GalleryAlbums WHERE AlbumId = @AlbumId";
            DataTable dt = DbHelper.ExecuteDataTable(query, CommandType.Text, 
                DbHelper.CreateParameter("@AlbumId", SqlDbType.Int, albumId));
            return (dt != null && dt.Rows.Count > 0) ? dt.Rows[0] : null;
        }

        public static DataTable GetPhotosByAlbumId(int albumId)
        {
            string query = "SELECT PhotoId, AlbumId, PhotoUrl, ThumbnailUrl, Caption, IsCover FROM GalleryPhotos WHERE AlbumId = @AlbumId ORDER BY DisplayOrder ASC, PhotoId ASC";
            return DbHelper.ExecuteDataTable(query, CommandType.Text, 
                DbHelper.CreateParameter("@AlbumId", SqlDbType.Int, albumId));
        }

        public static int AddAlbum(string title, string category, string description, string coverImageUrl, DateTime? eventDate, string academicYear, int displayOrder)
        {
            string query = @"
                INSERT INTO GalleryAlbums (AlbumTitle, Category, Description, CoverImageUrl, EventDate, AcademicYear, DisplayOrder, IsActive)
                VALUES (@Title, @Category, @Description, @CoverImageUrl, @EventDate, @AcademicYear, @DisplayOrder, 1);
                SELECT SCOPE_IDENTITY();
            ";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@Title", SqlDbType.NVarChar, title, 150),
                DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 100),
                DbHelper.CreateParameter("@Description", SqlDbType.NVarChar, (object)description ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@CoverImageUrl", SqlDbType.NVarChar, (object)coverImageUrl ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@EventDate", SqlDbType.Date, (object)eventDate ?? DBNull.Value),
                DbHelper.CreateParameter("@AcademicYear", SqlDbType.NVarChar, academicYear, 20),
                DbHelper.CreateParameter("@DisplayOrder", SqlDbType.Int, displayOrder)
            );

            return Convert.ToInt32(result);
        }

        public static bool AddPhoto(int albumId, string photoUrl, string caption = null, bool isCover = false)
        {
            string query = @"
                INSERT INTO GalleryPhotos (AlbumId, PhotoUrl, ThumbnailUrl, Caption, IsCover)
                VALUES (@AlbumId, @PhotoUrl, @PhotoUrl, @Caption, @IsCover);
            ";

            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@AlbumId", SqlDbType.Int, albumId),
                DbHelper.CreateParameter("@PhotoUrl", SqlDbType.NVarChar, photoUrl, 500),
                DbHelper.CreateParameter("@Caption", SqlDbType.NVarChar, (object)caption ?? DBNull.Value, 255),
                DbHelper.CreateParameter("@IsCover", SqlDbType.Bit, isCover)
            );

            return rows > 0;
        }

        public static bool DeletePhoto(int photoId)
        {
            string query = "DELETE FROM GalleryPhotos WHERE PhotoId = @PhotoId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@PhotoId", SqlDbType.Int, photoId));
            return rows > 0;
        }

        public static bool DeleteAlbum(int albumId)
        {
            string query = "DELETE FROM GalleryAlbums WHERE AlbumId = @AlbumId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@AlbumId", SqlDbType.Int, albumId));
            return rows > 0;
        }
    }
}
