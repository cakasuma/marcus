using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["feedback"] != null)
            {
                string subject = Request.Form["subject"];
                string email = Request.Form["email"];
                string message = Request.Form["message"];
                string query = "INSERT INTO Feedback (subject, email,messages) VALUES ('" + subject + "', '" + email + "', '" + message + "')";
                connectdata.executeQuery(query);
                Response.Write("<script>alert('Submit Successful')</script>");
            }
        }
    }
}