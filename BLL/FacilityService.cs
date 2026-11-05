using System;
using System.Data;
using System.Data.SqlClient;
using Chetancbsewebsite.DAL;

namespace Chetancbsewebsite.BLL
{
    public class FacilityService
    {
        public static DataTable GetAllFacilities()
        {
            string query = "SELECT * FROM CampusFacilities WHERE IsActive = 1 ORDER BY DisplayOrder ASC";
            return DbHelper.ExecuteDataTable(query);
        }

        public static DataTable GetFacilitiesByCategory(string category)
        {
            string query = "SELECT * FROM CampusFacilities WHERE Category = @Category AND IsActive = 1 ORDER BY DisplayOrder ASC";
            return DbHelper.ExecuteDataTable(query, CommandType.Text, 
                DbHelper.CreateParameter("@Category", SqlDbType.NVarChar, category, 50));
        }
    }
}
