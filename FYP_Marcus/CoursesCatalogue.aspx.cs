using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_Marcus
{
    public partial class CoursesCatalogue : System.Web.UI.Page
    {
        public string websec = string.Empty;
        public string datsec = string.Empty;
        public string netsec = string.Empty;
        public string mobsec = string.Empty;
        public string crypt = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            websec = connectdata.getWebSecurity();
            datsec = connectdata.getDatabaseSecurity();
            netsec = connectdata.getnetworkSecurity();
            mobsec = connectdata.getMobileSecurity();
            crypt = connectdata.getCryptography();
        }
    }
}