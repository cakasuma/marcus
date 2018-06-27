using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace FYP_Marcus
{
    public class connectdata
    {
        public static SqlConnection getConnection()
        {
            SqlConnection conn = null;

            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\asp project\FYP_Marcus\FYP_Marcus\App_Data\Marcus.mdf;Integrated Security=True");
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
            string hashpass = HashPass(password);
            String query = "SELECT Email, Usertype FROM Users where Email = '" + email + "' and Password = '" + hashpass + "';";
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
        public static string HashPass(string password)
        {
            if (String.IsNullOrEmpty(password))
                return String.Empty;

            using (var sha = new SHA256Managed())
            {
                byte[] textData = System.Text.Encoding.UTF8.GetBytes(password);
                byte[] hash = sha.ComputeHash(textData);
                return BitConverter.ToString(hash).Replace("-", String.Empty);
            }
        }

        public static string getWebSecurity()
        {
            string result = "";
            String query = "SELECT count(Id) as web FROM Videos where videoCategory = 'Web Security'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                result = sdr["web"].ToString();
            }
            return result;
        }

        public static string getDatabaseSecurity()
        {
            string result = "";
            String query = "SELECT count(Id) as web FROM Videos where videoCategory = 'Database Security'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                result = sdr["web"].ToString();
            }
            return result;
        }
        public static string getnetworkSecurity()
        {
            string result = "";
            String query = "SELECT count(Id) as web FROM Videos where videoCategory = 'Network Security'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                result = sdr["web"].ToString();
            }
            return result;
        }
        public static string getMobileSecurity()
        {
            string result = "";
            String query = "SELECT count(Id) as web FROM Videos where videoCategory = 'Mobile Security'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                result = sdr["web"].ToString();
            }
            return result;
        }
        public static string getCryptography()
        {
            string result = "";
            String query = "SELECT count(Id) as web FROM Videos where videoCategory = 'Cryptography'";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                result = sdr["web"].ToString();
            }
            return result;
        }

        public static string getAllVideos()
        {
            string result = "";
            String query = "SELECT count(Id) as web FROM Videos";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                result = sdr["web"].ToString();
            }
            return result;
        }
    }
}