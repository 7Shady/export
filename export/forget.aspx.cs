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
            if (TextBoxUserName.Text == null)
            { Response.Write("<script>alert('Enter Username.');</script>"); }
            else
            {
                string username = "'" + TextBoxUserName.Text + "'";  //  ",'" + Mailid.Text + "','"
                string useremail = "'" + TextBoxEmail.Text + "'";
                DataTable dt = obj_gt_dal.FunDataTable("SELECT Name, LoweredEmail FROM Users WHERE UserName=" + username + " AND LoweredEmail=" + useremail + "");
                if (dt.Rows.Count == 1)
                {
                    string email = (dt.Rows[0]["LoweredEmail"].ToString());

                    if (email == TextBoxEmail.Text)
                    {
                        string pass = obj_gt_dal.Get8Digits("SK");
                        var hash_pass = obj_gt_dal.PassHash(pass);

                        SqlParameter param2 = obj_gt_dal.SqlParam("@UserName", TextBoxUserName.Text, SqlDbType.VarChar);
                        SqlParameter param3 = obj_gt_dal.SqlParam("@Password", hash_pass, SqlDbType.VarChar);
                        SqlParameter param4 = obj_gt_dal.SqlParam("@ModeType", "Forgot", SqlDbType.VarChar);

                        int CheckSuc = obj_gt_dal.FunExecuteNonQuerySP("ust_forgotchangepass", param2, param3, param4);
                        if (CheckSuc == 1)
                        {
                            string mailbody = "Hi " + (dt.Rows[0]["Name"].ToString()) + ",<br><br>" +
                            "You recently requested to reset your password.<br><br>" +
                            "Following are new details:<br><br>" +
                            "Username: " + TextBoxUserName.Text + "<br>" +
                            "Password: " + pass + "<br><br>" +
                            "<b>Please change your password after login.</b><br><br><br><br>" +
                            "Team Glocal Thinkers</b>";

                            string mailsubject = "Glocal Thinkers Password Reset";
                            obj_gt_dal.SendMail(email, mailsubject, mailbody);

                            Response.Write("<script>alert('Password updated successfully! Please login to your registered email.');</script>");
                            Session.Clear();
                            Session.Abandon();
                            FormsAuthentication.SignOut();
                            TextBoxUserName.Text = "";
                            TextBoxEmail.Text = "";
                        }
                        else
                            Response.Write("<script>alert('Please contact administrator!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Email not matched.');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Username and Email not matched.');</script>");
                }
            }
        }

        protected void TextBoxUserName_TextChanged(object sender, EventArgs e)
        {
            TextBoxUserName.Attributes.Add("placeholder", "Username");
            if (TextBoxUserName.Text != String.Empty)
            {
                string username = "'" + TextBoxUserName.Text + "'";
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@UserName";
                param1.Value = TextBoxUserName.Text;
                param1.SqlDbType = SqlDbType.VarChar;

                int a = int.Parse(obj_gt_dal.FunExecuteScalarSP("ust_emailcheck", param1).ToString());
                if (a != 1) { TextBoxUserName.Text = ""; TextBoxUserName.Attributes.Add("placeholder", username+ " does not exist."); }
            }
            else
            { 
                TextBoxUserName.Attributes.Add("placeholder", "Username");
            }
        }

       
    }
}