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
    //Credit
    public partial class credit_insurance_table : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        string creditid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["CreditId"] != null)
            {
                LabelCName.Text = Request.QueryString["Name"];
                LabelClientId.Text = Request.QueryString["ClientId"];
                creditid = Request.QueryString["CreditId"];

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ClientId";
                param1.Value = "";
                param1.SqlDbType = SqlDbType.VarChar;

                SqlParameter param1a = new SqlParameter();
                param1a.ParameterName = "@CreditId";
                param1a.Value = creditid;
                param1a.SqlDbType = SqlDbType.VarChar;

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@ModeType";
                param2.Value = "Full";
                param2.SqlDbType = SqlDbType.VarChar;

                Pdt = obj_gt_dal.FunDataTableSP("ust_rscredit", param1, param1a, param2);
                if (Pdt.Rows.Count != 0)
                {
                    LabelCreditId.Text = (Pdt.Rows[0]["CreditId"].ToString());
                    LabelBName.Text = (Pdt.Rows[0]["Name"].ToString());
                    LabelCountry.Text = (Pdt.Rows[0]["Country"].ToString());
                    LabelState.Text = (Pdt.Rows[0]["State"].ToString());
                    LabelCity.Text = (Pdt.Rows[0]["City"].ToString());
                    LabelAddress.Text = (Pdt.Rows[0]["Address_cl"].ToString());
                    LabelDescription.Text = (Pdt.Rows[0]["Description"].ToString());
                    LabelConsig.Text = (Pdt.Rows[0]["ValueofConsignment"].ToString());
                    LabelDelivery.Text = (Pdt.Rows[0]["TermsofDelivery"].ToString());
                    LabelPayment.Text = (Pdt.Rows[0]["TermsofPayment"].ToString());
                }

                //"exec ust_rscredit " + clientid + ",'" + mode + "'"
                //Pdt = obj_gt_dal.FunDataTable("SELECT * FROM tblcredit WHERE CreditId=" + creditid + "");

                //if (Pdt.Rows.Count != 0)
                //{                    
                //    LabelCreditId.Text= (Pdt.Rows[0]["CreditId"].ToString());
                //    LabelBName.Text = (Pdt.Rows[0]["Name"].ToString());
                //    LabelCountry.Text = (Pdt.Rows[0]["Country"].ToString());
                //    LabelState.Text = (Pdt.Rows[0]["State"].ToString());
                //    LabelCity.Text = (Pdt.Rows[0]["City"].ToString());
                //    LabelAddress.Text = (Pdt.Rows[0]["Address_cl"].ToString());
                //    LabelDescription.Text = (Pdt.Rows[0]["Description"].ToString());
                //    LabelConsig.Text = (Pdt.Rows[0]["ValueofConsignment"].ToString());
                //    LabelDelivery.Text = (Pdt.Rows[0]["TermsofDelivery"].ToString());
                //    LabelPayment.Text = (Pdt.Rows[0]["TermsofPayment"].ToString());

                //}



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