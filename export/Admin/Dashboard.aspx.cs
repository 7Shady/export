using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace export.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        gt_dal gt_dal_obj = new gt_dal();

        protected void Page_Load(object sender, EventArgs e)
        {
            int Client = int.Parse(gt_dal_obj.FunExecuteScalar("SELECT COUNT(*) FROM [export].[dbo].[tblClientRegistration]").ToString());
            int pending = int.Parse(gt_dal_obj.FunExecuteScalar("SELECT COUNT(*) FROM [export].[dbo].[tblBuyer]").ToString());
            int Buyer = int.Parse(gt_dal_obj.FunExecuteScalar("SELECT COUNT(*) FROM [export].[dbo].[tblBuyer]").ToString());
            int Credit = int.Parse(gt_dal_obj.FunExecuteScalar("SELECT COUNT(*) FROM [export].[dbo].[tblCredit]").ToString());
            int Debt = int.Parse(gt_dal_obj.FunExecuteScalar("SELECT COUNT(*) FROM [export].[dbo].[tblDebt]").ToString());
            int Audit = int.Parse(gt_dal_obj.FunExecuteScalar("SELECT COUNT(*) FROM [export].[dbo].[tblAudit]").ToString());


            if (Client >= 0)
            {                
               LabelClient.Text = Client.ToString();                       
            }
            if (pending >= 0)
            {
                LabelPending.Text = pending.ToString();
            }
            if (Buyer >= 0)
            {
                LabelBuyer.Text = Buyer.ToString();
            }
            if (Credit >= 0)
            {
                LabelCredit.Text = Credit.ToString();
            }
            if (Debt >= 0)
            {
                LabelDebt.Text = Debt.ToString();
            }
            if (Audit >= 0)
            {
                LabelAudit.Text = Audit.ToString();
            }
            else
            {
                
            }
        }
    }
}