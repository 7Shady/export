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
    public partial class buyer_financial_view : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        string buyerid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["ClientId"] as string) && !string.IsNullOrEmpty(Session["BuyerId"] as string))
            {
                LabelCName.Text = Session["Name"].ToString();
                LabelClientId.Text = Session["ClientId"].ToString();
                buyerid = Session["BuyerId"].ToString();

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ClientId";
                param1.Value = "";
                param1.SqlDbType = SqlDbType.VarChar;

                SqlParameter param1a = new SqlParameter();
                param1a.ParameterName = "@BuyerId";
                param1a.Value = buyerid;
                param1a.SqlDbType = SqlDbType.VarChar;

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@ModeType";
                param2.Value = "Full";
                param2.SqlDbType = SqlDbType.VarChar;

                Pdt = obj_gt_dal.FunDataTableSP("ust_rsbuyer", param1, param1a, param2);
                if (Pdt.Rows.Count != 0)
                {
                    LabelBuyerId.Text = (Pdt.Rows[0]["BuyerId"].ToString());
                    LabelBName.Text = (Pdt.Rows[0]["Name"].ToString());
                    LabelCountry.Text = (Pdt.Rows[0]["Country"].ToString());
                    LabelState.Text = (Pdt.Rows[0]["State"].ToString());
                    LabelCity.Text = (Pdt.Rows[0]["City"].ToString());
                    LabelAddress.Text = (Pdt.Rows[0]["Address_cl"].ToString());
                    LabelDescription.Text = (Pdt.Rows[0]["Description"].ToString());
                    LabelAmount.Text = (Pdt.Rows[0]["AmountofOrder"].ToString());
                    LabelSatus.Text = (Pdt.Rows[0]["Status"].ToString());

                    string attachprofilename = Pdt.Rows[0]["AttachProfileName"].ToString();
                    if (attachprofilename != "")
                    {
                        ButtonDload.CssClass = "btn btn-xs btn-success";
                        ButtonDload.Text = Pdt.Rows[0]["AttachProfileName"].ToString();
                        ButtonDload.ToolTip = "Download " + Pdt.Rows[0]["AttachProfileName"].ToString();
                    }
                    else
                    {
                        ButtonDload.CssClass = "btn btn-xs btn-link";
                        ButtonDload.Text = "Not uploded yet!";
                    }

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

    }
}