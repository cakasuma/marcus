using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class AdminViewUser : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                String query = "SELECT Name, Email, Contact, Usertype FROM Users";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
            }
            if (Request.QueryString["delete"] != null)
            {
                string email = Request.QueryString["delete"];
                string query = "DELETE FROM Wishlist WHERE Email='" + email + "';DELETE FROM Users WHERE Email='" + email + "'";
                connectdata.executeQuery(query);
            }
        }
    }
}