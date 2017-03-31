using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;


namespace export.Admin
{
    public partial class BuyerView : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        string buyerid = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["BuyerId"] as string))
            {
                buyerid = Session["BuyerId"].ToString();

                SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", "", SqlDbType.VarChar);
                SqlParameter param2 = obj_gt_dal.SqlParam("@BuyerId", buyerid, SqlDbType.VarChar);
                SqlParameter param3 = obj_gt_dal.SqlParam("@ModeType", "Full", SqlDbType.VarChar);

                Pdt = obj_gt_dal.FunDataTableSP("ust_rsbuyer", param1, param2, param3);
                if (Pdt.Rows.Count != 0)
                {
                    LabelClientId.Text = (Pdt.Rows[0]["ClientId"].ToString());
                    LabelCName.Text= (Pdt.Rows[0]["ClientNameReg"].ToString());
                    LabelBuyerId.Text = (Pdt.Rows[0]["BuyerId"].ToString());
                    LabelBName.Text = (Pdt.Rows[0]["Name"].ToString());
                    LabelCountry.Text = (Pdt.Rows[0]["Country"].ToString());
                    LabelState.Text = (Pdt.Rows[0]["State"].ToString());
                    LabelCity.Text = (Pdt.Rows[0]["City"].ToString());
                    LabelAddress.Text = (Pdt.Rows[0]["Address_cl"].ToString());
                    LabelDescription.Text = (Pdt.Rows[0]["Description"].ToString());
                    LabelAmount.Text = (Pdt.Rows[0]["AmountofOrder"].ToString());
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
            if (LabelSatus.Text == "Declined")
                LabelSatus.Text = "Rejected";
            DropDownStatus.SelectedValue = DropDownStatus.Items.FindByText(LabelSatus.Text).Value;
            LabelSatus.Visible = false;
            edit.Visible = false;

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlParameter param1 = obj_gt_dal.SqlParam("@BuyerId", buyerid, SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam("@Status", DropDownStatus.SelectedValue.ToString(), SqlDbType.VarChar);

            int CheckSuc = obj_gt_dal.FunExecuteNonQuerySP("ust_buyerstatus", param1, param2);

            if (CheckSuc > 0)
            {
                Response.Write("<script>alert('Profile updated successfully!');</script>");                
            }
            else Response.Write("<script>alert('I afaid something went wrong! Please try again.');</script>");
        }
    }
}