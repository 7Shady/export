using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
using System.Web.Security;
using System.Web.UI.HtmlControls;

namespace export.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        gt_dal gt_dal_obj = new gt_dal();

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (this.Page.User.Identity.IsAuthenticated)
            //{
            //    FormsAuthentication.SignOut();
            //    Response.Redirect("~/login.aspx");
            //}
        }

        protected void submit_Click(object sender, EventArgs e)
        {
        }
    }
}