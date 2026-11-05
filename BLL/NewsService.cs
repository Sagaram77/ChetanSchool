using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class NewsService
    {
        public static DataTable GetTickers()
        {
            string query = "SELECT TOP 5 NewsId, Title, PublishedDate FROM NewsAnnouncements WHERE IsActive = 1 AND IsTicker = 1 ORDER BY PublishedDate DESC, NewsId DESC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetFeaturedNews(int count = 4)
        {
            string query = $"SELECT TOP ({count}) NewsId, Title, Summary, Category, PublishedDate, ThumbnailUrl, AttachmentUrl FROM NewsAnnouncements WHERE IsActive = 1 ORDER BY IsFeatured DESC, PublishedDate DESC, NewsId DESC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetAllNews(string category = null)
        {
            if (string.IsNullOrEmpty(category) || category.Equals("All", StringComparison.OrdinalIgnoreCase))
            {
                string query = "SELECT NewsId, Title, Summary, Category, PublishedDate, IsTicker, IsFeatured, ThumbnailUrl, AttachmentUrl, IsActive FROM NewsAnnouncements ORDER BY PublishedDate DESC, NewsId DESC";
                return DbHelper.ExecuteDataTable(query);
            }
            else
            {
                string query = "SELECT NewsId, Title, Summary, Category, PublishedDate, IsTicker, IsFeatured, ThumbnailUrl, AttachmentUrl, IsActive FROM NewsAnnouncements WHERE Category = @Category ORDER BY PublishedDate DESC, NewsId DESC";
                return DbHelper.ExecuteDataTable(query, CommandType.Text, 
                    DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 50));
            }
        }

        public static DataRow GetNewsById(int newsId)
        {
            string query = "SELECT * FROM NewsAnnouncements WHERE NewsId = @NewsId";
            DataTable dt = DbHelper.ExecuteDataTable(query, CommandType.Text, 
                DbHelper.CreateParameter("@NewsId", SqlDbType.Int, newsId));

            return (dt != null && dt.Rows.Count > 0) ? dt.Rows[0] : null;
        }

        public static int AddNews(string title, string summary, string content, string category, DateTime publishedDate, bool isTicker, bool isFeatured, string attachmentUrl, string thumbnailUrl)
        {
            string query = @"
                INSERT INTO NewsAnnouncements (Title, Summary, ContentDetails, Category, PublishedDate, IsTicker, IsFeatured, AttachmentUrl, ThumbnailUrl, IsActive)
                VALUES (@Title, @Summary, @Content, @Category, @PublishedDate, @IsTicker, @IsFeatured, @AttachmentUrl, @ThumbnailUrl, 1);
                SELECT SCOPE_IDENTITY();
            ";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@Title", SqlDbType.NVarChar, title, 255),
                DbHelper.CreateParameter("@Summary", SqlDbType.NVarChar, (object)summary ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@Content", SqlDbType.NVarChar, content),
                DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 50),
                DbHelper.CreateParameter("@PublishedDate", SqlDbType.Date, publishedDate),
                DbHelper.CreateParameter("@IsTicker", SqlDbType.Bit, isTicker),
                DbHelper.CreateParameter("@IsFeatured", SqlDbType.Bit, isFeatured),
                DbHelper.CreateParameter("@AttachmentUrl", SqlDbType.NVarChar, (object)attachmentUrl ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@ThumbnailUrl", SqlDbType.NVarChar, (object)thumbnailUrl ?? DBNull.Value, 500)
            );

            return Convert.ToInt32(result);
        }

        public static bool UpdateNews(int newsId, string title, string summary, string content, string category, DateTime publishedDate, bool isTicker, bool isFeatured, string attachmentUrl, string thumbnailUrl, bool isActive)
        {
            string query = @"
                UPDATE NewsAnnouncements 
                SET Title = @Title, Summary = @Summary, ContentDetails = @Content, Category = @Category, 
                    PublishedDate = @PublishedDate, IsTicker = @IsTicker, IsFeatured = @IsFeatured, 
                    AttachmentUrl = @AttachmentUrl, ThumbnailUrl = @ThumbnailUrl, IsActive = @IsActive
                WHERE NewsId = @NewsId
            ";

            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@Title", SqlDbType.NVarChar, title, 255),
                DbHelper.CreateParameter("@Summary", SqlDbType.NVarChar, (object)summary ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@Content", SqlDbType.NVarChar, content),
                DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 50),
                DbHelper.CreateParameter("@PublishedDate", SqlDbType.Date, publishedDate),
                DbHelper.CreateParameter("@IsTicker", SqlDbType.Bit, isTicker),
                DbHelper.CreateParameter("@IsFeatured", SqlDbType.Bit, isFeatured),
                DbHelper.CreateParameter("@AttachmentUrl", SqlDbType.NVarChar, (object)attachmentUrl ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@ThumbnailUrl", SqlDbType.NVarChar, (object)thumbnailUrl ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@IsActive", SqlDbType.Bit, isActive),
                DbHelper.CreateParameter("@NewsId", SqlDbType.Int, newsId)
            );

            return rows > 0;
        }

        public static bool DeleteNews(int newsId)
        {
            string query = "DELETE FROM NewsAnnouncements WHERE NewsId = @NewsId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@NewsId", SqlDbType.Int, newsId));
            return rows > 0;
        }
    }
}
