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

namespace export
{
    public partial class request_status : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        string clientid = "";        

        public void LoadGrid(string spname, string modetype, string parametrname, GridView Grid)
        {
            clientid = Session["ClientId"].ToString();
            LabelClientId.Text = clientid;
            LabelName.Text = Session["Name"].ToString();

            SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam(parametrname, "", SqlDbType.VarChar);
            SqlParameter param3 = obj_gt_dal.SqlParam("@ModeType", modetype, SqlDbType.VarChar);

            DataTable sdt = obj_gt_dal.FunDataTableSP(spname, param1, param2, param3);
            if (sdt.Rows.Count != 0)
            {
                Grid.DataSource = sdt;
                Grid.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["ClientId"] as string) && !string.IsNullOrEmpty(Session["Name"] as string))
            {
                LoadGrid("ust_rscredit", "ShortPending" , "@CreditId", GridViewCICP);
                LoadGrid("ust_rscredit", "ShortApproved", "@CreditId", GridViewCICA);
                LoadGrid("ust_rscredit", "ShortDeclined", "@CreditId", GridViewCICD);

                LoadGrid("ust_rsaudit", "ShortPending", "@AuditId", GridViewASP);
                LoadGrid("ust_rsaudit", "ShortApproved", "@AuditId", GridViewASA);
                LoadGrid("ust_rsaudit", "ShortDeclined", "@AuditId", GridViewASD);

                LoadGrid("ust_rsbuyer", "ShortPending", "@BuyerId", GridViewBFP);
                LoadGrid("ust_rsbuyer", "ShortApproved", "@BuyerId", GridViewBFA);
                LoadGrid("ust_rsbuyer", "ShortDeclined", "@BuyerId", GridViewBFD);

                LoadGrid("ust_rsdebt", "ShortPending", "@DebtId", GridViewDCP);
                LoadGrid("ust_rsdebt", "ShortApproved", "@DebtId", GridViewDCA);
                LoadGrid("ust_rsdebt", "ShortDeclined", "@DebtId", GridViewDCD);
            }
        }

        //Buyer Collection  GridViewBFP
        protected void GridViewBFP_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["BuyerId"] = GridViewBFP.SelectedRow.Cells[1].Text;
            Response.Redirect("buyer_financial_view.aspx");
        }
        protected void GridViewBFA_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["BuyerId"] = GridViewBFA.SelectedRow.Cells[1].Text;
            Response.Redirect("buyer_financial_view.aspx");
        }
        protected void GridViewBFD_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["BuyerId"] = GridViewBFD.SelectedRow.Cells[1].Text;
            Response.Redirect("buyer_financial_view.aspx");
        }

        //Credit Collection  GridViewCICP
        protected void GridViewCICP_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CreditId"] = GridViewCICP.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx");
        }
        protected void GridViewCICA_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CreditId"] = GridViewCICA.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx");
        }
        protected void GridViewCICD_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CreditId"] = GridViewCICD.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx");
        }

        //Debt Collection  GridViewDCP
        protected void GridViewDCP_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["DebtId"] = GridViewDCP.SelectedRow.Cells[1].Text;
            Response.Redirect("debt_collection_view.aspx");
        }
        protected void GridViewDCA_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["DebtId"] = GridViewDCA.SelectedRow.Cells[1].Text;
            Response.Redirect("debt_collection_view.aspx");
        }
        protected void GridViewDCD_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["DebtId"] = GridViewDCD.SelectedRow.Cells[1].Text;
            Response.Redirect("debt_collection_view.aspx");
        }

        //Audit Structuing  GridViewASP
        protected void GridViewASP_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["AuditId"] = GridViewASP.SelectedRow.Cells[1].Text;
            Response.Redirect("audit_structuring_view.aspx");
        }
        protected void GridViewASA_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["AuditId"] = GridViewASA.SelectedRow.Cells[1].Text;
            Response.Redirect("audit_structuring_view.aspx");
        }
        protected void GridViewASD_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["AuditId"] = GridViewASD.SelectedRow.Cells[1].Text;
            Response.Redirect("audit_structuring_view.aspx");
        }

    }
}