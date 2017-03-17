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
using System.Security.Cryptography;

namespace export
{
    public partial class debt_collection : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        string clientid = "";
        string clientname = "";        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["Name"] != null)
            {
                clientid = Request.QueryString["ClientId"];
                LabelClientId.Text = clientid;
                clientname = Request.QueryString["Name"];
                LabelName.Text = clientname;
            }
        }

        protected void debtsubmit_Click(object sender, EventArgs e)
        {
           
            SqlParameter param1 = obj_gt_dal.SqlParam("@DebtId", obj_gt_dal.Get8Digits("DT"), SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter param3 = obj_gt_dal.SqlParam("@Name", TextBoxBname.Text, SqlDbType.VarChar);
            SqlParameter param4 = obj_gt_dal.SqlParam("@Country", DropDownCountry.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param5 = obj_gt_dal.SqlParam("@State", DropDownState.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param6 = obj_gt_dal.SqlParam("@City", TextBoxCity.Text, SqlDbType.VarChar);            
            SqlParameter param7 = obj_gt_dal.SqlParam("@Address_cl", TextBoxAddress.Text, SqlDbType.VarChar);
            SqlParameter param8 = obj_gt_dal.SqlParam("@Description", TextBoxDec.Text, SqlDbType.VarChar);
            SqlParameter param9 = obj_gt_dal.SqlParam("@ValueofConsignment", TextBoxConsig.Text, SqlDbType.VarChar);
            SqlParameter param10 = obj_gt_dal.SqlParam("@TermsofDelivery", TextBoxDeli.Text, SqlDbType.VarChar);
            SqlParameter param11 = obj_gt_dal.SqlParam("@TermsofPayment", TextBoxPay.Text, SqlDbType.VarChar);
            SqlParameter param12 = obj_gt_dal.SqlParam("@DeliveryDone", TextBoxDone.Text, SqlDbType.VarChar);
            SqlParameter param13 = obj_gt_dal.SqlParam("@PaymentDate", txtstartdate.Text, SqlDbType.VarChar);

            SqlParameter param14 = obj_gt_dal.SqlParam("@Remarks", TextBoxRemarks.Text, SqlDbType.VarChar);
            SqlParameter param15 = obj_gt_dal.SqlParam("@AttachedFile", DBNull.Value, SqlDbType.VarBinary);
            SqlParameter param16 = obj_gt_dal.SqlParam("@AttachProfileName", DBNull.Value, SqlDbType.VarChar);
            SqlParameter param17 = obj_gt_dal.SqlParam("@AttachProfileContentType", DBNull.Value, SqlDbType.VarChar);
            SqlParameter param18 = obj_gt_dal.SqlParam("@IpAddress", obj_gt_dal.GetUserIpAddress(), SqlDbType.VarChar);

            string filePath = uploadpanlegal_second.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);

            if (ext == ".doc" || ext == ".docx" || ext == ".xls" || ext == ".xlsx" || ext == ".pdf")
            {
                param15 = obj_gt_dal.SqlParam("@AttachedFile", obj_gt_dal.Doc2ByteArray(uploadpanlegal_second), SqlDbType.VarBinary);
                param16 = obj_gt_dal.SqlParam("@AttachProfileName", uploadpanlegal_second.PostedFile.FileName, SqlDbType.VarChar);
                param17 = obj_gt_dal.SqlParam("@AttachProfileContentType", obj_gt_dal.doctype(uploadpanlegal_second), SqlDbType.VarChar);
            }

            int ab = obj_gt_dal.FunExecuteNonQuerySP("ust_debt", param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18);
            if (ab > 0)
            {
                Response.Write("<script>alert('Audit added successfully!');</script>");
                panelaudit.Visible = false;
                ButtonAddMorei.Visible = true;
            }
            else Response.Write("<script>alert('I afaid something went wrong! Please try again.');</script>");

        }
        protected void ButtonAddMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyer_financial.aspx?ClientId=" + clientid + "&Name=" + clientname);
        }
    }
}