using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    
    public partial class AdminViewReport : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                String query = "SELECT r.Id, r.dateCreated, u.Name, v.videoName, v.videoRewards, v.videoCategory FROM Reports r inner join Videos v on r.videoId=v.Id inner join Users u on r.userId=u.Id";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
            }
            if (Request.QueryString["delete"] != null)
            {
                string vid = Request.QueryString["delete"];
                string query = "DELETE FROM Reports WHERE Id=" + vid + "";
                connectdata.executeQuery(query);
            }
        }
    }
}