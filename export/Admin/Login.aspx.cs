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

namespace export.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        gt_dal gt_dal_obj = new gt_dal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
                Response.Redirect("Dashboard.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (TextBoxUser.Text != "" && TextBoxPass.Text != "")
            {
                ////MD5 Hashing...
                //byte[] hs = new byte[50];
                //string pass = TextBoxPass.Text;
                //MD5 md5 = MD5.Create();
                //byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(pass);
                //byte[] hash = md5.ComputeHash(inputBytes);
                //StringBuilder sb = new StringBuilder();
                //for (int i = 0; i < hash.Length; i++)
                //{
                //    hs[i] = hash[i];
                //    sb.Append(hs[i].ToString("x2"));
                //}
                //var hash_pass = sb.ToString();

                
                SqlParameter Uname = gt_dal_obj.SqlParam("@AdminId", TextBoxUser.Text, SqlDbType.VarChar);
                SqlParameter Upass = gt_dal_obj.SqlParam("@Password", TextBoxPass.Text, SqlDbType.VarChar);

                int a = int.Parse(gt_dal_obj.FunExecuteScalarSP("ust_loginadmin", Uname, Upass).ToString());
                if (a > 0)
                {
                    //FormsAuthentication.RedirectFromLoginPage(TextBoxEmail.Text, CheckBoxPersist.Checked);
                    //FormsAuthentication.SetAuthCookie(TextBoxUser.Text, CheckBoxPersist.Checked);
                    Session["admin"] = TextBoxUser.Text;
                    Response.Redirect("Dashboard.aspx", true);

                }
                else
                {
                    Label1.Text = "Invalid User Name and/or Password";
                }
            }
        }
    }
}