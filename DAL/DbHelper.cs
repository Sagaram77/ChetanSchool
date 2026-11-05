using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Chetancbsewebsite.DAL
{
    /// <summary>
    /// Thread-safe ADO.NET Database Helper for Microsoft SQL Server
    /// Enforces parameterized queries and safe connection pooling.
    /// </summary>
    public static class DbHelper
    {
        private static readonly string ConnectionString = 
            ConfigurationManager.ConnectionStrings["ChetanSchoolDB"] != null 
                ? ConfigurationManager.ConnectionStrings["ChetanSchoolDB"].ConnectionString 
                : "Data Source=SAGAR-M-DELL;Initial Catalog=Chetancbsehubli;Integrated Security=True;TrustServerCertificate=True;";

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConnectionString);
        }

        public static int ExecuteNonQuery(string query, CommandType commandType = CommandType.Text, params SqlParameter[] parameters)
        {
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.CommandType = commandType;
                    if (parameters != null && parameters.Length > 0)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }
                    conn.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public static object ExecuteScalar(string query, CommandType commandType = CommandType.Text, params SqlParameter[] parameters)
        {
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.CommandType = commandType;
                    if (parameters != null && parameters.Length > 0)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }
                    conn.Open();
                    return cmd.ExecuteScalar();
                }
            }
        }

        public static DataTable ExecuteDataTable(string query, CommandType commandType = CommandType.Text, params SqlParameter[] parameters)
        {
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.CommandType = commandType;
                    if (parameters != null && parameters.Length > 0)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        return dt;
                    }
                }
            }
        }

        public static DataSet ExecuteDataSet(string query, CommandType commandType = CommandType.Text, params SqlParameter[] parameters)
        {
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.CommandType = commandType;
                    if (parameters != null && parameters.Length > 0)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        return ds;
                    }
                }
            }
        }

        public static SqlParameter CreateParameter(string name, SqlDbType type, object value, int size = 0, ParameterDirection direction = ParameterDirection.Input)
        {
            SqlParameter param = new SqlParameter(name, type);
            if (size > 0) param.Size = size;
            param.Direction = direction;
            param.Value = value ?? DBNull.Value;
            return param;
        }
    }
}
