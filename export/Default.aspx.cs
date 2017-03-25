using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace export
{
    public partial class Default : System.Web.UI.Page
    {
        string username = "";
        string clientid = "";
        string clientname = "";
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated && !string.IsNullOrEmpty(Session["UserName"] as string)
                && !string.IsNullOrEmpty(Session["RoleName"] as string))
            {
                username = Session["UserName"].ToString();
                SqlParameter Uclientid = obj_gt_dal.SqlParam("@ClientId", "", SqlDbType.VarChar);
                SqlParameter Uusername = obj_gt_dal.SqlParam("@UserName", username, SqlDbType.VarChar);
                SqlParameter Qmode = obj_gt_dal.SqlParam("@ModeType", "Short", SqlDbType.VarChar);
                Pdt = obj_gt_dal.FunDataTableSP("ust_selectprofile ", Uclientid, Uusername, Qmode);

                if (Pdt.Rows.Count != 0)
                {
                    clientid = (Pdt.Rows[0]["ClientId"].ToString());
                    clientname = (Pdt.Rows[0]["Name"].ToString());
                    LabelName.Text = clientname;
                    LabelNameB.Text = clientname;
                    LabelEmail.Text = (Pdt.Rows[0]["Email"].ToString());
                    LabelContact.Text = (Pdt.Rows[0]["ContactNo"].ToString());
                    LabelUpdateDate.Text = (Pdt.Rows[0]["UpdateDate"].ToString());

                    if (Pdt.Rows[0]["AttachedFile"] != DBNull.Value) { ImageClient.ImageUrl = "ViewImage.ashx?ClientId=" + Server.UrlEncode(clientid); }
                    else
                    {
                        ImageClient.ImageUrl = "~/images/user.png";
                    }

                    Session["ClientId"] = clientid;
                    Session["Name"] = clientname;

                    //redirect to profile.aspx to update mobile number if mobile number is not submitted yet
                    if (LabelContact.Text == "")
                    {
                        Response.Redirect("profile.aspx");
                    }
                }
                else
                {
                    Session.Clear();
                    Session.Abandon();
                    FormsAuthentication.SignOut();
                    Response.Write("<script>alert('Something went wrong please contact administartor!');</script>");
                }
            }
        }

        protected void ButtonViewProfile_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("profile.aspx");
        }        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}