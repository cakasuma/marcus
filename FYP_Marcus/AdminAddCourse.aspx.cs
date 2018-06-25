using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class AdminAddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["addcourse"] != null)
            {
                string name = Request.Form["name"];
                string category = Request.Form["cat"];
                string amount = Request.Form["amount"];
                string desc = Request.Form["desc"];

                var path = Path.Combine(Server.MapPath("~/Videos"));
                string pathString = System.IO.Path.Combine(path.ToString());
                bool isExists = System.IO.Directory.Exists(pathString);
                if (!isExists) System.IO.Directory.CreateDirectory(pathString);
                string filename = Path.GetFileName(fileUpload1.PostedFile.FileName);
                string filename2 = Path.GetFileName(fileUpload2.PostedFile.FileName);
                var uploadpath = string.Format("{0}\\{1}", pathString, filename);
                var uploadpath2 = string.Format("{0}\\{1}", pathString, filename2);
                fileUpload1.PostedFile.SaveAs(uploadpath);
                fileUpload2.PostedFile.SaveAs(uploadpath2);
                string query = "INSERT INTO Videos (videoLocation, videoName, videoCategory, videoRewards, videoDescription, videoImage) VALUES ('" + filename2 + "','" + name + "','" + category + "', " + amount + ", '" + desc + "', '"+filename+"')";
                connectdata.executeQuery(query);
                Response.Redirect("AdminAddCourse.aspx");
            }
        }
    }
}