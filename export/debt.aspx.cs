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
    public partial class debt : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        string clientid = "";
        string clientname = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["ClientId"] as string) && !string.IsNullOrEmpty(Session["Name"] as string))
            {
                clientid = Session["ClientId"].ToString();
                LabelClientId.Text = clientid;
                clientname = Session["Name"].ToString();
                LabelName.Text = clientname;
            }
        }

        protected void debtsubmit_Click(object sender, EventArgs e)
        {
            SqlParameter param1 = obj_gt_dal.SqlParam("@DebtId", obj_gt_dal.Get8Digits("DT"), SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter param3 = obj_gt_dal.SqlParam("@CompanyName", TextBoxCname.Text, SqlDbType.VarChar);
            SqlParameter param4 = obj_gt_dal.SqlParam("@CompanyNameO", TextBoxCnameO.Text, SqlDbType.VarChar);
            SqlParameter param5 = obj_gt_dal.SqlParam("@Country", DropDownCountry.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param6 = obj_gt_dal.SqlParam("@State", DropDownState.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param7 = obj_gt_dal.SqlParam("@City", TextBoxCity.Text, SqlDbType.VarChar);
            SqlParameter param8 = obj_gt_dal.SqlParam("@Address_cl", TextBoxAddress.Text, SqlDbType.VarChar);
            SqlParameter param9 = obj_gt_dal.SqlParam("@CompanyPerson", TextBoxCperson.Text, SqlDbType.VarChar);
            SqlParameter param10 = obj_gt_dal.SqlParam("@Position", TextBoxPosition.Text, SqlDbType.VarChar);
            SqlParameter param11 = obj_gt_dal.SqlParam("@Telno", TextBoxTel.Text, SqlDbType.VarChar);
            SqlParameter param12 = obj_gt_dal.SqlParam("@Faxno", TextBoxFax.Text, SqlDbType.VarChar);
            SqlParameter param13 = obj_gt_dal.SqlParam("@Email", TextBoxEmail.Text, SqlDbType.VarChar);
            SqlParameter param14 = obj_gt_dal.SqlParam("@Website", TextBoxWeb.Text, SqlDbType.VarChar);
            SqlParameter param15 = obj_gt_dal.SqlParam("@CompanyNameD", TextBoxDname.Text, SqlDbType.VarChar);
            SqlParameter param16 = obj_gt_dal.SqlParam("@Registration", TextBoxReg.Text, SqlDbType.VarChar);
            SqlParameter param17 = obj_gt_dal.SqlParam("@CountryD", DropDownCountryD.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param18 = obj_gt_dal.SqlParam("@StateD", DropDownStateD.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param19 = obj_gt_dal.SqlParam("@CityD", TextBoxCityD.Text, SqlDbType.VarChar);
            SqlParameter param20 = obj_gt_dal.SqlParam("@Address_clD", TextBoxAddressD.Text, SqlDbType.VarChar);
            SqlParameter param21 = obj_gt_dal.SqlParam("@PersonD", TextBoxpersonD.Text, SqlDbType.VarChar);
            SqlParameter param22 = obj_gt_dal.SqlParam("@PositionD", TextBoxPositionD.Text, SqlDbType.VarChar);
            SqlParameter param23 = obj_gt_dal.SqlParam("@TelnoD", TextBoxFaxD.Text, SqlDbType.VarChar);
            SqlParameter param24 = obj_gt_dal.SqlParam("@FaxnoD", TextBoxFax.Text, SqlDbType.VarChar);
            SqlParameter param25 = obj_gt_dal.SqlParam("@EmailD", TextBoxEmailD.Text, SqlDbType.VarChar);
            SqlParameter param26 = obj_gt_dal.SqlParam("@WebsiteD", TextBoxWebD.Text, SqlDbType.VarChar);
            SqlParameter param27 = obj_gt_dal.SqlParam("@ContactD", TextBoxContactD.Text, SqlDbType.VarChar);
            SqlParameter param28 = obj_gt_dal.SqlParam("@Currency", TextBoxCurrency.Text, SqlDbType.VarChar);
            SqlParameter param29 = obj_gt_dal.SqlParam("@Total", TextBoxTotal.Text, SqlDbType.VarChar);
            SqlParameter param30 = obj_gt_dal.SqlParam("@Reason", TextBoxReason.Text, SqlDbType.VarChar);
            SqlParameter param31 = obj_gt_dal.SqlParam("@AnyD", DropDownany.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param32 = obj_gt_dal.SqlParam("@CaseD", DropDowncase.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param33 = obj_gt_dal.SqlParam("@Debtor", DropDownListdebtor.SelectedItem.ToString(), SqlDbType.VarChar);
            SqlParameter param34 = obj_gt_dal.SqlParam("@Rate", TextBoxrate.Text, SqlDbType.VarChar);
            SqlParameter param35 = obj_gt_dal.SqlParam("@FileD", TextBoxfile.Text, SqlDbType.VarChar);
            SqlParameter param36 = obj_gt_dal.SqlParam("@EffectiveDate", txtstartdate.Text, SqlDbType.VarChar);
            SqlParameter param37 = obj_gt_dal.SqlParam("@Reasonnonpayment", TextBoxReasonnon.Text, SqlDbType.VarChar);
            SqlParameter param38 = obj_gt_dal.SqlParam("@NamePosition", TextBoxNameP.Text, SqlDbType.VarChar);
            SqlParameter param39 = obj_gt_dal.SqlParam("@Date", txtstartdatee.Text, SqlDbType.VarChar);
            SqlParameter param40 = obj_gt_dal.SqlParam("@AttachedFile", DBNull.Value, SqlDbType.VarBinary);
            SqlParameter param41 = obj_gt_dal.SqlParam("@AttachProfileName", DBNull.Value, SqlDbType.VarChar);
            SqlParameter param42 = obj_gt_dal.SqlParam("@AttachProfileContentType", DBNull.Value, SqlDbType.VarChar);
            SqlParameter param43 = obj_gt_dal.SqlParam("@IpAddress", obj_gt_dal.GetUserIpAddress(), SqlDbType.VarChar);

            string filePath = uploadpanlegal_second.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);

            if (ext == ".doc" || ext == ".docx" || ext == ".xls" || ext == ".xlsx" || ext == ".pdf")
            {
                param15 = obj_gt_dal.SqlParam("@AttachedFile", obj_gt_dal.Doc2ByteArray(uploadpanlegal_second), SqlDbType.VarBinary);
                param16 = obj_gt_dal.SqlParam("@AttachProfileName", uploadpanlegal_second.PostedFile.FileName, SqlDbType.VarChar);
                param17 = obj_gt_dal.SqlParam("@AttachProfileContentType", obj_gt_dal.DocType(uploadpanlegal_second), SqlDbType.VarChar);
            }

           
            int ab = obj_gt_dal.FunExecuteNonQuerySP("ust_debtt", param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20, param21, param22, param23, param24, param25, param26, param27, param28, param29, param30, param31, param32, param33, param34, param35, param36, param37, param38, param39, param40, param41, param42, param43);
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
            Response.Redirect("debt.aspx");
        }
    }
}