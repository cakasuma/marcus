using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class VideoCatalogue : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        public string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                string email = Session["Email"].ToString();
                userid = new connectdata().getUserId(email);
                if (Request.QueryString["type"] != null)
                {
                    string type = Request.QueryString["type"];
                    string typeform = string.Empty;
                    if (type == "websec")
                    {
                        typeform = "Web Security";
                    }
                    else if (type == "dbsec")
                    {
                        typeform = "Database Security";
                    }
                    else if (type == "mobsec")
                    {
                        typeform = "Mobile Security";
                    }
                    else if (type == "netsec")
                    {
                        typeform = "Network Security";
                    }
                    else if (type == "crypto")
                    {
                        typeform = "Cryptography";
                    }
                    String query = "SELECT * FROM Videos WHERE videoCategory='" + typeform + "'";
                    SqlConnection conn = connectdata.getConnection();
                    conn.Open();
                    SqlCommand cm = new SqlCommand(query, conn);
                    sdr = cm.ExecuteReader();
                }
                else
                {
                    String query = "SELECT * FROM Videos";
                    SqlConnection conn = connectdata.getConnection();
                    conn.Open();
                    SqlCommand cm = new SqlCommand(query, conn);
                    sdr = cm.ExecuteReader();
                }
            }
            else
            {
                Response.Redirect("LoginSignup.aspx");
            }

        }
    }
}