using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
using System.Web.Security;
using System.Collections.Specialized;
using static System.Net.WebRequestMethods;

namespace export
{
    public partial class forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {}

        gt_dal obj_gt_dal = new gt_dal();

        protected void submit_Click(object sender, EventArgs e)
        {
            if (TextBoxEmail.Text != null)
            {
                byte[] hs = new byte[50];
                string pass = obj_gt_dal.Get8Digits("SK");
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

                SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", DBNull.Value, SqlDbType.VarChar);
                SqlParameter param2 = obj_gt_dal.SqlParam("@Email", TextBoxEmail.Text, SqlDbType.VarChar);
                SqlParameter param3 = obj_gt_dal.SqlParam("@Password", hash_pass, SqlDbType.VarChar);
                SqlParameter param4 = obj_gt_dal.SqlParam("@ModeType", "Forgot", SqlDbType.VarChar);

                int CheckSuc = obj_gt_dal.FunExecuteNonQuerySP("ust_forgotchangepass", param1, param2, param3, param4);
                if (CheckSuc > 0)
                {

                    LabelPass.Text = pass;
                    Response.Write("<script>alert('Password updated successfully!');</script>");
                    Session.Clear();
                    Session.Abandon();
                    FormsAuthentication.SignOut();
                    TextBoxEmail.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Please contact administrator!');</script>");
                    Response.Write(pass);
                }
            }
        }

        protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
        {
            TextBoxEmail.Attributes.Add("placeholder", "Email");
            if (TextBoxEmail.Text != String.Empty)
            {
                string Email = "'" + TextBoxEmail.Text + "'";
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@Email";
                param1.Value = TextBoxEmail.Text;
                param1.SqlDbType = SqlDbType.VarChar;

                int a = int.Parse(obj_gt_dal.FunExecuteScalarSP("ust_emailcheck", param1).ToString());
                if (a != 1) { TextBoxEmail.Text = ""; TextBoxEmail.Attributes.Add("placeholder", Email+ " does not exist."); }
            }
            else { TextBoxEmail.Attributes.Add("placeholder", "Email"); }
        }
    }
}