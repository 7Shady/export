using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace export
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
                PanelCP.GroupingText = HttpContext.Current.User.Identity.Name;
        }

        gt_dal obj_gt_dal = new gt_dal();

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            if (TextBoxCurPass.Text != "" && TextBoxNewPass.Text != "" && TextBoxNewPassC.Text != "")
            {
                byte[] hs = new byte[50];
                string pass = TextBoxNewPass.Text.Trim(); ;
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

                SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", Session["ClientId"].ToString(), SqlDbType.VarChar);
                SqlParameter param2 = obj_gt_dal.SqlParam("@Email", HttpContext.Current.User.Identity.Name, SqlDbType.VarChar);
                SqlParameter param3 = obj_gt_dal.SqlParam("@Password", hash_pass, SqlDbType.VarChar);
                SqlParameter param4 = obj_gt_dal.SqlParam("@ModeType", "Change", SqlDbType.VarChar);

                int CheckSuc = obj_gt_dal.FunExecuteNonQuerySP("ust_forgotchangepass", param1, param2, param3, param4);
                if (CheckSuc > 0)
                {

                    Response.Write("<script>alert('Password changed successfully! Please login again.');</script>");
                    Session.Clear();
                    Session.Abandon();
                    FormsAuthentication.SignOut();
                   
                }
                else
                {
                    Response.Write("<script>alert('Please contact administrator!');</script>");
                    Response.Write(pass);
                }
            }
        }

        protected void TextBoxCurPass_TextChanged(object sender, EventArgs e)
        {
          
            byte[] hs = new byte[50];
            string pass = TextBoxCurPass.Text;
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

            SqlParameter Uname = obj_gt_dal.SqlParam("@Email", HttpContext.Current.User.Identity.Name, SqlDbType.VarChar);
            SqlParameter Upass = obj_gt_dal.SqlParam("@Password", hash_pass, SqlDbType.VarChar);
            int a = int.Parse(obj_gt_dal.FunExecuteScalarSP("ust_login1", Uname, Upass).ToString());
            if (a != 1)
            {
                TextBoxCurPass.Attributes.Add("placeholder", "Password not matched!");
                TextBoxCurPass.Text = "";

            }
        }
    }
}