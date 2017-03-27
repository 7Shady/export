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
    public partial class DebtDeclined : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        string clientid = "";

        public void LoadGrid(string spname, string modetype, string parametrname, GridView Grid)
        {
            clientid = Session["ClientId"].ToString();
            //LabelClientId.Text = clientid;
            //LabelName.Text = Session["Name"].ToString();

            SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam(parametrname, "", SqlDbType.VarChar);
            SqlParameter param3 = obj_gt_dal.SqlParam("@ModeType", modetype, SqlDbType.VarChar);

            DataTable sdt = obj_gt_dal.FunDataTableSP(spname, param2, param3);
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

                LoadGrid("ust_admindebt", "ShortDeclined", "@DebtId", GridViewDCD);

            }
        }
        protected void GridViewDCD_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["DebtId"] = GridViewDCD.SelectedRow.Cells[2].Text;
            Response.Redirect("DebtView.aspx");
        }
    }
}