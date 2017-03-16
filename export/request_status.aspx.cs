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
        string clientid = null;
        DataTable sdt = new DataTable();
        //test fot git dfdsf

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["Name"] != null)
            {
                clientid = Request.QueryString["ClientId"];
                LabelClientId.Text = clientid;
                LabelName.Text = Request.QueryString["Name"];

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ClientId";
                param1.Value = clientid;
                param1.SqlDbType = SqlDbType.VarChar;

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@ModeType";
                param2.Value = "Short";
                param2.SqlDbType = SqlDbType.VarChar;

                string mode = "Short";
                //"exec ust_login " + Username.Text + ",'" + Password.Text + "'"
                sdt = obj_gt_dal.FunDataTableSP("exec ust_rscredit " + clientid + ",'" + mode + "'");

                //sdt = obj_gt_dal.FunDataTableSP("ust_rscredit", param1,param2 );
                if (sdt.Rows.Count != 0)
                {
                    //GridView1.DataSource = sdt;
                    //GridView1.DataBind();
                }
               

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //creditid = "ds";
           


        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
          //  Response.Redirect("credit_insurance_table.aspx?ClientId=" + clientid + "&CreditId=");
        }
    }
}