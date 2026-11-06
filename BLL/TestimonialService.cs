using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class TestimonialService
    {
        public static DataTable GetActiveTestimonials()
        {
            string query = "SELECT * FROM ParentTestimonials WHERE IsActive = 1 ORDER BY DisplayOrder ASC, TestimonialId ASC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetAllTestimonialsForAdmin()
        {
            string query = "SELECT * FROM ParentTestimonials ORDER BY DisplayOrder ASC, TestimonialId ASC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataRow GetTestimonialById(int testimonialId)
        {
            string query = "SELECT * FROM ParentTestimonials WHERE TestimonialId = @TestimonialId";
            DataTable dt = DbHelper.ExecuteDataTable(query, CommandType.Text,
                DbHelper.CreateParameter("@TestimonialId", SqlDbType.Int, testimonialId));
            return (dt != null && dt.Rows.Count > 0) ? dt.Rows[0] : null;
        }

        public static int AddTestimonial(string parentName, string childClass, int rating, string testimonialText, string photoUrl, int displayOrder, bool isActive)
        {
            string query = @"INSERT INTO ParentTestimonials (ParentName, ChildClass, Rating, TestimonialText, PhotoUrl, DisplayOrder, IsActive, CreatedDate)
                             VALUES (@ParentName, @ChildClass, @Rating, @TestimonialText, @PhotoUrl, @DisplayOrder, @IsActive, GETDATE());
                             SELECT SCOPE_IDENTITY();";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@ParentName", SqlDbType.NVarChar, parentName, 150),
                DbHelper.CreateParameter("@ChildClass", SqlDbType.NVarChar, childClass, 100),
                DbHelper.CreateParameter("@Rating", SqlDbType.Int, rating),
                DbHelper.CreateParameter("@TestimonialText", SqlDbType.NVarChar, testimonialText),
                DbHelper.CreateParameter("@PhotoUrl", SqlDbType.NVarChar, (object)photoUrl ?? DBNull.Value, 300),
                DbHelper.CreateParameter("@DisplayOrder", SqlDbType.Int, displayOrder),
                DbHelper.CreateParameter("@IsActive", SqlDbType.Bit, isActive));

            return Convert.ToInt32(result);
        }

        public static bool UpdateTestimonial(int testimonialId, string parentName, string childClass, int rating, string testimonialText, string photoUrl, int displayOrder, bool isActive)
        {
            string query = @"UPDATE ParentTestimonials 
                             SET ParentName = @ParentName, 
                                 ChildClass = @ChildClass, 
                                 Rating = @Rating, 
                                 TestimonialText = @TestimonialText, 
                                 PhotoUrl = @PhotoUrl, 
                                 DisplayOrder = @DisplayOrder, 
                                 IsActive = @IsActive 
                             WHERE TestimonialId = @TestimonialId";

            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@TestimonialId", SqlDbType.Int, testimonialId),
                DbHelper.CreateParameter("@ParentName", SqlDbType.NVarChar, parentName, 150),
                DbHelper.CreateParameter("@ChildClass", SqlDbType.NVarChar, childClass, 100),
                DbHelper.CreateParameter("@Rating", SqlDbType.Int, rating),
                DbHelper.CreateParameter("@TestimonialText", SqlDbType.NVarChar, testimonialText),
                DbHelper.CreateParameter("@PhotoUrl", SqlDbType.NVarChar, (object)photoUrl ?? DBNull.Value, 300),
                DbHelper.CreateParameter("@DisplayOrder", SqlDbType.Int, displayOrder),
                DbHelper.CreateParameter("@IsActive", SqlDbType.Bit, isActive));

            return rows > 0;
        }

        public static bool DeleteTestimonial(int testimonialId)
        {
            string query = "DELETE FROM ParentTestimonials WHERE TestimonialId = @TestimonialId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@TestimonialId", SqlDbType.Int, testimonialId));
            return rows > 0;
        }

        public static int GetTotalCount()
        {
            string query = "SELECT COUNT(*) FROM ParentTestimonials";
            object res = DbHelper.ExecuteScalar(query);
            return res != null && res != DBNull.Value ? Convert.ToInt32(res) : 0;
        }

        public static string GetInitials(string fullName)
        {
            if (string.IsNullOrWhiteSpace(fullName)) return "P";
            string[] parts = fullName.Trim().Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            if (parts.Length == 1)
            {
                return parts[0].Length >= 2 ? parts[0].Substring(0, 2).ToUpper() : parts[0].ToUpper();
            }
            return (parts[0][0].ToString() + parts[parts.Length - 1][0].ToString()).ToUpper();
        }
    }
}
