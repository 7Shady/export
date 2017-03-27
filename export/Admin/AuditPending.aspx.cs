using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Security.Cryptography;
using System.Data.SqlTypes;

namespace export.Admin
{
    public partial class AuditPending : System.Web.UI.Page
    {
        GridLoadAdmin gridloadadmin_obj = new GridLoadAdmin();

        protected void Page_Load(object sender, EventArgs e)
        {
            gridloadadmin_obj.LoadGrid("ust_adminAudit", "ShortPending", "@AuditId", GridViewASP);
        }

        protected void GridViewASP_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["AuditId"] = GridViewASP.SelectedRow.Cells[2].Text;
            Response.Redirect("AuditView.aspx");
        }
    }
}