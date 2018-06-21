using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        public string name = "";
        public string email = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null && Session["Usertype"].ToString()=="Admin")
            {
                email = Session["Email"].ToString();
                name = connectdata.getUserName(email);
            }
            else
            {
                Response.Redirect("LoginSignup.aspx");
            }
        }
    }
}