using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class DisclosureService
    {
        public static DataTable GetAllDisclosures()
        {
            string query = "SELECT * FROM MandatoryDisclosures ORDER BY DisplayOrder ASC, DocumentTitle ASC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetDisclosuresByCategory(string category)
        {
            string query = "SELECT * FROM MandatoryDisclosures WHERE Category = @Category ORDER BY DisplayOrder ASC";
            return DbHelper.ExecuteDataTable(query, CommandType.Text, 
                DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 100));
        }

        public static int AddDisclosure(string category, string documentTitle, string documentNumber, string pdfFileUrl, string fileSize, string academicSession, int displayOrder)
        {
            string query = @"
                INSERT INTO MandatoryDisclosures (Category, DocumentTitle, DocumentNumber, PdfFileUrl, FileSize, AcademicSession, DisplayOrder, LastUpdatedDate)
                VALUES (@Category, @DocumentTitle, @DocumentNumber, @PdfFileUrl, @FileSize, @AcademicSession, @DisplayOrder, GETDATE());
                SELECT SCOPE_IDENTITY();
            ";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 100),
                DbHelper.CreateParameter("@DocumentTitle", SqlDbType.NVarChar, documentTitle, 255),
                DbHelper.CreateParameter("@DocumentNumber", SqlDbType.NVarChar, (object)documentNumber ?? DBNull.Value, 100),
                DbHelper.CreateParameter("@PdfFileUrl", SqlDbType.NVarChar, pdfFileUrl, 500),
                DbHelper.CreateParameter("@FileSize", SqlDbType.NVarChar, (object)fileSize ?? DBNull.Value, 50),
                DbHelper.CreateParameter("@AcademicSession", SqlDbType.NVarChar, academicSession, 20),
                DbHelper.CreateParameter("@DisplayOrder", SqlDbType.Int, displayOrder)
            );

            return Convert.ToInt32(result);
        }

        public static bool UpdateDisclosure(int disclosureId, string category, string documentTitle, string documentNumber, string pdfFileUrl, string fileSize, string academicSession, int displayOrder)
        {
            string query = @"
                UPDATE MandatoryDisclosures 
                SET Category = @Category, DocumentTitle = @DocumentTitle, DocumentNumber = @DocumentNumber, 
                    PdfFileUrl = @PdfFileUrl, FileSize = @FileSize, AcademicSession = @AcademicSession, 
                    DisplayOrder = @DisplayOrder, LastUpdatedDate = GETDATE()
                WHERE DisclosureId = @DisclosureId
            ";

            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 100),
                DbHelper.CreateParameter("@DocumentTitle", SqlDbType.NVarChar, documentTitle, 255),
                DbHelper.CreateParameter("@DocumentNumber", SqlDbType.NVarChar, (object)documentNumber ?? DBNull.Value, 100),
                DbHelper.CreateParameter("@PdfFileUrl", SqlDbType.NVarChar, pdfFileUrl, 500),
                DbHelper.CreateParameter("@FileSize", SqlDbType.NVarChar, (object)fileSize ?? DBNull.Value, 50),
                DbHelper.CreateParameter("@AcademicSession", SqlDbType.NVarChar, academicSession, 20),
                DbHelper.CreateParameter("@DisplayOrder", SqlDbType.Int, displayOrder),
                DbHelper.CreateParameter("@DisclosureId", SqlDbType.Int, disclosureId)
            );

            return rows > 0;
        }

        public static bool DeleteDisclosure(int disclosureId)
        {
            string query = "DELETE FROM MandatoryDisclosures WHERE DisclosureId = @DisclosureId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@DisclosureId", SqlDbType.Int, disclosureId));
            return rows > 0;
        }
    }
}
