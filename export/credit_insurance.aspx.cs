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
    public partial class credit_insurance : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        Byte[] ClientDocBytes = null;
        string filename = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null && Request.QueryString["Name"] != null)
            {
                LabelClientId.Text = Request.QueryString["ClientId"];
                LabelName.Text = Request.QueryString["Name"];
            }
        }

        protected void creditsubmit_Click(object sender, EventArgs e)
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

                SqlCommand cmd9 = new SqlCommand("ust_credit", con9);
                cmd9.CommandType = CommandType.StoredProcedure;

                string CreditId = obj_gt_dal.Get8Digits("CR");
                string IpAddress = obj_gt_dal.GetUserIpAddress();
                cmd9.Parameters.AddWithValue("CreditId", CreditId);
                cmd9.Parameters.AddWithValue("ClientId", LabelClientId.Text);
                cmd9.Parameters.AddWithValue("Name", TextBoxBname.Text);
                cmd9.Parameters.AddWithValue("Country", DropDownCountry.SelectedItem.ToString());
                cmd9.Parameters.AddWithValue("State", DropDownState.SelectedItem.ToString());
                cmd9.Parameters.AddWithValue("City", TextBoxCity.Text);
                cmd9.Parameters.AddWithValue("Address_cl", TextBoxAddress.Text);
                cmd9.Parameters.AddWithValue("Description", TextBoxDec.Text);
                cmd9.Parameters.AddWithValue("ValueofConsignment", TextBoxConsig.Text);
                cmd9.Parameters.AddWithValue("TermsofDelivery", TextBoxDeli.Text);
                cmd9.Parameters.AddWithValue("TermsofPayment", TextBoxPay.Text);
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