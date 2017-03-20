using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Security.Cryptography;
using System.Net.Mail;

namespace export
{
    public partial class mail : System.Web.UI.Page
    {
        gt_dal obj_gt_dal = new gt_dal();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSendmail_Click(object sender, EventArgs e)
        {
           

            
           
           //mm.From = Sender;
           // message.To.Add(receiver);
           // message.Body = txtbody.Text;
           // message.IsBodyHtml = true;
           // smtp.Send(message);

        }
    }
}