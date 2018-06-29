using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class VideoDetails : System.Web.UI.Page
    {
        public string point;
        public string id;
        public string userid;
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                if (Request.QueryString["videoid"] != null)
                {
                    id = Request.QueryString["videoid"];
                    string email = Session["Email"].ToString();
                    userid = new connectdata().getUserId(email);
                    point = Request.QueryString["points"];


                    String query = "SELECT * FROM Videos WHERE Id=" + id + "";
                    SqlConnection conn = connectdata.getConnection();
                    conn.Open();
                    SqlCommand cm = new SqlCommand(query, conn);
                    sdr = cm.ExecuteReader();


                    if (Request.QueryString["insertPoints"] != null)
                    {
                        point = Request.QueryString["insertPoints"];
                        System.Diagnostics.Debug.WriteLine(point + "-----------------------------");
                        string querys = "INSERT INTO Rewards (amount, userid, videoid) VALUES (" + point + "," + userid + "," + id + ")";
                        connectdata.executeQuery(querys);
                        string query2 = "INSERT INTO Reports (userid, videoid) VALUES (" + userid + "," + id + ")";
                        connectdata.executeQuery(query2);
                    }
                    if (Request.QueryString["addwishlist"] != null)
                    {
                        string queryz = "INSERT INTO Wishlist (userid, videoid) VALUES (" + userid + "," + id + ")";
                        connectdata.executeQuery(queryz);
                    }

                }
            }
            else
            {
                Response.Redirect("LoginSignup.aspx");
            }

            
        }

    }
}