using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class AdminEditCourse : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        public string videoName = string.Empty;
        //public string videoLocation = string.Empty;
        public string videoCategory = string.Empty;
        public string videoRewards = string.Empty;
        public string videoDescription = string.Empty;
        public string youtubeid = string.Empty;
        //public string videoImage = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["edit"] != null)
            {
                string vid = Request.QueryString["edit"];
                String query = "SELECT * FROM Videos where Id="+vid+"";
                SqlConnection conn = connectdata.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        videoName = sdr["videoName"].ToString();
                        //videoLocation = sdr["videoLocation"].ToString();
                        videoCategory = sdr["videoCategory"].ToString();
                        videoRewards = sdr["videoRewards"].ToString();
                        videoDescription = sdr["videoDescription"].ToString();
                        youtubeid = sdr["youtubeId"].ToString();
                        //videoImage = sdr["videoImage"].ToString();
                    }
                }
            }
            if (Request.QueryString["editcourse"] != null)
            {
                string query = string.Empty;
                videoName = Request.Form["name"].ToString();
                //videoLocation = Path.GetFileName(fileUpload2.PostedFile.FileName);
                videoCategory = Request.Form["cat"].ToString();
                videoRewards = Request.Form["amount"].ToString();
                videoDescription = Request.Form["desc"].ToString();
                youtubeid = Request.Form["youtubeid"].ToString();
                //videoImage = Path.GetFileName(fileUpload1.PostedFile.FileName);
                //if (videoLocation == "" && videoImage == "")
                //{
                //    query = "UPDATE Videos SET videoName='" + videoName + "',videoCategory='" + videoCategory + "',videoRewards='" + videoRewards + "',videoDescription='" + videoDescription + "'";
                //}
                //else
                //{
                //    if(videoLocation == "")
                //    {
                //        query = "UPDATE Videos SET videoName='" + videoName + "',videoCategory='" + videoCategory + "',videoRewards='" + videoRewards + "',videoDescription='" + videoDescription + "',videoImage='"+videoImage+"'";
                //    }
                //    else
                //    {
                //        if (videoImage == "")
                //        {
                //            query = "UPDATE Videos SET videoName='" + videoName + "',videoCategory='" + videoCategory + "',videoRewards='" + videoRewards + "',videoDescription='" + videoDescription + "',videoLocation='"+videoLocation+"'";
                //        }
                //        else
                //        {
                //            query = "UPDATE Videos SET videoName='" + videoName + "',videoCategory='" + videoCategory + "',videoRewards='" + videoRewards + "',videoDescription='" + videoDescription + "',videoLocation='"+videoLocation+"',videoImage='"+videoImage+"'";
                //        }
                //    }
                //}
            }
        }
    }
}