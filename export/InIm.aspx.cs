﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Web.Security;
using System.Globalization;

namespace export
{
    public partial class InIm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string role = HttpContext.Current.User.Identity.Name;
            if (HttpContext.Current.User.IsInRole("user"))
            {
                Response.Write("user__" + role);
            }
            else
                Response.Write("<h1>Others</h1>" + role);
            //string[] userroles =  Roles.GetRolesForUser();
            //string[] userroles2 = Roles.GetRolesForUser("admin");
            //Response.Write("<h1>" + userroles + "</h1>"+"____"+userroles2);
            if (!IsPostBack)
            {
                gt_dal_obj.Bind_DropDown("SELECT [Code],[Name] FROM [country] ORDER BY [Name] ASC", "Name", "Code", DropDownList1);
            }
        }

        gt_dal gt_dal_obj = new gt_dal();
        byte[] ClientImgBytes = null;

        protected void UploadAndSaveIntoDatabase(object sender, EventArgs e)
        {
            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@ClientId";
            param1.Value = gt_dal_obj.Get8Digits("CL");
            param1.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1a = new SqlParameter();
            param1a.ParameterName = "@Name";
            param1a.Value = "SPTest";
            param1a.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1b = new SqlParameter();
            param1b.ParameterName = "@Email";
            param1b.Value = "SPTest@in.in";
            param1b.SqlDbType = SqlDbType.VarChar;

            SqlParameter param1c = new SqlParameter();
            param1c.ParameterName = "@Password";
            param1c.Value = "1234";
            param1c.SqlDbType = SqlDbType.VarChar;

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@AttachedFile";
            if (FileUpload1.PostedFile.FileName != string.Empty)
            {
                Stream ClientImgBytesStrm = FileUpload1.FileContent;
                ClientImgBytes = gt_dal_obj.image2ByteArray(System.Drawing.Image.FromStream(ClientImgBytesStrm));
                param2.Value = ClientImgBytes;
                param2.SqlDbType = SqlDbType.VarBinary;
            }
            else
            {
                param2.Value = DBNull.Value;
                param2.SqlDbType = SqlDbType.VarBinary;
            }

            int ab = 0;
            ab = gt_dal_obj.FunExecuteNonQuerySP("InsertImage", param1, param1a, param1b, param1c, param2);
            if (ab > 0)lblMessage.Text = " Saved to the database successsfully !";
            else lblMessage.Text = " Ewwww!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Email = "'" + TextBox1.Text + "'";
            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@Email";
            param1.Value = TextBox1.Text;
            param1.SqlDbType = SqlDbType.VarChar;
            int a;
            a = int.Parse(gt_dal_obj.FunExecuteScalarSP("ust_emailcheck", param1).ToString());
            if (a > 0) { TextBox1.Text = ""; TextBox1.Attributes.Add("placeholder", Email + " already exist"); }
            else { TextBox1.Attributes.Add("placeholder", "Email"); }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text =  HttpContext.Current.Request.Url.AbsolutePath;
            Label1.Text = Label1.Text + "__" + HttpContext.Current.User.Identity.Name;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //gt_dal_obj.SendMail(TextBox2.Text,"test", TextBox3.Text);
            TextInfo myTI = new CultureInfo("en-US", false).TextInfo;
            string clientname = myTI.ToTitleCase(TextBox2.Text);
            lblMessage.Text = clientname;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlParameter Uname = gt_dal_obj.SqlParam("@ClientId", TextBox4.Text, SqlDbType.VarChar);
            SqlParameter Upass = gt_dal_obj.SqlParam("@Email", TextBox5.Text, SqlDbType.VarChar);
            DataTable Pdt;
            Pdt = gt_dal_obj.FunDataTableSP("ust_login ", Uname,Upass);
            if (Pdt.Rows.Count != 0)
            {
                GridView1.DataSource = Pdt;
                GridView1.DataBind();
            }
            else
                Response.Write("No dataSSS");
    }
    }
}
