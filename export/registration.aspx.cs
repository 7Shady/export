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
using System.Text;
using System.Security.Cryptography;

namespace export
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null) { Response.Redirect("Default.aspx"); }
        }

        gt_dal obj_gt_dal = new gt_dal();
        
        protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
        {
            TextBoxEmail.Attributes.Add("placeholder", "Email");
            if (TextBoxEmail.Text != String.Empty)
            {
                object a = null;
                string Email = "'" + TextBoxEmail.Text + "'";
                a = obj_gt_dal.FunExecuteScalar("SELECT 1 FROM tblClientRegistration WHERE Email=" + Email + "");
                if (a != null) { TextBoxEmail.Text = ""; TextBoxEmail.Attributes.Add("placeholder", Email +" already exist"); }
            }
            else { TextBoxEmail.Attributes.Add("placeholder", "Email"); }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            byte[] hs = new byte[50];
            string pass = TextBoxPass.Text;
            MD5 md5 = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(pass);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                hs[i] = hash[i];
                sb.Append(hs[i].ToString("x2"));
            }
            var hash_pass = sb.ToString();

            using (SqlConnection con9 = new SqlConnection(ConfigurationManager.ConnectionStrings["gt_ConStr"].ConnectionString))
            {
                string ClientID9 = obj_gt_dal.Get8Digits();
                SqlCommand cmd9 = new SqlCommand("INSERT INTO tblClientRegistration(ClientId, Name, Email, Password) VALUES(@ClientId, @Name, @Email, @Password)", con9);
                cmd9.Parameters.AddWithValue("ClientId", ClientID9);
                cmd9.Parameters.AddWithValue("Name", TextBoxName.Text);
                cmd9.Parameters.AddWithValue("Email", TextBoxEmail.Text);
                cmd9.Parameters.AddWithValue("Password", hash_pass);
                try
                {
                    con9.Open();
                    int CheckSuc = cmd9.ExecuteNonQuery();
                    if (CheckSuc > 0)
                    {
                        Response.Redirect("~/ProfileSuccess.aspx?ClientId=" + ClientID9);
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