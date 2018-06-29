using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class Index1 : System.Web.UI.MasterPage
    {
        public string name = "";
        public string email = "";
        public string points = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                email = Session["Email"].ToString();
                name = connectdata.getUserName(email);
                string id = new connectdata().getUserId(email);
                points = connectdata.getUserPoints(id);
            }
        }
    }
}