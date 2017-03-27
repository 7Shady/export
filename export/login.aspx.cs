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
                string username = TextBoxEmail.Text.Trim();
                var hash_pass = gt_dal_obj.PassHash(TextBoxPass.Text.Trim());

                DataTable Pdt = new DataTable();
                SqlParameter Uname = gt_dal_obj.SqlParam("@UserName", username, SqlDbType.VarChar);
                SqlParameter Upass = gt_dal_obj.SqlParam("@Password", hash_pass, SqlDbType.VarChar);
                Pdt = gt_dal_obj.FunDataTableSP("ust_login", Uname, Upass);
                if (Pdt.Rows.Count == 1)
                {
                    string loginusername = (Pdt.Rows[0]["UserName"].ToString());
                    string userrole = (Pdt.Rows[0]["RoleName"].ToString());
                    Session["RoleName"] = userrole;
                    Session["UserName"] = loginusername;
                    Session["Name"]= (Pdt.Rows[0]["Name"].ToString());

                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, username, DateTime.Now, DateTime.Now.AddMinutes(30), CheckBoxPersist.Checked, userrole, FormsAuthentication.FormsCookiePath);
                    string hash = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);

                    if (ticket.IsPersistent)
                    {
                        cookie.Expires = ticket.Expiration;
                    }
                    Response.Cookies.Add(cookie);

                    if (userrole == "User")
                    {
                        Response.Redirect("Default.aspx");
                        FormsAuthentication.SetAuthCookie(username, CheckBoxPersist.Checked);
                    }
                    else if (userrole == "Administrator")
                    {
                        Response.Redirect("~/Admin/Dashboard.aspx");
                        FormsAuthentication.SetAuthCookie(username, CheckBoxPersist.Checked);
                    }
                }
                else
                {
                    Label1.Text = "Invalid Username and/or Password";
                }
            }
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

    }
}
