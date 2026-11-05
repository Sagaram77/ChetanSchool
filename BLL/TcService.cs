using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class TcService
    {
        public static DataTable SearchTc(string keyword)
        {
            if (string.IsNullOrWhiteSpace(keyword))
            {
                string query = "SELECT TOP 50 * FROM TransferCertificates ORDER BY DateOfIssue DESC";
                return DbHelper.ExecuteDataTable(query);
            }
            else
            {
                string query = @"
                    SELECT * FROM TransferCertificates 
                    WHERE TcNumber LIKE @Keyword 
                       OR AdmissionNumber LIKE @Keyword 
                       OR StudentName LIKE @Keyword 
                       OR FatherName LIKE @Keyword
                    ORDER BY DateOfIssue DESC;
                ";
                return DbHelper.ExecuteDataTable(query, CommandType.Text, 
                    DbHelper.CreateParameter("@Keyword", SqlDbType.NVarChar, "%" + keyword.Trim() + "%", 100));
            }
        }

        public static int AddTc(string admissionNo, string tcNo, string studentName, string fatherName, string classLeaving, DateTime dateOfIssue, string tcPdfUrl, string academicYear)
        {
            string query = @"
                INSERT INTO TransferCertificates (AdmissionNumber, TcNumber, StudentName, FatherName, ClassLeaving, DateOfIssue, TcPdfUrl, AcademicYear, UploadedDate)
                VALUES (@AdmissionNumber, @TcNumber, @StudentName, @FatherName, @ClassLeaving, @DateOfIssue, @TcPdfUrl, @AcademicYear, GETDATE());
                SELECT SCOPE_IDENTITY();
            ";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@AdmissionNumber", SqlDbType.NVarChar, admissionNo, 50),
                DbHelper.CreateParameter("@TcNumber", SqlDbType.NVarChar, tcNo, 50),
                DbHelper.CreateParameter("@StudentName", SqlDbType.NVarChar, studentName, 100),
                DbHelper.CreateParameter("@FatherName", SqlDbType.NVarChar, fatherName, 100),
                DbHelper.CreateParameter("@ClassLeaving", SqlDbType.NVarChar, classLeaving, 20),
                DbHelper.CreateParameter("@DateOfIssue", SqlDbType.Date, dateOfIssue),
                DbHelper.CreateParameter("@TcPdfUrl", SqlDbType.NVarChar, tcPdfUrl, 500),
                DbHelper.CreateParameter("@AcademicYear", SqlDbType.NVarChar, academicYear, 20)
            );

            return Convert.ToInt32(result);
        }

        public static bool DeleteTc(int tcId)
        {
            string query = "DELETE FROM TransferCertificates WHERE TcId = @TcId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@TcId", SqlDbType.Int, tcId));
            return rows > 0;
        }
    }
}
