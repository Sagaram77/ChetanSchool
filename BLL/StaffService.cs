using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class StaffService
    {
        public static DataTable GetAllStaff()
        {
            string query = "SELECT * FROM StaffDirectory WHERE IsActive = 1 ORDER BY DisplayOrder ASC, FullName ASC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetStaffForAdmin()
        {
            string query = "SELECT * FROM StaffDirectory ORDER BY DisplayOrder ASC, FullName ASC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetStaffByDepartment(string department)
        {
            string query = "SELECT * FROM StaffDirectory WHERE Department = @Department AND IsActive = 1 ORDER BY DisplayOrder ASC";
            return DbHelper.ExecuteDataTable(query, CommandType.Text, 
                DbHelper.CreateParameter("@Department", SqlDbType.NVarChar, department, 100));
        }

        public static DataTable GetLeadership()
        {
            string query = "SELECT * FROM StaffDirectory WHERE Department = 'Administration' AND IsActive = 1 ORDER BY DisplayOrder ASC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static int AddStaff(string fullName, string designation, string department, string qualifications, int? experienceYears, string photoUrl, int displayOrder)
        {
            string query = @"
                INSERT INTO StaffDirectory (FullName, Designation, Department, Qualifications, ExperienceYears, PhotoUrl, DisplayOrder, IsActive)
                VALUES (@FullName, @Designation, @Department, @Qualifications, @ExperienceYears, @PhotoUrl, @DisplayOrder, 1);
                SELECT SCOPE_IDENTITY();
            ";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@FullName", SqlDbType.NVarChar, fullName, 100),
                DbHelper.CreateParameter("@Designation", SqlDbType.NVarChar, designation, 100),
                DbHelper.CreateParameter("@Department", SqlDbType.NVarChar, department, 100),
                DbHelper.CreateParameter("@Qualifications", SqlDbType.NVarChar, qualifications, 150),
                DbHelper.CreateParameter("@ExperienceYears", SqlDbType.Int, (object)experienceYears ?? DBNull.Value),
                DbHelper.CreateParameter("@PhotoUrl", SqlDbType.NVarChar, (object)photoUrl ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@DisplayOrder", SqlDbType.Int, displayOrder)
            );

            return Convert.ToInt32(result);
        }

        public static bool UpdateStaff(int staffId, string fullName, string designation, string department, string qualifications, int? experienceYears, string photoUrl, int displayOrder, bool isActive)
        {
            string query = @"
                UPDATE StaffDirectory 
                SET FullName = @FullName, Designation = @Designation, Department = @Department, 
                    Qualifications = @Qualifications, ExperienceYears = @ExperienceYears, 
                    PhotoUrl = @PhotoUrl, DisplayOrder = @DisplayOrder, IsActive = @IsActive
                WHERE StaffId = @StaffId
            ";

            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@FullName", SqlDbType.NVarChar, fullName, 100),
                DbHelper.CreateParameter("@Designation", SqlDbType.NVarChar, designation, 100),
                DbHelper.CreateParameter("@Department", SqlDbType.NVarChar, department, 100),
                DbHelper.CreateParameter("@Qualifications", SqlDbType.NVarChar, qualifications, 150),
                DbHelper.CreateParameter("@ExperienceYears", SqlDbType.Int, (object)experienceYears ?? DBNull.Value),
                DbHelper.CreateParameter("@PhotoUrl", SqlDbType.NVarChar, (object)photoUrl ?? DBNull.Value, 500),
                DbHelper.CreateParameter("@DisplayOrder", SqlDbType.Int, displayOrder),
                DbHelper.CreateParameter("@IsActive", SqlDbType.Bit, isActive),
                DbHelper.CreateParameter("@StaffId", SqlDbType.Int, staffId)
            );

            return rows > 0;
        }

        public static bool DeleteStaff(int staffId)
        {
            string query = "DELETE FROM StaffDirectory WHERE StaffId = @StaffId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@StaffId", SqlDbType.Int, staffId));
            return rows > 0;
        }
    }
}
