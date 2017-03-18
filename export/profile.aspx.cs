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
        string clientid;
        DataTable Pdt = new DataTable();

        public void BindOnPageLoad()
        {
            SqlParameter Uid = gt_dal_obj.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter Uemail = gt_dal_obj.SqlParam("@Email", "", SqlDbType.VarChar);
            SqlParameter Qmode = gt_dal_obj.SqlParam("@ModeType", "Full", SqlDbType.VarChar);
            Pdt = gt_dal_obj.FunDataTableSP("ust_selectprofile ", Uid, Uemail, Qmode);

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
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (HttpContext.Current.User.Identity.IsAuthenticated && !string.IsNullOrEmpty(Session["ClientId"] as string))
            //    if (HttpContext.Current.User.Identity.IsAuthenticated)
            //    {
            //        Label1.Text = "____";
            //        string loginuser = HttpContext.Current.User.Identity.Name;
            //        loginuser = "'" + loginuser + "'";
            //        string clientidloginuser = (gt_dal_obj.FunExecuteScalar("SELECT ClientId FROM tblClientRegistration WHERE Email=" + loginuser + "")).ToString();

            //        Label1.Text = loginuser + "__" + clientidloginuser;
            //        if (clientidloginuser == Request.QueryString["ClientId"])
            //        {
            //            clientid = Request.QueryString["ClientId"];
            //            if (!IsPostBack)
            //            {
            //                BindOnPageLoad();
            //            }
            //        }
            //        else
            //        {
            //            //Session.Clear();
            //            //Session.Abandon();
            //            //FormsAuthentication.SignOut();
            //            Label1.Text = loginuser + "__" + clientidloginuser + "__else";
            //            Response.Write("<script>alert('Please login to your account!');</script>");
            //            //FormsAuthentication.RedirectToLoginPage();
            //        }

            //}


            //if (HttpContext.Current.User.Identity.IsAuthenticated)
            //{
            //    if (!string.IsNullOrEmpty(Request.QueryString["ClientId"] as string))
            //    {
            //        clientid = Request.QueryString["ClientId"];
            //        if (!IsPostBack)
            //        {
            //            BindOnPageLoad();
            //        }
            //    }
            //}


            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!string.IsNullOrEmpty(Session["ClientId"] as string))
                {
                    clientid = Session["ClientId"].ToString();
                    if (!IsPostBack)
                    {
                        BindOnPageLoad();
                    }
                }
            }

            //else
            //{
            //    //Session.Clear();
            //    //Session.Abandon();
            //    //FormsAuthentication.SignOut();
            //    Label1.Text = loginuser + "__" + clientidloginuser + "__else";
            //    Response.Write("<script>alert('Please login to your account!');</script>");
            //    //FormsAuthentication.RedirectToLoginPage();
            //}

        }

  

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            //string filename = "";
            //byte[] ClientImgBytes = null;
            //Byte[] ClientDocBytes = null;

            //using (SqlConnection con9 = new SqlConnection(ConfigurationManager.ConnectionStrings["gt_ConStr"].ConnectionString))
            //{
            //    string atf = null;
            //    string atpf = null;
            //    if (UpClientImg.FileName != string.Empty) { atf = ",AttachedFile = @AttachedFile"; }
            //    else { atf = ""; }
            //    if (uploadFile.FileName != string.Empty)
            //    {
            //        atpf = ",AttachProfile = @AttachProfile, AttachProfileName = @AttachProfileName, AttachProfileContentType = @AttachProfileContentType";
            //        string filePath = Server.MapPath("APP_DATA/Resume.docx");
            //        filename = Path.GetFileName(filePath);

            //        FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
            //        BinaryReader br = new BinaryReader(fs);
            //        ClientDocBytes = br.ReadBytes((Int32)fs.Length);
            //        br.Close();
            //        fs.Close();
            //    }
            //    else { atpf = ""; }

            //    SqlCommand cmd9 = new SqlCommand("UPDATE tblClientRegistration SET Name=@Name, CompanyName=@CompanyName, InCorporation=@InCorporation, CompanyType=@CompanyType, Industry=@Industry," +
            //    "Address_cl = @Address_cl, Country = @Country, City = @City, ZipCode = @ZipCode, Website = @Website, ContactNo = @ContactNo," +
            //    "Email = @Email, Designation = @Designation, CountryOperation = @CountryOperation, BusinessTournOver = @BusinessTournOver, BriefOperations = @BriefOperations," +
            //    "NoofEmployees = @NoofEmployees " + atf + "" + atpf + " WHERE ClientId =@ClientId", con9);

            //    cmd9.Parameters.AddWithValue("ClientId", clientid);
            //    cmd9.Parameters.AddWithValue("Name", TextBoxCname.Text);
            //    cmd9.Parameters.AddWithValue("CompanyName", TextBoxCom.Text);
            //    cmd9.Parameters.AddWithValue("InCorporation", TextBoxCin.Text);
            //    cmd9.Parameters.AddWithValue("CompanyType", DropDownCompany.SelectedValue.ToString());
            //    cmd9.Parameters.AddWithValue("Industry", DropDownIndustry.SelectedValue.ToString());

            //    cmd9.Parameters.AddWithValue("Address_cl", TextBoxAddress.Text);
            //    cmd9.Parameters.AddWithValue("Country", DropDownCountry.SelectedValue.ToString());
            //    cmd9.Parameters.AddWithValue("City", DropDownCity.SelectedValue.ToString());
            //    cmd9.Parameters.AddWithValue("ZipCode", TextBoxZipCode.Text);
            //    cmd9.Parameters.AddWithValue("Website", TextBoxWeb.Text);
            //    cmd9.Parameters.AddWithValue("ContactNo", TextBoxMob.Text);
            //    cmd9.Parameters.AddWithValue("Email", TextBoxEmail.Text);

            //    cmd9.Parameters.AddWithValue("Designation", TextBoxDesig.Text);
            //    cmd9.Parameters.AddWithValue("CountryOperation", TextBoxoper.Text);
            //    cmd9.Parameters.AddWithValue("BusinessTournOver", TextBoxturn.Text);
            //    cmd9.Parameters.AddWithValue("BriefOperations", TextBoxBrief.Text);
            //    cmd9.Parameters.AddWithValue("NoofEmployees", TextBoxEmp.Text);

            //    if (UpClientImg.FileName != string.Empty)
            //    {
            //        Stream ClientImgBytesStrm = UpClientImg.FileContent;
            //        ClientImgBytes = gt_dal_obj.image2ByteArray(System.Drawing.Image.FromStream(ClientImgBytesStrm));

            //        cmd9.Parameters.AddWithValue("AttachedFile", ClientImgBytes);
            //    }

            //    if (uploadFile.FileName != string.Empty)
            //    {
            //        cmd9.Parameters.AddWithValue("AttachProfile", ClientDocBytes);
            //        cmd9.Parameters.AddWithValue("AttachProfileName", filename);
            //        cmd9.Parameters.AddWithValue("AttachProfileContentType", "application/vnd.ms-word");
            //    }

            //    try
            //    {
            //        con9.Open();
            //        int CheckSuc = cmd9.ExecuteNonQuery();
            //        if (CheckSuc > 0)
            //        {
            //            Response.Write("<script>alert('Profile updated successfully!');</script>");
            //            BindOnPageLoad();
            //        }
            //    }
            //    catch (SqlException ex)
            //    {
            //        string errorMessage = "Opps Error! Please try again. ";
            //        errorMessage += ex.Message;
            //        throw new Exception(errorMessage);
            //    }
            //    finally
            //    {
            //        con9.Close();
            //    }

            //}




            

            SqlParameter param1 = gt_dal_obj.SqlParam("@ClientId", clientid, SqlDbType.VarChar);
            SqlParameter param2 = gt_dal_obj.SqlParam("@Name", TextBoxCname.Text, SqlDbType.VarChar);
            SqlParameter param4 = gt_dal_obj.SqlParam("@CompanyName", TextBoxCom.Text, SqlDbType.VarChar);
            SqlParameter param5 = gt_dal_obj.SqlParam("@InCorporation", TextBoxCin.Text, SqlDbType.VarChar);
            SqlParameter param6 = gt_dal_obj.SqlParam("@CompanyType", DropDownCompany.SelectedValue.ToString(), SqlDbType.VarChar);
            SqlParameter param7 = gt_dal_obj.SqlParam("@Industry", DropDownIndustry.SelectedValue.ToString(), SqlDbType.VarChar);

            SqlParameter param8 = gt_dal_obj.SqlParam("@Address_cl", TextBoxAddress.Text, SqlDbType.VarChar);
            SqlParameter param9 = gt_dal_obj.SqlParam("@Country", DropDownCountry.SelectedValue.ToString(), SqlDbType.VarChar);
            SqlParameter param10 = gt_dal_obj.SqlParam("@City", DropDownCity.SelectedValue.ToString(), SqlDbType.VarChar);
            SqlParameter param11 = gt_dal_obj.SqlParam("@ZipCode", TextBoxZipCode.Text, SqlDbType.VarChar);
            SqlParameter param12= gt_dal_obj.SqlParam("@Website", TextBoxWeb.Text, SqlDbType.VarChar);
            SqlParameter param13= gt_dal_obj.SqlParam("@ContactNo", TextBoxMob.Text, SqlDbType.VarChar);
            SqlParameter param14= gt_dal_obj.SqlParam("@Email", TextBoxEmail.Text, SqlDbType.VarChar);

            SqlParameter param15 = gt_dal_obj.SqlParam("@Designation", TextBoxDesig.Text, SqlDbType.VarChar);
            SqlParameter param16 = gt_dal_obj.SqlParam("@CountryOperation", TextBoxoper.Text, SqlDbType.VarChar);
            SqlParameter param17 = gt_dal_obj.SqlParam("@BusinessTournOver", TextBoxturn.Text, SqlDbType.VarChar);
            SqlParameter param18 = gt_dal_obj.SqlParam("@BriefOperations", TextBoxBrief.Text, SqlDbType.VarChar);
            SqlParameter param19 = gt_dal_obj.SqlParam("@NoofEmployees", TextBoxEmp.Text, SqlDbType.VarChar);

            SqlParameter param20 = gt_dal_obj.SqlParam("@AttachedFile", DBNull.Value, SqlDbType.VarBinary);
            if (UpClientImg.FileName != string.Empty)
            {
                Stream ClientImgBytesStrm = UpClientImg.FileContent;
                byte[] ClientImgBytes = gt_dal_obj.image2ByteArray(System.Drawing.Image.FromStream(ClientImgBytesStrm));
                param20 = gt_dal_obj.SqlParam("@AttachedFile", ClientImgBytes, SqlDbType.VarBinary);
            }

            SqlParameter param21 = gt_dal_obj.SqlParam("@AttachProfile", DBNull.Value, SqlDbType.VarBinary);
            SqlParameter param21a = gt_dal_obj.SqlParam("@AttachProfileName", DBNull.Value, SqlDbType.VarChar);
            SqlParameter param21b= gt_dal_obj.SqlParam("@AttachProfileContentType", DBNull.Value, SqlDbType.VarChar);

            if (uploadFile.FileName != "")
            {
                string filePath = uploadFile.PostedFile.FileName;
                string filename = Path.GetFileName(filePath);
                string ext = Path.GetExtension(filename);
                if (ext == ".doc" || ext == ".docx" || ext == ".xls" || ext == ".xlsx" || ext == ".pdf")
                {
                    param21 = gt_dal_obj.SqlParam("@AttachedFile", gt_dal_obj.Doc2ByteArray(uploadFile), SqlDbType.VarBinary);
                    param21a = gt_dal_obj.SqlParam("@AttachProfileName", filename, SqlDbType.VarChar);
                    param21b = gt_dal_obj.SqlParam("@AttachProfileContentType", gt_dal_obj.DocType(uploadFile), SqlDbType.VarChar);
                }
                else Response.Write("<script>alert('Choose (.doc,.docx,.xls,.xlsx,pdf) file only!');</script>");
            }

            int CheckSuc = gt_dal_obj.FunExecuteNonQuerySP("ust_updateprofile", param1, param2, param4, param5, param6, param7, param8, 
                param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20, param21,
                param21a, param21b
                );
            if (CheckSuc > 0)
            {
                Response.Write("<script>alert('Profile updated successfully!');</script>");
                BindOnPageLoad();
            }
            else Response.Write("<script>alert('I afaid something went wrong! Please try again.');</script>");

        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx?ClientId=" + clientid);
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
    }
}

                        


    