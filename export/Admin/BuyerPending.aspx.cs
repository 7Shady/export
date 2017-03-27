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
    public partial class BuyerPending : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();

        public void LoadGrid(string spname, string modetype, string parametrname, GridView Grid)
        {
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
            LoadGrid("ust_adminbuyer", "ShortPending", "@BuyerId", GridViewBFP);
        }

        protected void GridViewBFP_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["BuyerId"] = GridViewBFP.SelectedRow.Cells[2].Text;
            Response.Redirect("BuyerView.aspx");
        }
    }
}