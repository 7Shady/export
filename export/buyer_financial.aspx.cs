using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace export
{
    public partial class buyer_financial : System.Web.UI.Page
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
        
        protected void buyersubmit_Click(object sender, EventArgs e)
        {
            SqlParameter param1 = obj_gt_dal.SqlParam("@BuyerId", obj_gt_dal.Get8Digits("BR"), SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter param3 = obj_gt_dal.SqlParam("@Name", TextBoxBname.Text, SqlDbType.VarChar);
            SqlParameter param4 = obj_gt_dal.SqlParam("@Country", DropDownCountry.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param5 = obj_gt_dal.SqlParam("@State", DropDownListState.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param6 = obj_gt_dal.SqlParam("@City", TextBoxCity.Text, SqlDbType.VarChar);
            SqlParameter param7 = obj_gt_dal.SqlParam("@Address_cl", TextBoxAddress.Text, SqlDbType.VarChar);
            SqlParameter param8 = obj_gt_dal.SqlParam("@Description", TextBoxDec.Text, SqlDbType.VarChar);
            SqlParameter param9 = obj_gt_dal.SqlParam("@AmountofOrder", TextBoxAmount.Text, SqlDbType.VarChar);
            SqlParameter param10 = obj_gt_dal.SqlParam("@AttachedFile", DBNull.Value, SqlDbType.VarBinary);
            SqlParameter param11 = obj_gt_dal.SqlParam("@AttachProfileName", DBNull.Value, SqlDbType.VarChar);
            SqlParameter param12 = obj_gt_dal.SqlParam("@AttachProfileContentType", DBNull.Value, SqlDbType.VarChar);            


            string filePath = uploadpanlegal_second.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);

            if (ext == ".doc" || ext == ".docx" || ext == ".xls" || ext == ".xlsx" || ext == ".pdf")
            {
                param10 = obj_gt_dal.SqlParam("@AttachedFile", obj_gt_dal.Doc2ByteArray(uploadpanlegal_second), SqlDbType.VarBinary);
                param11 = obj_gt_dal.SqlParam("@AttachProfileName", uploadpanlegal_second.PostedFile.FileName, SqlDbType.VarChar);
                param12 = obj_gt_dal.SqlParam("@AttachProfileContentType", obj_gt_dal.doctype(uploadpanlegal_second), SqlDbType.VarChar);
            }

            int ab = obj_gt_dal.FunExecuteNonQuerySP("ust_buyerfinancial", param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12);
            if (ab > 0)
            {
                Response.Write("<script>alert('Buyer added successfully!');</script>");
                panelbuyer.Visible = false;
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