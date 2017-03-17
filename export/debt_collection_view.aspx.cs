using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace export
{
    public partial class debt_collection_table : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        string debtid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["DebtId"] != null)
            {
                LabelName.Text = Request.QueryString["Name"];
                LabelClientId.Text = Request.QueryString["ClientId"];
                debtid = Request.QueryString["DebtId"];

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ClientId";
                param1.Value = "";
                param1.SqlDbType = SqlDbType.VarChar;

                SqlParameter param1a = new SqlParameter();
                param1a.ParameterName = "@DebtId";
                param1a.Value = debtid;
                param1a.SqlDbType = SqlDbType.VarChar;

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@ModeType";
                param2.Value = "Full";
                param2.SqlDbType = SqlDbType.VarChar;

                Pdt = obj_gt_dal.FunDataTableSP("ust_rsdebt", param1, param1a, param2);
                if (Pdt.Rows.Count != 0)
                {
                    LabelDebtId.Text = (Pdt.Rows[0]["DebtId"].ToString());
                    LabelBName.Text = (Pdt.Rows[0]["Name"].ToString());
                    LabelCountry.Text = (Pdt.Rows[0]["Country"].ToString());
                    LabelState.Text = (Pdt.Rows[0]["State"].ToString());
                    LabelCity.Text = (Pdt.Rows[0]["City"].ToString());
                    LabelAddress.Text = (Pdt.Rows[0]["Address_cl"].ToString());
                    LabelDescription.Text = (Pdt.Rows[0]["Description"].ToString());
                    LabelConsig.Text = (Pdt.Rows[0]["ValueofConsignment"].ToString());
                    LabelDelivery.Text = (Pdt.Rows[0]["TermsofDelivery"].ToString());
                    LabelPayment.Text = (Pdt.Rows[0]["TermsofPayment"].ToString());
                    LabelDeliveryDone.Text = (Pdt.Rows[0]["DeliveryDone"].ToString());
                    LabelPaymentDue.Text = (Pdt.Rows[0]["PaymentDate"].ToString());
                    LabelRemarks.Text = (Pdt.Rows[0]["Remarks"].ToString());

                }


            }
        }
        private void download(DataTable dt)
        {
            Byte[] bytes = (Byte[])dt.Rows[0]["AttachedFile"];
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = dt.Rows[0]["AttachProfileContentType"].ToString();
            Response.AddHeader("content-disposition", "attachment;filename="
            + dt.Rows[0]["AttachProfileName"].ToString());
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

        protected void ButtonDload_Click(object sender, EventArgs e)
        {
            //DataTable dt = gt_dal_obj.FunDataTable("exec ust_selectattachprofile " + clientid + "");
            if (Pdt.Rows[0]["AttachedFile"] != DBNull.Value)
            {
                download(Pdt);
            }
        }


    }
}