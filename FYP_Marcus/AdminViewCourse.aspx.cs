using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class AdminViewCourse : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                String query = "SELECT * FROM Videos";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
            }
            if (Request.QueryString["delete"] != null)
            {
                string vid = Request.QueryString["delete"];
                string query = "DELETE FROM Wishlist WHERE videoId='" + vid + "';DELETE FROM Reports WHERE videoId='" + vid + "';DELETE FROM Rewards WHERE videoId='" + vid + "';DELETE FROM Videos WHERE Id='" + vid + "'";
                connectdata.executeQuery(query);
            }

        }
    }
}