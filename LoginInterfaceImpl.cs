using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Fleet1
{
    public class LoginInterfaceImpl : LoginInterface
    {
        public static SqlConnection getConnection()
        {
            SqlConnection con = null;
            using (con = new SqlConnection())
            {
                try
                {
                    String str = ConfigurationManager.ConnectionStrings["log"].ConnectionString;
                    con.ConnectionString = str;
                }
                catch (Exception e) { }
            }
            return con;
        }
        public void SetMyData(int userId, string pass, string role)
        {
            SqlConnection con = null;
            int a = 0;


            SqlCommand cmd = new SqlCommand("@myprocedure", con);
            con.Open();
            cmd.Parameters.Add("@userid", System.Data.SqlDbType.NVarChar).Value = userId;
            cmd.Parameters.Add("@pass", System.Data.SqlDbType.NVarChar).Value = pass;
            cmd.Parameters.Add("@role", System.Data.SqlDbType.NVarChar).Value = role;
            a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Console.WriteLine("data is inserted");
             }

            
        }
    }
}