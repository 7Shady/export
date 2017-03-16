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
    public partial class audit_structuring : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        Byte[] ClientDocBytes = null;
        string filename = null;
        //test

        public static string GetUserIpAddress()
        {
            string ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(ip))
            {
                ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                if (ip == "::1") ip = "127.0.0.1"; // localhost
            }
            return ip;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["Name"] != null)
            {
                LabelClientId.Text = Request.QueryString["ClientId"];
                LabelName.Text = Request.QueryString["Name"];
            }
        }

        public string Get8Digits()
        {
            var bytes = new byte[4];
            var rng = RandomNumberGenerator.Create();
            rng.GetBytes(bytes);
            uint random = BitConverter.ToUInt32(bytes, 0) % 100000000;
            return String.Format("AT" + "{0:D8}", random);
        }

        protected void auditsubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con9 = new SqlConnection(ConfigurationManager.ConnectionStrings["gt_ConStr"].ConnectionString))
            {
                if (uploadpanlegal_second.FileName != string.Empty)
                {
                    string filePath = Server.MapPath("APP_DATA/Resume.docx");
                    filename = Path.GetFileName(filePath);

                    FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
                    BinaryReader br = new BinaryReader(fs);
                    ClientDocBytes = br.ReadBytes((Int32)fs.Length);
                    br.Close();
                    fs.Close();
                }
                SqlCommand cmd9 = new SqlCommand("INSERT INTO tblAudit (AuditId,ClientId,Name,Country,State,City,Email,contactnumber,Address_cl,AttachedFile,AttachProfileName,AttachProfileContentType,IpAddress) VALUES(@AuditId,@ClientId,@Name,@Country,@State,@City,@Email,@contactnumber,@Address_cl,@AttachedFile,@AttachProfileName,@AttachProfileContentType,@IpAddress)", con9);

                //+LabelClientId.Text + "','" + LabelName.Text + "','" + DropDownCountry.SelectedItem.ToString() + "','" + DropDownListState.SelectedItem.ToString() + "','" + TextBoxCity.Text + "','" + TextBoxAddress.Text + "','" 
                //+ TextBoxDec.Text + "','" + TextBoxAmount.Text + "','" + ClientDocBytes + "','" + filename + "','application/vnd.ms-word'

                string AuditId = Get8Digits();
                string IpAddress = GetUserIpAddress();
                cmd9.Parameters.AddWithValue("AuditId", AuditId);
                cmd9.Parameters.AddWithValue("ClientId", LabelClientId.Text);
                cmd9.Parameters.AddWithValue("Name", TextBoxAname.Text);
                cmd9.Parameters.AddWithValue("Country", DropDownCountry.SelectedItem.ToString());
                cmd9.Parameters.AddWithValue("State", DropDownState.SelectedItem.ToString());
                cmd9.Parameters.AddWithValue("City", TextBoxCity.Text);
                cmd9.Parameters.AddWithValue("Email", TextBoxEmail.Text);
                cmd9.Parameters.AddWithValue("contactnumber", TextBoxMob.Text);
                cmd9.Parameters.AddWithValue("Address_cl", TextBoxAddress.Text);
                cmd9.Parameters.AddWithValue("AttachedFile", ClientDocBytes);
                cmd9.Parameters.AddWithValue("AttachProfileName", filename);
                cmd9.Parameters.AddWithValue("AttachProfileContentType", "application/vnd.ms-word");
                cmd9.Parameters.AddWithValue("IpAddress", IpAddress);
                try
                {
                    con9.Open();
                    int CheckSuc = cmd9.ExecuteNonQuery();
                    if (CheckSuc > 0)
                    {
                        Response.Write("<script>alert('Profile updated successfully!');</script>");

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
    }
}