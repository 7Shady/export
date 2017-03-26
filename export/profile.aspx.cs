using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Security.Cryptography;
using System.Data.SqlTypes;
using System.Web.Security;

namespace export
{
    public partial class profile : System.Web.UI.Page
    {
        gt_dal gt_dal_obj = new gt_dal();
        string clientid = string.Empty;
        DataTable Pdt = new DataTable();

        public void BindOnPageLoad()
        {
            SqlParameter Uid = gt_dal_obj.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter Uname = gt_dal_obj.SqlParam("@UserName", "", SqlDbType.VarChar);
            SqlParameter Qmode = gt_dal_obj.SqlParam("@ModeType", "Full", SqlDbType.VarChar);
            Pdt = gt_dal_obj.FunDataTableSP("ust_selectprofile", Uid, Uname, Qmode);

            if (Pdt.Rows.Count != 0)
            {
                TextBoxCname.Text = (Pdt.Rows[0]["Name"].ToString());
                TextBoxCom.Text = (Pdt.Rows[0]["CompanyName"].ToString());
                TextBoxCin.Text = (Pdt.Rows[0]["InCorporation"].ToString());
                DropDownCompany.SelectedItem.Text = (Pdt.Rows[0]["CompanyType"].ToString());
                DropDownIndustry.SelectedItem.Text = (Pdt.Rows[0]["Industry"].ToString());
                TextBoxAddress.Text = (Pdt.Rows[0]["Address_cl"].ToString());
                DropDownCountry.SelectedItem.Text = (Pdt.Rows[0]["Country"].ToString());
                DropDownCity.SelectedItem.Text = (Pdt.Rows[0]["City"].ToString());
                TextBoxZipCode.Text = (Pdt.Rows[0]["Zipcode"].ToString());
                TextBoxWeb.Text = (Pdt.Rows[0]["Website"].ToString());
                TextBoxMob.Text = (Pdt.Rows[0]["ContactNo"].ToString());
                TextBoxEmail.Text = (Pdt.Rows[0]["Email"].ToString());
                TextBoxDesig.Text = (Pdt.Rows[0]["Designation"].ToString());
                TextBoxoper.Text = (Pdt.Rows[0]["CountryOperation"].ToString());
                TextBoxturn.Text = (Pdt.Rows[0]["BusinessTournOver"].ToString());
                TextBoxBrief.Text = (Pdt.Rows[0]["BriefOperations"].ToString());
                TextBoxEmp.Text = (Pdt.Rows[0]["NoofEmployees"].ToString());
                if (Pdt.Rows[0]["AttachedFile"] != DBNull.Value) { previewImage.ImageUrl = "ViewImage.ashx?ClientId=" + Server.UrlEncode(clientid); }
                else { previewImage.ImageUrl = "~/images/adduser.png"; }
                if (Pdt.Rows[0]["AttachProfileName"].ToString() != "")
                {
                    ButtonDownload.CssClass = "btn btn-xs btn-success";
                    ButtonDownload.Text = Pdt.Rows[0]["AttachProfileName"].ToString();
                    ButtonDownload.ToolTip = "Download " + Pdt.Rows[0]["AttachProfileName"].ToString();
                }
                else
                {
                    ButtonDownload.CssClass = "btn btn-xs btn-danger";
                    ButtonDownload.Text = "Not found!";
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!string.IsNullOrEmpty(Session["ClientId"] as string))
                {
                    clientid = Session["ClientId"].ToString();
                    if (!IsPostBack)
                    {
                        BindOnPageLoad();
                        if ((Pdt.Rows[0]["ContactNo"].ToString()) == "")
                        {
                            Response.Write("<script>alert('Please update mobile number!');</script>");
                            this.TextBoxMob.Focus();
                        }
                    }
                }
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            string isimage = "False";
            string isdoc = "False";

            SqlParameter param1 = gt_dal_obj.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter param2 = gt_dal_obj.SqlParam("@Name", TextBoxCname.Text, SqlDbType.VarChar);
            SqlParameter param3 = gt_dal_obj.SqlParam("@CompanyName", TextBoxCom.Text, SqlDbType.VarChar);
            SqlParameter param4 = gt_dal_obj.SqlParam("@InCorporation", TextBoxCin.Text, SqlDbType.VarChar);
            SqlParameter param5 = gt_dal_obj.SqlParam("@CompanyType", DropDownCompany.SelectedValue.ToString(), SqlDbType.VarChar);
            SqlParameter param6 = gt_dal_obj.SqlParam("@Industry", DropDownIndustry.SelectedValue.ToString(), SqlDbType.VarChar);

            SqlParameter param7 = gt_dal_obj.SqlParam("@Address_cl", TextBoxAddress.Text, SqlDbType.VarChar);
            SqlParameter param8 = gt_dal_obj.SqlParam("@Country", DropDownCountry.SelectedValue.ToString(), SqlDbType.VarChar);
            SqlParameter param9 = gt_dal_obj.SqlParam("@City", DropDownCity.SelectedValue.ToString(), SqlDbType.VarChar);
            SqlParameter param10 = gt_dal_obj.SqlParam("@ZipCode", TextBoxZipCode.Text, SqlDbType.VarChar);
            SqlParameter param11 = gt_dal_obj.SqlParam("@Website", TextBoxWeb.Text, SqlDbType.VarChar);
            SqlParameter param12 = gt_dal_obj.SqlParam("@ContactNo", TextBoxMob.Text, SqlDbType.VarChar);
            SqlParameter param13 = gt_dal_obj.SqlParam("@Email", TextBoxEmail.Text, SqlDbType.VarChar);

            SqlParameter param14 = gt_dal_obj.SqlParam("@Designation", TextBoxDesig.Text, SqlDbType.VarChar);
            SqlParameter param15 = gt_dal_obj.SqlParam("@CountryOperation", TextBoxoper.Text, SqlDbType.VarChar);
            SqlParameter param16 = gt_dal_obj.SqlParam("@BusinessTournOver", TextBoxturn.Text, SqlDbType.VarChar);
            SqlParameter param17 = gt_dal_obj.SqlParam("@BriefOperations", TextBoxBrief.Text, SqlDbType.VarChar);
            SqlParameter param18 = gt_dal_obj.SqlParam("@NoofEmployees", TextBoxEmp.Text, SqlDbType.VarChar);



            SqlParameter param19 = gt_dal_obj.SqlParam("@AttachedFile", DBNull.Value, SqlDbType.VarBinary);
            SqlParameter param20 = gt_dal_obj.SqlParam("@AttachProfile", DBNull.Value, SqlDbType.VarBinary);
            SqlParameter param21 = gt_dal_obj.SqlParam("@AttachProfileName", DBNull.Value, SqlDbType.VarChar);
            SqlParameter param22 = gt_dal_obj.SqlParam("@AttachProfileContentType", DBNull.Value, SqlDbType.VarChar);

            if (UpClientImg.HasFile)
            {
                isimage = "True";
                Stream ClientImgBytesStrm = UpClientImg.FileContent;
                byte[] ClientImgBytes = gt_dal_obj.image2ByteArray(System.Drawing.Image.FromStream(ClientImgBytesStrm));
                param19 = gt_dal_obj.SqlParam("@AttachedFile", ClientImgBytes, SqlDbType.VarBinary);
            }

            if (UpClientDoc.HasFile)
            {
                isdoc = "True";
                string filePath = UpClientDoc.PostedFile.FileName;
                string filename = Path.GetFileName(filePath);
                string ext = Path.GetExtension(filename);
                if (ext == ".doc" || ext == ".docx" || ext == ".xls" || ext == ".xlsx" || ext == ".pdf")
                {
                    param20 = gt_dal_obj.SqlParam("@AttachProfile", gt_dal_obj.Doc2ByteArray(UpClientDoc), SqlDbType.VarBinary);
                    param21 = gt_dal_obj.SqlParam("@AttachProfileName", filename, SqlDbType.VarChar);
                    param22 = gt_dal_obj.SqlParam("@AttachProfileContentType", gt_dal_obj.DocType(UpClientDoc), SqlDbType.VarChar);
                }

            }

            SqlParameter param23 = gt_dal_obj.SqlParam("@IsImage", isimage, SqlDbType.VarChar);
            SqlParameter param24 = gt_dal_obj.SqlParam("@IsDoc", isdoc, SqlDbType.VarChar);

            if (UpClientDoc.HasFile)
            {
                string filePath0 = UpClientDoc.PostedFile.FileName;
                string filename0 = Path.GetFileName(filePath0);
                string ext0 = Path.GetExtension(filename0);
                if (ext0 == ".doc" || ext0 == ".docx" || ext0 == ".xls" || ext0 == ".xlsx" || ext0 == ".pdf")
                {

                    int CheckSuc = gt_dal_obj.FunExecuteNonQuerySP("ust_updateprofile", param1, param2, param3, param4, param5, param6, param7, param8,
                    param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20, param21,
                    param22, param23, param24);

                    if (CheckSuc > 0)
                    {
                        Response.Write("<script>alert('Profile updated successfully!');</script>");
                        BindOnPageLoad();
                    }
                    else Response.Write("<script>alert('Something went wrong! Please try again.');</script>");
                }
                else Response.Write("<script>alert('Choose (.doc,.docx,.xls,.xlsx,pdf) file only!');</script>");
            }
            else
            {
                int CheckSuc = gt_dal_obj.FunExecuteNonQuerySP("ust_updateprofile", param1, param2, param3, param4, param5, param6, param7, param8,
                   param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20, param21,
                   param22, param23, param24);

                if (CheckSuc > 0)
                {
                    Response.Write("<script>alert('Profile updated successfully!');</script>");
                    BindOnPageLoad();
                }
                else Response.Write("<script>alert('I afaid something went wrong! Please try again.');</script>");
            }
        }      

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }
        
        protected void ButtonDownload_Click(object sender, EventArgs e)
        {
            SqlParameter Uid = gt_dal_obj.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter Uemail = gt_dal_obj.SqlParam("@Email", "", SqlDbType.VarChar);
            SqlParameter Qmode = gt_dal_obj.SqlParam("@ModeType", "Doc", SqlDbType.VarChar);
            DataTable Ddt = gt_dal_obj.FunDataTableSP("ust_selectprofile ", Uid, Uemail, Qmode);

            if (Ddt.Rows[0]["AttachProfile"] != DBNull.Value)
                gt_dal_obj.DocDownload(Ddt, "AttachProfile", "AttachProfileContentType", "AttachProfileName");
            else Response.Write("<script>alert('Profile not uploaded!');</script>");
        }

        protected void ButtonCP_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }
}

                        


    