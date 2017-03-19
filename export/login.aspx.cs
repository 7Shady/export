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
using System.Web.UI.HtmlControls;

namespace export
{
    public partial class login1 : System.Web.UI.Page
    {
        gt_dal gt_dal_obj = new gt_dal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
                Response.Redirect("Default.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (TextBoxEmail.Text != "" && TextBoxPass.Text != "")
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

                SqlParameter Uname = gt_dal_obj.SqlParam("@Email", TextBoxEmail.Text, SqlDbType.VarChar);
                SqlParameter Upass = gt_dal_obj.SqlParam("@Password", hash_pass, SqlDbType.VarChar);

                int a = int.Parse(gt_dal_obj.FunExecuteScalarSP("ust_login1", Uname, Upass).ToString());
                if (a > 0)
                {
                    //FormsAuthentication.RedirectFromLoginPage(TextBoxEmail.Text, CheckBoxPersist.Checked);
                    FormsAuthentication.SetAuthCookie(TextBoxEmail.Text, CheckBoxPersist.Checked);
                    Session["email"] = TextBoxEmail.Text;
                    Response.Redirect("Default.aspx", true);

                }
                else
                {
                    Label1.Text = "Invalid User Name and/or Password";
                }
            }
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}
