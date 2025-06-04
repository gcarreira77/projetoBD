using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dentista_forms
{
    public static class DBHelper
    {
        private static readonly string connectionString = ConfigurationManager.ConnectionStrings["ClinicaDB"].ConnectionString;

        public static DataTable ExecuteQuery(string query)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        public static void ExecuteNonQuery(string query)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
