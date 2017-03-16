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
        Byte[] ClientDocBytes = null;
        string filename = null;
        string clientid = null;
        string clientname = null;
        //test

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

        public string Get8Digits()
        {
            var bytes = new byte[4];
            var rng = RandomNumberGenerator.Create();
            rng.GetBytes(bytes);
            uint random = BitConverter.ToUInt32(bytes, 0) % 100000000;
            return String.Format("BR" + "{0:D8}", random);
        }

        protected void buyersubmit_Click(object sender, EventArgs e)
        {

            using (SqlConnection con9 = new SqlConnection(ConfigurationManager.ConnectionStrings["gt_ConStr"].ConnectionString))
            {
                string q1 = "";
                string q2 = "";
                if (uploadpanlegal_second.FileName != string.Empty)
                {
                    q1 = ",AttachedFile,AttachProfileName,AttachProfileContentType";
                    q2 = ",@AttachedFile,@AttachProfileName,@AttachProfileContentType";
                    string filePath = Server.MapPath("APP_DATA/Resume.docx");
                    filename = Path.GetFileName(filePath);

                    FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
                    BinaryReader br = new BinaryReader(fs);
                    ClientDocBytes = br.ReadBytes((Int32)fs.Length);
                    br.Close();
                    fs.Close();
                }
                SqlCommand cmd9 = new SqlCommand("INSERT INTO tblBuyer (BuyerId,ClientId,Name,Country,State,City,Address_cl,Description,AmountofOrder" + q1 + ") VALUES(@BuyerId,@ClientId,@Name,@Country,@State,@City,@Address_cl,@Description,@AmountofOrder" + q2 + ")", con9);

                string BuyerId = Get8Digits();
                cmd9.Parameters.AddWithValue("BuyerId", BuyerId);
                cmd9.Parameters.AddWithValue("ClientId", clientid);
                cmd9.Parameters.AddWithValue("Name", TextBoxBname.Text);
                cmd9.Parameters.AddWithValue("Country", DropDownCountry.SelectedItem.ToString());
                cmd9.Parameters.AddWithValue("State", DropDownListState.SelectedItem.ToString());
                cmd9.Parameters.AddWithValue("City", TextBoxCity.Text);
                cmd9.Parameters.AddWithValue("Address_cl", TextBoxAddress.Text);
                cmd9.Parameters.AddWithValue("Description", TextBoxDec.Text);
                cmd9.Parameters.AddWithValue("AmountofOrder", TextBoxAmount.Text);
                if (uploadpanlegal_second.FileName != string.Empty)
                {
                    cmd9.Parameters.AddWithValue("AttachedFile", ClientDocBytes);
                    cmd9.Parameters.AddWithValue("AttachProfileName", filename);
                    cmd9.Parameters.AddWithValue("AttachProfileContentType", "application/vnd.ms-word");
                }

                try
                {
                    con9.Open();
                    int CheckSuc = cmd9.ExecuteNonQuery();
                    if (CheckSuc > 0)
                    {
                        Response.Write("<script>alert('Buyer added successfully!');</script>");
                        panelbuyer.Visible = false;
                        ButtonAddMorei.Visible = true;
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

        protected void ButtonAddMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyer_financial.aspx?ClientId=" + clientid + "&Name=" + clientname);
        }
    }
}