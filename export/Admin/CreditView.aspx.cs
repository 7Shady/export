﻿using System;
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
    public partial class CreditView : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        string creditid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!string.IsNullOrEmpty(Session["CreditId"] as string))
            {
                //LabelCName.Text = Session["Name"].ToString();
                //LabelClientId.Text = Session["ClientId"].ToString();
                creditid = Session["CreditId"].ToString();                

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
                    LabelClientId.Text = (Pdt.Rows[0]["ClientId"].ToString());
                    LabelCName.Text= (Pdt.Rows[0]["ClientNameReg"].ToString());
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
                    LabelSatus.Text = (Pdt.Rows[0]["Status"].ToString());

                    switch (LabelSatus.Text)
                    {
                        case "Pending":
                            LabelSatus.CssClass = "btn btn-info btn-xs";
                            break;
                        case "Approved":
                            LabelSatus.CssClass = "btn btn-xs btn-success";
                            break;
                        case "Declined":
                            LabelSatus.CssClass = "btn btn-xs btn-danger";
                            break;
                    }
                }
            }
        }

        protected void ButtonDload_Click(object sender, EventArgs e)
        {
            if (Pdt.Rows[0]["AttachedFile"] != DBNull.Value)
            {
                obj_gt_dal.DocDownload(Pdt, "AttachedFile", "AttachProfileContentType", "AttachProfileName");
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            DropDownStatus.Visible = true;
            DropDownStatus.SelectedValue = DropDownStatus.Items.FindByText(LabelSatus.Text).Value;
            LabelSatus.Visible = false;
            edit.Visible = false;
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlParameter param1 = obj_gt_dal.SqlParam("@CreditId", creditid, SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam("@Status", DropDownStatus.SelectedValue.ToString(), SqlDbType.VarChar);

            int CheckSuc = obj_gt_dal.FunExecuteNonQuerySP("ust_creditstatus", param1, param2);

            if (CheckSuc > 0)
            {
                Response.Write("<script>alert('Profile updated successfully!');</script>");
            }
            else Response.Write("<script>alert('I afaid something went wrong! Please try again.');</script>");
        }

       
    }
}