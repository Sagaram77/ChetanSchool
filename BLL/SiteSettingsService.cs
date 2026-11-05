using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class SiteSettingsService
    {
        public static string GetSetting(string key, string defaultValue = "")
        {
            try
            {
                string query = "SELECT SettingValue FROM SiteSettings WHERE SettingKey = @Key";
                object result = DbHelper.ExecuteScalar(query, CommandType.Text, 
                    DbHelper.CreateParameter("@Key", SqlDbType.NVarChar, key, 100));

                return result != null ? result.ToString() : defaultValue;
            }
            catch (Exception)
            {
                return defaultValue;
            }
        }

        public static bool UpdateSetting(string key, string value, string description = null)
        {
            string query = @"
                IF EXISTS (SELECT 1 FROM SiteSettings WHERE SettingKey = @Key)
                    UPDATE SiteSettings SET SettingValue = @Value WHERE SettingKey = @Key
                ELSE
                    INSERT INTO SiteSettings (SettingKey, SettingValue, Description) VALUES (@Key, @Value, @Description);
            ";

            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@Key", SqlDbType.NVarChar, key, 100),
                DbHelper.CreateParameter("@Value", SqlDbType.NVarChar, value),
                DbHelper.CreateParameter("@Description", SqlDbType.NVarChar, (object)description ?? DBNull.Value, 255)
            );
            return rows > 0;
        }

        public static string GetAdmissionFormLink()
        {
            string link = GetSetting("AdmissionFormLink", "https://drive.google.com/");
            return string.IsNullOrWhiteSpace(link) ? "https://drive.google.com/" : link;
        }

        public static DataRow GetActivePopup()
        {
            try
            {
                string query = "SELECT TOP 1 * FROM PopupAnnouncements WHERE IsActive = 1 ORDER BY PopupId DESC";
                DataTable dt = DbHelper.ExecuteDataTable(query);
                return (dt != null && dt.Rows.Count > 0) ? dt.Rows[0] : null;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static DataRow GetLatestPopup()
        {
            try
            {
                string query = "SELECT TOP 1 * FROM PopupAnnouncements ORDER BY PopupId DESC";
                DataTable dt = DbHelper.ExecuteDataTable(query);
                return (dt != null && dt.Rows.Count > 0) ? dt.Rows[0] : null;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static bool SavePopup(int popupId, string title, string imageUrl, string description, string actionUrl, string actionText, bool isActive)
        {
            if (popupId > 0)
            {
                string query = @"
                    UPDATE PopupAnnouncements 
                    SET Title = @Title, ImageUrl = @ImageUrl, Description = @Description, 
                        ActionUrl = @ActionUrl, ActionText = @ActionText, IsActive = @IsActive
                    WHERE PopupId = @PopupId;
                ";
                int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                    DbHelper.CreateParameter("@Title", SqlDbType.NVarChar, title, 200),
                    DbHelper.CreateParameter("@ImageUrl", SqlDbType.NVarChar, (object)imageUrl ?? DBNull.Value, 500),
                    DbHelper.CreateParameter("@Description", SqlDbType.NVarChar, (object)description ?? DBNull.Value),
                    DbHelper.CreateParameter("@ActionUrl", SqlDbType.NVarChar, (object)actionUrl ?? DBNull.Value, 500),
                    DbHelper.CreateParameter("@ActionText", SqlDbType.NVarChar, (object)actionText ?? "Learn More", 100),
                    DbHelper.CreateParameter("@IsActive", SqlDbType.Bit, isActive),
                    DbHelper.CreateParameter("@PopupId", SqlDbType.Int, popupId)
                );
                return rows > 0;
            }
            else
            {
                string query = @"
                    INSERT INTO PopupAnnouncements (Title, ImageUrl, Description, ActionUrl, ActionText, IsActive, CreatedDate)
                    VALUES (@Title, @ImageUrl, @Description, @ActionUrl, @ActionText, @IsActive, GETDATE());
                ";
                int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                    DbHelper.CreateParameter("@Title", SqlDbType.NVarChar, title, 200),
                    DbHelper.CreateParameter("@ImageUrl", SqlDbType.NVarChar, (object)imageUrl ?? DBNull.Value, 500),
                    DbHelper.CreateParameter("@Description", SqlDbType.NVarChar, (object)description ?? DBNull.Value),
                    DbHelper.CreateParameter("@ActionUrl", SqlDbType.NVarChar, (object)actionUrl ?? DBNull.Value, 500),
                    DbHelper.CreateParameter("@ActionText", SqlDbType.NVarChar, (object)actionText ?? "Learn More", 100),
                    DbHelper.CreateParameter("@IsActive", SqlDbType.Bit, isActive)
                );
                return rows > 0;
            }
        }
    }
}
