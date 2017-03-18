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
        DataTable sdt = new DataTable();

        //Buyer
        public void LoadGridB(string modetype, GridView Grid)
        {
            clientid = Request.QueryString["ClientId"];
            LabelClientId.Text = clientid;
            LabelName.Text = Request.QueryString["Name"];

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@ClientId";
            param1.Value = clientid;
            param1.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1a = new SqlParameter();
            param1a.ParameterName = "@BuyerId";
            param1a.Value = "";
            param1a.SqlDbType = SqlDbType.VarChar;

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@ModeType";
            param2.Value = modetype;
            param2.SqlDbType = SqlDbType.VarChar;

            sdt = obj_gt_dal.FunDataTableSP("ust_rsbuyer", param1, param1a, param2);
            if (sdt.Rows.Count != 0)
            {
                Grid.DataSource = sdt;
                Grid.DataBind();
            }
        }

        //credit
        public void LoadGrid(string modetype, GridView Grid)
        {
            clientid = Request.QueryString["ClientId"];
            LabelClientId.Text = clientid;
            LabelName.Text = Request.QueryString["Name"];

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@ClientId";
            param1.Value = clientid;
            param1.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1a = new SqlParameter();
            param1a.ParameterName = "@CreditId";
            param1a.Value = "";
            param1a.SqlDbType = SqlDbType.VarChar;

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@ModeType";
            param2.Value = modetype;
            param2.SqlDbType = SqlDbType.VarChar;

            sdt = obj_gt_dal.FunDataTableSP("ust_rscredit", param1, param1a, param2);
            if (sdt.Rows.Count != 0)
            {
                Grid.DataSource = sdt;
                Grid.DataBind();
            }
        }

        //Debt
        public void LoadGridD(string modetype, GridView Grid)
        {
            clientid = Request.QueryString["ClientId"];
            LabelClientId.Text = clientid;
            LabelName.Text = Request.QueryString["Name"];

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@ClientId";
            param1.Value = clientid;
            param1.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1a = new SqlParameter();
            param1a.ParameterName = "@DebtId";
            param1a.Value = "";
            param1a.SqlDbType = SqlDbType.VarChar;

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@ModeType";
            param2.Value = modetype;
            param2.SqlDbType = SqlDbType.VarChar;

            sdt = obj_gt_dal.FunDataTableSP("ust_rsdebt", param1, param1a, param2);
            if (sdt.Rows.Count != 0)
            {
                Grid.DataSource = sdt;
                Grid.DataBind();
            }
        }

        //Audit
        public void LoadGridA(string modetype, GridView Grid)
        {
            clientid = Request.QueryString["ClientId"];
            LabelClientId.Text = clientid;
            LabelName.Text = Request.QueryString["Name"];

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@ClientId";
            param1.Value = clientid;
            param1.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1a = new SqlParameter();
            param1a.ParameterName = "@AuditId";
            param1a.Value = "";
            param1a.SqlDbType = SqlDbType.VarChar;

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@ModeType";
            param2.Value = modetype;
            param2.SqlDbType = SqlDbType.VarChar;

            sdt = obj_gt_dal.FunDataTableSP("ust_rsaudit", param1, param1a, param2);
            if (sdt.Rows.Count != 0)
            {
                Grid.DataSource = sdt;
                Grid.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["Name"] != null)
            {
                LoadGridB("ShortPending", GridViewBFP);
                LoadGridB("ShortApproved", GridViewBFA);
                LoadGridB("ShortDeclined", GridViewBFD);

                LoadGrid("ShortPending", GridViewCICP);
                LoadGrid("ShortApproved", GridViewCICA);
                LoadGrid("ShortDeclined", GridViewCICD);

                LoadGridD("ShortPending", GridViewDCP);
                LoadGridD("ShortApproved", GridViewDCA);
                LoadGridD("ShortDeclined", GridViewDCD);


                LoadGridA("ShortPending", GridViewASP);
                LoadGridA("ShortApproved", GridViewASA);
                LoadGridA("ShortDeclined", GridViewASD);
            }
        }

        //Buyer Collection  GridViewBFP
        protected void GridViewBFP_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Accessing BoundField Column
            string buyerid = GridViewBFP.SelectedRow.Cells[1].Text;
            Response.Redirect("buyer_financial_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&BuyerId=" + buyerid);

            //Accessing TemplateField Column controls
            //string status = (GridViewCIC.SelectedRow.FindControl("LabelStatus") as Label).Text;
        }
        protected void GridViewBFA_SelectedIndexChanged(object sender, EventArgs e)
        {
            string buyerid = GridViewBFA.SelectedRow.Cells[1].Text;
            Response.Redirect("buyer_financial_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&BuyerId=" + buyerid);
        }
        protected void GridViewBFD_SelectedIndexChanged(object sender, EventArgs e)
        {
            string buyerid = GridViewBFD.SelectedRow.Cells[1].Text;
            Response.Redirect("buyer_financial_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&BuyerId=" + buyerid);
        }

        //Credit Collection  GridViewCICP
        protected void GridViewCICP_SelectedIndexChanged(object sender, EventArgs e)
        {
            string creditid = GridViewCICP.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&CreditId=" + creditid);
        }
        protected void GridViewCICA_SelectedIndexChanged(object sender, EventArgs e)
        {
            string creditid = GridViewCICA.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&CreditId=" + creditid);
        }
        protected void GridViewCICD_SelectedIndexChanged(object sender, EventArgs e)
        {
            string creditid = GridViewCICD.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&CreditId=" + creditid);
        }

        //Debt Collection  GridViewDCP
        protected void GridViewDCP_SelectedIndexChanged(object sender, EventArgs e)
        {
            string debtid = GridViewDCP.SelectedRow.Cells[1].Text;
            Response.Redirect("debt_collection_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&DebtId=" + debtid);
        }
        protected void GridViewDCA_SelectedIndexChanged(object sender, EventArgs e)
        {
            string debtid = GridViewDCA.SelectedRow.Cells[1].Text;
            Response.Redirect("debt_collection_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&DebtId=" + debtid);
        }
        protected void GridViewDCD_SelectedIndexChanged(object sender, EventArgs e)
        {
            string debtid = GridViewDCD.SelectedRow.Cells[1].Text;
            Response.Redirect("debt_collection_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&DebtId=" + debtid);
        }

        //Audit Structuing  GridViewASP
        protected void GridViewASP_SelectedIndexChanged(object sender, EventArgs e)
        {
            string auditid = GridViewASP.SelectedRow.Cells[1].Text;
            Response.Redirect("audit_structuring_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&AuditId=" + auditid);
        }
        protected void GridViewASA_SelectedIndexChanged(object sender, EventArgs e)
        {
            string auditid = GridViewASA.SelectedRow.Cells[1].Text;
            Response.Redirect("audit_structuring_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&AuditId=" + auditid);
        }
        protected void GridViewASD_SelectedIndexChanged(object sender, EventArgs e)
        {
            string auditid = GridViewDCD.SelectedRow.Cells[1].Text;
            Response.Redirect("audit_structuring_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&AuditId=" + auditid);
        }

    }
}