using System;
using System.Collections.Generic;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["videoid"] != null)
            {
                id = Request.QueryString["videoid"];
                string email = Session["Email"].ToString();
                string userid = new connectdata().getUserId(email);
                point = Request.QueryString["points"];
                if (Request.QueryString["insertPoints"] != null)
                {
                    point = Request.QueryString["insertPoints"];
                    bool checkRewards = new connectdata().isVideoRewardsExist(id, userid);
                    if (checkRewards)
                    {
                        System.Diagnostics.Trace.WriteLine("cannot add points");

                    }
                    else
                    {
                        System.Diagnostics.Trace.WriteLine("testingg     " + point + " ..................");
                    }
                    
                    
                }
            }
            
        }


    }
}