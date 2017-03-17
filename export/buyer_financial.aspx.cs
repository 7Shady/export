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
            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@BuyerId";
            param1.Value = obj_gt_dal.Get8Digits("BR");
            param1.SqlDbType = SqlDbType.VarChar;

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@ClientId";
            param2.Value = clientid;
            param2.SqlDbType = SqlDbType.VarChar;

            SqlParameter param3 = new SqlParameter();
            param3.ParameterName = "@Name";
            param3.Value = TextBoxBname.Text;
            param3.SqlDbType = SqlDbType.VarChar;

            SqlParameter param4 = new SqlParameter();
            param4.ParameterName = "@Country";
            param4.Value = DropDownCountry.SelectedItem.ToString();
            param4.SqlDbType = SqlDbType.VarChar;

            SqlParameter param5 = new SqlParameter();
            param5.ParameterName = "@State";
            param5.Value = DropDownListState.SelectedItem.ToString();
            param5.SqlDbType = SqlDbType.VarChar;

            SqlParameter param6 = new SqlParameter();
            param6.ParameterName = "@City";
            param6.Value = TextBoxCity.Text;
            param6.SqlDbType = SqlDbType.VarChar;

            SqlParameter param7 = new SqlParameter();
            param7.ParameterName = "@Address_cl";
            param7.Value = TextBoxAddress.Text;
            param7.SqlDbType = SqlDbType.VarChar;

            SqlParameter param8 = new SqlParameter();
            param8.ParameterName = "@Description";
            param8.Value = TextBoxDec.Text;
            param8.SqlDbType = SqlDbType.VarChar;


            SqlParameter param9 = new SqlParameter();
            param9.ParameterName = "@AmountofOrder";
            param9.Value = TextBoxAmount.Text;
            param9.SqlDbType = SqlDbType.VarChar;

            SqlParameter param10 = new SqlParameter();
            param10.ParameterName = "@AttachedFile";
            param10.SqlDbType = SqlDbType.VarBinary;

            SqlParameter param11 = new SqlParameter();
            param11.ParameterName = "@AttachProfileName";
            param11.SqlDbType = SqlDbType.VarChar;

            SqlParameter param12 = new SqlParameter();
            param12.ParameterName = "@AttachProfileContentType";
            param12.SqlDbType = SqlDbType.VarChar;

            string filePath = uploadpanlegal_second.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);

            if (ext == ".doc" || ext == ".docx" || ext == ".xls" || ext == ".xlsx" || ext == ".pdf")
            {
                param10.Value = obj_gt_dal.Doc2ByteArray(uploadpanlegal_second);
                param11.Value = uploadpanlegal_second.PostedFile.FileName;
                param12.Value = obj_gt_dal.doctype(uploadpanlegal_second);
            }
            else
            {
                param10.Value = DBNull.Value;
                param11.Value = DBNull.Value;
                param12.Value = DBNull.Value;
            }

            int ab = obj_gt_dal.FunExecuteNonQuerySP("ust_buyerfinancial", param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12);
            if (ab > 0)
            {
                Response.Write("<script>alert('Buyer added successfully!');</script>");
                panelbuyer.Visible = false;
                ButtonAddMorei.Visible = true;
            }
        }

        protected void ButtonAddMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyer_financial.aspx?ClientId=" + clientid + "&Name=" + clientname);
        }

    }
}