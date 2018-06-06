using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FYP_Marcus
{
    public class connectdata
    {
        public static SqlConnection getConnection()
        {
            SqlConnection conn = null;

            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\amam\documents\visual studio 2017\Projects\FYP_Marcus\FYP_Marcus\App_Data\Marcus.mdf;Integrated Security=True");
            return conn;
        }

        public static void executeQuery(String strQuery)
        {


            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(strQuery, conn);
            cmd.ExecuteNonQuery();
            closeConnection(conn);

        }
        public static void closeConnection(SqlConnection conn)
        {

            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }

        public static string getUserName(String email)
        {
            string username = string.Empty;
            String query = "SELECT Name FROM Users where Email='" + email + "'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();

            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    username = sdr["Name"].ToString();
                }

            }
            closeConnection(conn);
            return username;
        }

        public string getUserId(String email)
        {
            string id = string.Empty;
            String query = "SELECT Id FROM Users where Email='" + email + "'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();

            if (sdr.HasRows)
            {
                id = sdr["Id"].ToString();
            }
            closeConnection(conn);
            return id;
        }
        public bool isEmailExists(String email)
        {
            String query = "SELECT Email FROM Users where Email='" + email + "'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            bool flag = false;
            if (sdr.HasRows)
            {
                flag = true;
            }
            closeConnection(conn);
            return flag;
        }

        public bool Login(String email, string password)
        {

            String query = "SELECT Email, Usertype FROM Users where Email = '" + email + "' and Password = '" + password + "';";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            bool flag = false;
            if (sdr.HasRows)
            {
                flag = true;
                System.Web.HttpContext.Current.Session["Email"] = email;

                while (sdr.Read())
                {
                    System.Web.HttpContext.Current.Session["Usertype"] = sdr["Usertype"].ToString();
                }

            }
            closeConnection(conn);
            return flag;
        }
    }
}