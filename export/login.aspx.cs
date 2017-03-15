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

namespace export
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {}

        gt_dal gt_dal_obj = new gt_dal();
        protected void submit_Click(object sender, EventArgs e)
        {
            //MD5 Hashing...
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

            SqlParameter param1b = new SqlParameter();
            param1b.ParameterName = "@Email";
            param1b.Value = TextBoxemail.Text; ;
            param1b.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1c = new SqlParameter();
            param1c.ParameterName = "@Password";
            param1c.Value = hash_pass;
            param1c.SqlDbType = SqlDbType.VarChar;

            int a;
            a = int.Parse(gt_dal_obj.FunExecuteScalarSP("ust_login1", param1b, param1c).ToString());

            if (a > 0)
            {
                if (CheckBox1.Checked)
                {
                    HttpCookie mycookie = new HttpCookie(TextBoxemail.Text, TextBoxPass.Text);
                    mycookie.Expires = DateTime.Now.AddDays(5);
                    Response.Cookies.Add(mycookie);
                }
                Session["email"] = TextBoxemail.Text;
                Response.Redirect("Default.aspx");
                Session.RemoveAll();
            }
            else { Label1.Text = "Invalid User Name & Password"; }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            Response.Redirect("Registration.aspx");
        }
    }
}
