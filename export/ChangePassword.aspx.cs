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
            else
                Response.Redirect("login.aspx");
        }

        gt_dal obj_gt_dal = new gt_dal();

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            if (TextBoxCurPass.Text != "" && TextBoxNewPass.Text != "" && TextBoxNewPassC.Text != "")
            {
                string hash_pass_old = obj_gt_dal.PassHash(TextBoxCurPass.Text.Trim());

                SqlParameter Uname = obj_gt_dal.SqlParam("@Email", HttpContext.Current.User.Identity.Name, SqlDbType.VarChar);
                SqlParameter Upass = obj_gt_dal.SqlParam("@Password", hash_pass_old, SqlDbType.VarChar);
                int a = int.Parse(obj_gt_dal.FunExecuteScalarSP("ust_login1", Uname, Upass).ToString());
                if (a == 1)
                {
                    string hash_pass_new = obj_gt_dal.PassHash(TextBoxNewPass.Text.Trim());

                    SqlParameter param1 = obj_gt_dal.SqlParam("@ClientId", Session["ClientId"].ToString(), SqlDbType.VarChar);
                    SqlParameter param2 = obj_gt_dal.SqlParam("@Email", HttpContext.Current.User.Identity.Name, SqlDbType.VarChar);
                    SqlParameter param3 = obj_gt_dal.SqlParam("@Password", hash_pass_new, SqlDbType.VarChar);
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
                        Response.Write("<script>alert('Please contact administrator!');</script>");
                }
                else
                    Response.Write("<script>alert('Old password not matched!');</script>");
            }
        }
       
    }
}