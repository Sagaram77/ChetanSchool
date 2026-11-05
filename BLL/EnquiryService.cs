using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class EnquiryService
    {
        public static int SubmitEnquiry(string studentName, string parentName, string email, string phone, string classAppliedFor, DateTime? dob, string currentSchool, string address, string message)
        {
            string query = @"
                INSERT INTO AdmissionEnquiries (StudentName, ParentName, Email, Phone, ClassAppliedFor, DateOfBirth, CurrentSchool, Address, Message, EnquiryStatus, CreatedDate)
                VALUES (@StudentName, @ParentName, @Email, @Phone, @ClassAppliedFor, @DateOfBirth, @CurrentSchool, @Address, @Message, 'New', GETDATE());
                SELECT SCOPE_IDENTITY();
            ";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@StudentName", SqlDbType.NVarChar, studentName, 100),
                DbHelper.CreateParameter("@ParentName", SqlDbType.NVarChar, parentName, 100),
                DbHelper.CreateParameter("@Email", SqlDbType.NVarChar, email, 100),
                DbHelper.CreateParameter("@Phone", SqlDbType.NVarChar, phone, 20),
                DbHelper.CreateParameter("@ClassAppliedFor", SqlDbType.NVarChar, classAppliedFor, 20),
                DbHelper.CreateParameter("@DateOfBirth", SqlDbType.Date, (object)dob ?? DBNull.Value),
                DbHelper.CreateParameter("@CurrentSchool", SqlDbType.NVarChar, (object)currentSchool ?? DBNull.Value, 150),
                DbHelper.CreateParameter("@Address", SqlDbType.NVarChar, (object)address ?? DBNull.Value, 300),
                DbHelper.CreateParameter("@Message", SqlDbType.NVarChar, (object)message ?? DBNull.Value)
            );

            return Convert.ToInt32(result);
        }

        public static DataTable GetAllEnquiries(string status = null)
        {
            if (string.IsNullOrEmpty(status) || status.Equals("All", StringComparison.OrdinalIgnoreCase))
            {
                string query = "SELECT * FROM AdmissionEnquiries ORDER BY CreatedDate DESC";
                return DbHelper.ExecuteDataTable(query);
            }
            else
            {
                string query = "SELECT * FROM AdmissionEnquiries WHERE EnquiryStatus = @Status ORDER BY CreatedDate DESC";
                return DbHelper.ExecuteDataTable(query, CommandType.Text, 
                    DbHelper.CreateParameter("@Status", SqlDbType.NVarChar, status, 30));
            }
        }

        public static bool UpdateStatus(int enquiryId, string newStatus, string adminRemarks)
        {
            string query = "UPDATE AdmissionEnquiries SET EnquiryStatus = @Status, AdminRemarks = @Remarks WHERE EnquiryId = @EnquiryId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@Status", SqlDbType.NVarChar, newStatus, 30),
                DbHelper.CreateParameter("@Remarks", SqlDbType.NVarChar, (object)adminRemarks ?? DBNull.Value),
                DbHelper.CreateParameter("@EnquiryId", SqlDbType.Int, enquiryId)
            );
            return rows > 0;
        }

        public static bool DeleteEnquiry(int enquiryId)
        {
            string query = "DELETE FROM AdmissionEnquiries WHERE EnquiryId = @EnquiryId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@EnquiryId", SqlDbType.Int, enquiryId));
            return rows > 0;
        }
    }
}
