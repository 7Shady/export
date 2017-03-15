using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace export
{
    public partial class Default : System.Web.UI.Page
    {
        string email = null;
        string clientid = null;
        //object clientid = null;
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["email"] as string))
            {
                email = Session["email"].ToString(); LabelEmail.Text = email;
                email = "'" + email + "'";
                Pdt = obj_gt_dal.FunDataTable("SELECT ClientId,Name,ContactNo,UpdateDate,AttachedFile FROM tblClientRegistration WHERE Email=" + email + "");
                if (Pdt.Rows.Count != 0)
                {
                    clientid = (Pdt.Rows[0]["ClientId"].ToString());
                    LabelName.Text = (Pdt.Rows[0]["Name"].ToString());
                    LabelNameB.Text = LabelName.Text;
                    LabelContact.Text = (Pdt.Rows[0]["ContactNo"].ToString());
                    LabelUpdateDate.Text = (Pdt.Rows[0]["UpdateDate"].ToString());
                    buyer_financial.NavigateUrl = "buyer_financial.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;

                    credit_insurance.NavigateUrl = "credit_insurance.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;
                    debt_collection.NavigateUrl = "debt_collection.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;
                    audit_structuring.NavigateUrl = "audit_structuring.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;
                    request_status.NavigateUrl = "request_status.aspx?ClientId=" + clientid + "&Name=" + LabelName.Text;

                    if (Pdt.Rows[0]["AttachedFile"] != DBNull.Value) { ImageClient.ImageUrl = "ViewImage.ashx?ClientId=" + Server.UrlEncode(clientid); }
                    else
                    {
                        ImageClient.ImageUrl = "~/images/user.png";
                    }
                }
                else { Response.Redirect("login.aspx"); }
            }
            else { Response.Redirect("login.aspx"); }

        }
        
        protected void ButtonViewProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx?ClientId=" + clientid);
        }

        protected void ButtonSignOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}