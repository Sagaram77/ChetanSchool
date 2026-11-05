using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class ContactService
    {
        public static int SubmitMessage(string name, string email, string phone, string subject, string message)
        {
            string query = @"
                INSERT INTO ContactMessages (SenderName, Email, Phone, Subject, Message, IsRead, SubmittedDate)
                VALUES (@Name, @Email, @Phone, @Subject, @Message, 0, GETDATE());
                SELECT SCOPE_IDENTITY();
            ";

            object result = DbHelper.ExecuteScalar(query, CommandType.Text,
                DbHelper.CreateParameter("@Name", SqlDbType.NVarChar, name, 100),
                DbHelper.CreateParameter("@Email", SqlDbType.NVarChar, email, 100),
                DbHelper.CreateParameter("@Phone", SqlDbType.NVarChar, (object)phone ?? DBNull.Value, 20),
                DbHelper.CreateParameter("@Subject", SqlDbType.NVarChar, subject, 200),
                DbHelper.CreateParameter("@Message", SqlDbType.NVarChar, message)
            );

            return Convert.ToInt32(result);
        }

        public static DataTable GetAllMessages()
        {
            string query = "SELECT * FROM ContactMessages ORDER BY SubmittedDate DESC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static bool MarkAsRead(int messageId, string adminReply = null)
        {
            string query = "UPDATE ContactMessages SET IsRead = 1, AdminReply = @Reply WHERE MessageId = @MessageId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text,
                DbHelper.CreateParameter("@Reply", SqlDbType.NVarChar, (object)adminReply ?? DBNull.Value),
                DbHelper.CreateParameter("@MessageId", SqlDbType.Int, messageId)
            );
            return rows > 0;
        }

        public static bool DeleteMessage(int messageId)
        {
            string query = "DELETE FROM ContactMessages WHERE MessageId = @MessageId";
            int rows = DbHelper.ExecuteNonQuery(query, CommandType.Text, 
                DbHelper.CreateParameter("@MessageId", SqlDbType.Int, messageId));
            return rows > 0;
        }
    }
}
