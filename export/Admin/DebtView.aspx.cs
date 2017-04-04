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
    public partial class DebtView : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        string debtid = string.Empty;

        public void ExeOnPageLoad()
        {
            if (!string.IsNullOrEmpty(Session["DebtId"] as string))
            {
                debtid = Session["DebtId"].ToString();

                SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", "", SqlDbType.VarChar);
                SqlParameter param2 = obj_gt_dal.SqlParam("@DebtId", debtid, SqlDbType.VarChar);
                SqlParameter param3 = obj_gt_dal.SqlParam("@ModeType", "Full", SqlDbType.VarChar);

                Pdt = obj_gt_dal.FunDataTableSP("ust_rsdebt", param1, param2, param3);
                if (Pdt.Rows.Count != 0)
                {
                    LabelClientId.Text = (Pdt.Rows[0]["ClientId"].ToString());
                    LabelCName.Text = (Pdt.Rows[0]["ClientNameReg"].ToString());
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

        protected void Page_Load(object sender, EventArgs e)
        {
            ExeOnPageLoad();
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
            if (LabelSatus.Text == "Declined") LabelSatus.Text = "Rejected";
            DropDownStatus.SelectedValue = DropDownStatus.Items.FindByText(LabelSatus.Text).Value;
            LabelSatus.Visible = false;
            edit.Visible = false;
            Update.Enabled = true;
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlParameter param1 = obj_gt_dal.SqlParam("@DebtId", debtid, SqlDbType.VarChar);
            string status = DropDownStatus.SelectedValue.ToString();
            if (DropDownStatus.SelectedValue.ToString() == "Rejected") status = "Declined";
            SqlParameter param2 = obj_gt_dal.SqlParam("@Status", status, SqlDbType.VarChar);

            int CheckSuc = obj_gt_dal.FunExecuteNonQuerySP("ust_debtstatus", param1, param2);

            if (CheckSuc > 0)
            {
                ExeOnPageLoad();
                DropDownStatus.Visible = false;
                LabelSatus.Visible = true;
                edit.Visible = true;
                Update.Enabled = false;
                Response.Write("<script>alert('Profile updated successfully!');</script>");
            }
            else Response.Write("<script>alert('Something went wrong! Please try again.');</script>");
        }

    }
}