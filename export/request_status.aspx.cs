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
        //rs
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["Name"] != null)
            {
                LoadGrid("ShortPending", GridViewCICP);
                LoadGrid("ShortApproved", GridViewCICA);
                LoadGrid("ShortDeclined", GridViewCICD);
            }
        }

        protected void GridViewCICP_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            //Accessing BoundField Column
            string creditid = GridViewCICP.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&CreditId=" + creditid);

            //Accessing TemplateField Column controls
            //string status = (GridViewCIC.SelectedRow.FindControl("LabelStatus") as Label).Text;
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

            //Accessing BoundField Column
            string creditid = GridViewDCP.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&CreditId=" + creditid);

            //Accessing TemplateField Column controls
            //string status = (GridViewCIC.SelectedRow.FindControl("LabelStatus") as Label).Text;
        }

        protected void GridViewDCA_SelectedIndexChanged(object sender, EventArgs e)
        {
            string creditid = GridViewDCA.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&CreditId=" + creditid);
        }
        protected void GridViewDCD_SelectedIndexChanged(object sender, EventArgs e)
        {
            string creditid = GridViewDCD.SelectedRow.Cells[1].Text;
            Response.Redirect("credit_insurance_view.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text + "&CreditId=" + creditid);
        }
    }
}