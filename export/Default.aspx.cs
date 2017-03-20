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
        string email = "";
        string clientid = "";
        string clientname = "";
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated && !string.IsNullOrEmpty(Session["email"] as string))
            {
                email = Session["email"].ToString(); 
                SqlParameter Uid = obj_gt_dal.SqlParam("@ClientId", "", SqlDbType.VarChar);
                SqlParameter Uemail = obj_gt_dal.SqlParam("@Email", email, SqlDbType.VarChar);
                SqlParameter Qmode = obj_gt_dal.SqlParam("@ModeType", "Short", SqlDbType.VarChar);
                Pdt = obj_gt_dal.FunDataTableSP("ust_selectprofile ", Uid, Uemail, Qmode);

                if (Pdt.Rows.Count != 0)
                {
                    clientid = (Pdt.Rows[0]["ClientId"].ToString());
                    clientname= (Pdt.Rows[0]["Name"].ToString());
                    LabelName.Text = clientname;
                    LabelNameB.Text = clientname;
                    LabelEmail.Text = (Pdt.Rows[0]["Email"].ToString());
                    LabelContact.Text = (Pdt.Rows[0]["ContactNo"].ToString());
                    LabelUpdateDate.Text = (Pdt.Rows[0]["UpdateDate"].ToString());
                    //buyer_financial.NavigateUrl = "buyer_financial.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;

                    //credit_insurance.NavigateUrl = "credit_insurance.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;
                    //debt_collection.NavigateUrl = "debt_collection.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;
                    //audit_structuring.NavigateUrl = "audit_structuring.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;
                   // request_status.NavigateUrl = "request_status.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;

                    if (Pdt.Rows[0]["AttachedFile"] != DBNull.Value) { ImageClient.ImageUrl = "ViewImage.ashx?ClientId=" + Server.UrlEncode(clientid); }
                    else
                    {
                        ImageClient.ImageUrl = "~/images/user.png";
                    }

                    Session["ClientId"] = clientid;
                    Session["Name"] = clientname;
                    if(LabelContact.Text=="")
                    {
                        
                        Response.Redirect("profile.aspx");
                    }
                }
            }
            
        }
        
        protected void ButtonViewProfile_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("profile.aspx");
        }

        protected void ButtonSignOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}