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
    public partial class CreditCompleted : System.Web.UI.Page
    {
        GridLoadAdmin gridloadadmin_obj = new GridLoadAdmin();

        protected void Page_Load(object sender, EventArgs e)
        {
            gridloadadmin_obj.LoadGrid("ust_admincredit", "ShortApproved", "@CreditId", GridViewCICA);
        }

        protected void GridViewCICA_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CreditId"] = GridViewCICA.SelectedRow.Cells[2].Text;
            Response.Redirect("CreditView.aspx");
        }
    }
}