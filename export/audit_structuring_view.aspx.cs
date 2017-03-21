using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace export
{
    public partial class audit_structuring_view : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        DataTable Pdt = new DataTable();
        string auditid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["ClientId"] as string) && !string.IsNullOrEmpty(Session["AuditId"] as string))
            {
                LabelName.Text = Session["Name"].ToString();
                LabelClientId.Text = Session["ClientId"].ToString();
                auditid = Session["AuditId"].ToString();

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ClientId";
                param1.Value = "";
                param1.SqlDbType = SqlDbType.VarChar;

                SqlParameter param1a = new SqlParameter();
                param1a.ParameterName = "@AuditId";
                param1a.Value = auditid;
                param1a.SqlDbType = SqlDbType.VarChar;

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@ModeType";
                param2.Value = "Full";
                param2.SqlDbType = SqlDbType.VarChar;

                Pdt = obj_gt_dal.FunDataTableSP("ust_rsaudit", param1, param1a, param2);
                if (Pdt.Rows.Count != 0)
                {
                    LabelAuditId.Text = (Pdt.Rows[0]["AuditId"].ToString());
                    LabelBName.Text = (Pdt.Rows[0]["Name"].ToString());
                    LabelCountry.Text = (Pdt.Rows[0]["Country"].ToString());
                    LabelState.Text = (Pdt.Rows[0]["State"].ToString());
                    LabelCity.Text = (Pdt.Rows[0]["City"].ToString());
                    LabelAddress.Text = (Pdt.Rows[0]["Address_cl"].ToString());
                    LabelEmail.Text = (Pdt.Rows[0]["Email"].ToString());
                    LabelNumber.Text = (Pdt.Rows[0]["contactnumber"].ToString());
                    LabelSatus.Text = (Pdt.Rows[0]["Status"].ToString());
                    string attachprofilename = Pdt.Rows[0]["AttachProfileName"].ToString();
                    if (attachprofilename!="")
                    {
                        ButtonDload.CssClass = "btn btn-xs btn-success";
                        ButtonDload.Text = Pdt.Rows[0]["AttachProfileName"].ToString();
                        ButtonDload.ToolTip = "Download " + Pdt.Rows[0]["AttachProfileName"].ToString();
                    }
                    else
                    {
                        ButtonDload.CssClass = "btn btn-xs btn-link";
                        ButtonDload.Text = "Not uploded yet!";
                    }

                    switch (LabelSatus.Text)
                    {
                        case "Pending":
                            LabelSatus.CssClass = "btn btn-info btn-xs";
                            break;
                        case "Approved":
                            LabelSatus.CssClass = "btn btn-xs btn-success";
                            break;
                        case "Declined":
                            LabelSatus.CssClass = "btn btn-xs btn-danger";
                            break;
                    }
                }
            }
        }

        protected void ButtonDload_Click(object sender, EventArgs e)
        {
            if (Pdt.Rows[0]["AttachedFile"] != DBNull.Value)
            {
                obj_gt_dal.DocDownload(Pdt, "AttachedFile", "AttachProfileContentType", "AttachProfileName");
            }
            else Response.Write("<script>alert('Document not uploaded!');</script>");
        }
    }
}