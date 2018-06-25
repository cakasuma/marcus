using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class LoginSignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["signup"] != null)
            {
                string name = Request.Form["create-fullname"];
                string email = Request.Form["create-email"];
                string password = Request.Form["create-password"];
                string contact = Request.Form["create-contact"];
                
                bool isEmailExist = new connectdata().isEmailExists(email);
                if (!isEmailExist)
                {
                    string hashpass = connectdata.HashPass(password);
                    String query = "INSERT INTO Users (Name, Email, Password, Contact, Usertype) VALUES ('" + name + "','" + email + "','" + hashpass + "','" + contact + "','Student')";
                    connectdata.executeQuery(query);
                    Response.Redirect("LoginSignup.aspx?signupsucces=true");
                }
                else
                {
                    Response.Write("<script>alert('Email already exists!');</script");
                }
            }

            if(Request.QueryString["signupsucces"] != null)
            {
                Response.Write("<script>alert('Register successful');</script");
            }

            if(Request.QueryString["login"] != null)
            {
                String username = Request.Form["login-email"];
                String password = Request.Form["login-password"];
                bool result = new connectdata().Login(username, password);
                if (result == true)
                {
                    String Usertype = Session["Usertype"].ToString();
                    if (Usertype.Equals("Student"))
                    {
                        Response.Redirect("Index.aspx");
                    }
                    if (Usertype.Equals("Admin"))
                    {
                        Response.Redirect("AdminHome.aspx");

                    }
                }
                else
                {
                    Response.Write("<script>alert('Login failed, incorrect username or password');</script");
                }
            }
        }
    }
}