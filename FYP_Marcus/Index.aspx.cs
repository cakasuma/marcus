using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class Index : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        public string userid = "0";
        public string email = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                email = Session["Email"].ToString();
                userid = new connectdata().getUserId(email);
                String query = "SELECT TOP 3 * FROM Videos";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
            }
            else
            {
                String query = "SELECT TOP 3 * FROM Videos";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
            }
            
        }
    }
}