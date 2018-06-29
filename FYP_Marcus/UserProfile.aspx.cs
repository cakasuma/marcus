using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class UserProfile : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        public string points;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                string email = Session["Email"].ToString();
                string userid = new connectdata().getUserId(email);
                points = connectdata.getUserPoints(userid);
                String query = "SELECT * FROM Users WHERE Id="+userid+"";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();

                if (Request.QueryString["editprofile"] != null)
                {
                    string name = Request.Form["edit-name"];
                    string contact = Request.Form["edit-contact"];
                    string aboutyou = Request.Form["edit-aboutyou"];
                    string interest = Request.Form["edit-interest"];
                    string birthday = Request.Form["edit-birthday"];
            
                    string queryedit = "UPDATE Users SET Name='" + name + "',Contact='" + contact + "',about_me='" + aboutyou + "',interest='" + interest + "',birthday='" + birthday + "'";
                    connectdata.executeQuery(queryedit);
                    Response.Write("<script>alert('edit successful')</script>");
                }
                if (Request.QueryString["changepassword"] != null)
                {
                    string oldpass = Request.Form["change-oldpass"];
                    string newpass = Request.Form["change-newpass"];
                    bool checkpass = connectdata.isPasswordMatch(email, oldpass);
                    string queryedit = "";
                    if (checkpass)
                    {
                        connectdata.executeQuery(queryedit);
                        Response.Write("<script>alert('edit successful')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('that is not your old password')</script>");
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