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
        gt_dal obj_gt_dal = new gt_dal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated) Response.Redirect("Default.aspx");
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
                if (a > 0) { TextBoxEmail.Text = ""; TextBoxEmail.Attributes.Add("placeholder", Email + " already exist"); }
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

            string newclientid = obj_gt_dal.Get8Digits("CL");
            SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", newclientid, SqlDbType.VarChar);
            SqlParameter param2 = obj_gt_dal.SqlParam("@Name", TextBoxName.Text, SqlDbType.VarChar);
            SqlParameter param3 = obj_gt_dal.SqlParam("@Email", TextBoxEmail.Text, SqlDbType.VarChar);
            SqlParameter param4 = obj_gt_dal.SqlParam("@Password", hash_pass, SqlDbType.VarChar);

            int CheckSuc = obj_gt_dal.FunExecuteNonQuerySP("ust_newregistration", param1, param2, param3, param4);
            if (CheckSuc > 0)
                Response.Redirect("~/ProfileSuccess.aspx?ClientId=" + newclientid);
            else
                Response.Write("<script>alert('Something went wrong! Please try again.');</script>");
        }
    }
}