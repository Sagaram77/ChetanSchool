using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class AdminService
    {
        public static bool ValidateAdmin(string username, string password, out string fullName, out string role, out int userId, out string error)
        {
            fullName = string.Empty;
            role = string.Empty;
            userId = 0;
            error = string.Empty;

            string query = "SELECT UserId, PasswordHash, Salt, FullName, Role, IsActive FROM AdminUsers WHERE Username = @Username";
            SqlParameter[] parameters = {
                DbHelper.CreateParameter("@Username", SqlDbType.NVarChar, username, 50)
            };

            DataTable dt = DbHelper.ExecuteDataTable(query, CommandType.Text, parameters);
            if (dt == null || dt.Rows.Count == 0)
            {
                error = "User '" + username + "' does not exist in database 'Chetancbsehubli'. Please execute the seed script ChetanSchool_Schema_Seed.sql in SQL Server.";
                return false;
            }

            DataRow row = dt.Rows[0];
            bool isActive = Convert.ToBoolean(row["IsActive"]);
            if (!isActive)
            {
                error = "This administrator account is marked as inactive.";
                return false;
            }

            string storedHash = row["PasswordHash"] != null ? row["PasswordHash"].ToString() : "";
            string salt = row["Salt"] != null ? row["Salt"].ToString() : "";

            if (SecurityHelper.VerifyPassword(password, storedHash, salt))
            {
                userId = Convert.ToInt32(row["UserId"]);
                fullName = row["FullName"].ToString();
                role = row["Role"].ToString();

                // Update Last Login Date
                string updateQuery = "UPDATE AdminUsers SET LastLoginDate = GETDATE() WHERE UserId = @UserId";
                DbHelper.ExecuteNonQuery(updateQuery, CommandType.Text, 
                    DbHelper.CreateParameter("@UserId", SqlDbType.Int, userId));

                return true;
            }

            error = "Invalid password. Please verify the credentials.";
            return false;
        }

        public static bool ChangePassword(int userId, string oldPassword, string newPassword)
        {
            string query = "SELECT PasswordHash, Salt FROM AdminUsers WHERE UserId = @UserId";
            DataTable dt = DbHelper.ExecuteDataTable(query, CommandType.Text, 
                DbHelper.CreateParameter("@UserId", SqlDbType.Int, userId));

            if (dt != null && dt.Rows.Count > 0)
            {
                string storedHash = dt.Rows[0]["PasswordHash"].ToString();
                string salt = dt.Rows[0]["Salt"].ToString();

                if (SecurityHelper.VerifyPassword(oldPassword, storedHash, salt))
                {
                    string newSalt = SecurityHelper.GenerateSalt();
                    string newHash = SecurityHelper.ComputeSha256Hash(newPassword, newSalt);

                    string updateQuery = "UPDATE AdminUsers SET PasswordHash = @Hash, Salt = @Salt WHERE UserId = @UserId";
                    int rows = DbHelper.ExecuteNonQuery(updateQuery, CommandType.Text,
                        DbHelper.CreateParameter("@Hash", SqlDbType.NVarChar, newHash, 256),
                        DbHelper.CreateParameter("@Salt", SqlDbType.NVarChar, newSalt, 100),
                        DbHelper.CreateParameter("@UserId", SqlDbType.Int, userId));

                    return rows > 0;
                }
            }
            return false;
        }

        public static DataTable GetDashboardStats()
        {
            string query = @"
                SELECT 
                    (SELECT COUNT(*) FROM NewsAnnouncements WHERE IsActive = 1) AS TotalNews,
                    (SELECT COUNT(*) FROM GalleryAlbums WHERE IsActive = 1) AS TotalAlbums,
                    (SELECT COUNT(*) FROM MandatoryDisclosures) AS TotalDisclosures,
                    (SELECT COUNT(*) FROM StaffDirectory WHERE IsActive = 1) AS TotalStaff,
                    (SELECT COUNT(*) FROM ContactMessages WHERE IsRead = 0) AS UnreadMessages;
            ";
            return DbHelper.ExecuteDataTable(query);
        }
    }
}
