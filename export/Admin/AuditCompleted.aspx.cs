using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace export.Admin
{
    public partial class AuditCompleted : System.Web.UI.Page
    {
        GridLoadAdmin gridloadadmin_obj = new GridLoadAdmin();

        protected void Page_Load(object sender, EventArgs e)
        {
             gridloadadmin_obj.LoadGrid("ust_adminAudit", "ShortApproved", "@AuditId", GridViewASA);
        }

        protected void GridViewASA_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["AuditId"] = GridViewASA.SelectedRow.Cells[2].Text;
            Response.Redirect("AuditView.aspx");
        }
    }
}