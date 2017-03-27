using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace export.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        gt_dal gt_dal_obj = new gt_dal();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.Page.User.Identity.IsAuthenticated && Session["RoleName"].ToString() == "Administrator")
        }
    }
}