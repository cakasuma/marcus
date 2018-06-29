using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class WishlistCatalogue : System.Web.UI.Page
    {
        public string userid;
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                string email = Session["Email"].ToString();
                userid = new connectdata().getUserId(email);
                String query = "select v.videoName, v.Id, v.videoCategory, v.videoRewards, v.videoDescription, v.youtubeId, w.dateCreated from Wishlist w inner join Videos v on w.videoId=v.Id where w.userId="+userid+"";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
                if (Request.QueryString["deletewish"] != null)
                {
                    string vidid = Request.QueryString["deletewish"];
                    string querys = "DELETE FROM Wishlist WHERE videoId="+vidid+"";
                    connectdata.executeQuery(querys);
                    Response.Redirect("WishlistCatalogue.aspx");
                }
            }
            else
            {
                Response.Redirect("LoginSignup.aspx");
            }
        }
    }
}