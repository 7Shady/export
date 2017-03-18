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
                else{previewImage.ImageUrl = "~/images/adduser.png";}
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != "") 
            {
                clientid = Request.QueryString["ClientId"];
                if (!IsPostBack) 
                {
                    BindOnPageLoad();
                }
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            string filename = null;
            byte[] ClientImgBytes = null;
            Byte[] ClientDocBytes = null;

            using (SqlConnection con9 = new SqlConnection(ConfigurationManager.ConnectionStrings["gt_ConStr"].ConnectionString))
            {
                string atf = null;
                string atpf = null;
                if (UpClientImg.FileName != string.Empty) { atf = ",AttachedFile = @AttachedFile"; }
                else { atf = ""; }
                if (uploadFile.FileName != string.Empty)
                {
                    atpf = ",AttachProfile = @AttachProfile, AttachProfileName = @AttachProfileName, AttachProfileContentType = @AttachProfileContentType";
                    string filePath = Server.MapPath("APP_DATA/Resume.docx");
                    filename = Path.GetFileName(filePath);

                    FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
                    BinaryReader br = new BinaryReader(fs);
                    ClientDocBytes = br.ReadBytes((Int32)fs.Length);
                    br.Close();
                    fs.Close();
                }
                else { atpf = ""; }

                SqlCommand cmd9 = new SqlCommand("UPDATE tblClientRegistration SET Name=@Name, CompanyName=@CompanyName, InCorporation=@InCorporation, CompanyType=@CompanyType, Industry=@Industry," +
                "Address_cl = @Address_cl, Country = @Country, City = @City, ZipCode = @ZipCode, Website = @Website, ContactNo = @ContactNo," +
                "Email = @Email, Designation = @Designation, CountryOperation = @CountryOperation, BusinessTournOver = @BusinessTournOver, BriefOperations = @BriefOperations," +
                "NoofEmployees = @NoofEmployees " + atf + "" + atpf + " WHERE ClientId =@ClientId", con9);

                cmd9.Parameters.AddWithValue("ClientId", clientid);
                cmd9.Parameters.AddWithValue("Name", TextBoxCname.Text);
                cmd9.Parameters.AddWithValue("CompanyName", TextBoxCom.Text);
                cmd9.Parameters.AddWithValue("InCorporation", TextBoxCin.Text);
                cmd9.Parameters.AddWithValue("CompanyType", DropDownCompany.SelectedValue.ToString());
                cmd9.Parameters.AddWithValue("Industry", DropDownIndustry.SelectedValue.ToString());

                cmd9.Parameters.AddWithValue("Address_cl", TextBoxAddress.Text);
                cmd9.Parameters.AddWithValue("Country", DropDownCountry.SelectedValue.ToString());
                cmd9.Parameters.AddWithValue("City", DropDownCity.SelectedValue.ToString());
                cmd9.Parameters.AddWithValue("ZipCode", TextBoxZipCode.Text);
                cmd9.Parameters.AddWithValue("Website", TextBoxWeb.Text);
                cmd9.Parameters.AddWithValue("ContactNo", TextBoxMob.Text);
                cmd9.Parameters.AddWithValue("Email", TextBoxEmail.Text);

                cmd9.Parameters.AddWithValue("Designation", TextBoxDesig.Text);
                cmd9.Parameters.AddWithValue("CountryOperation", TextBoxoper.Text);
                cmd9.Parameters.AddWithValue("BusinessTournOver", TextBoxturn.Text);
                cmd9.Parameters.AddWithValue("BriefOperations", TextBoxBrief.Text);
                cmd9.Parameters.AddWithValue("NoofEmployees", TextBoxEmp.Text);

                if (UpClientImg.FileName != string.Empty)
                {
                    Stream ClientImgBytesStrm = UpClientImg.FileContent;
                    ClientImgBytes = gt_dal_obj.image2ByteArray(System.Drawing.Image.FromStream(ClientImgBytesStrm));

                    cmd9.Parameters.AddWithValue("AttachedFile", ClientImgBytes);
                }
               
                if (uploadFile.FileName != string.Empty)
                {
                    cmd9.Parameters.AddWithValue("AttachProfile", ClientDocBytes);
                    cmd9.Parameters.AddWithValue("AttachProfileName", filename);
                    cmd9.Parameters.AddWithValue("AttachProfileContentType", "application/vnd.ms-word");
                }

                try
                {
                    con9.Open();
                    int CheckSuc = cmd9.ExecuteNonQuery();
                    if (CheckSuc > 0)
                    {
                        Response.Write("<script>alert('Profile updated successfully!');</script>");
                        BindOnPageLoad();
                    }
                }
                catch (SqlException ex)
                {
                    string errorMessage = "Opps Error! Please try again. ";
                    errorMessage += ex.Message;
                    throw new Exception(errorMessage);
                }
                finally
                {
                    con9.Close();
                }

            }
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

                        


    