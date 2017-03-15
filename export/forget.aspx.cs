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

namespace export
{
    public partial class forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //Do MD5 Hashing...
            byte[] hs = new byte[50];
            string pass = Label1.Text;
            MD5 md5 = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(pass);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                hs[i] = hash[i];
                sb.Append(hs[i].ToString("x2"));
            }
            var hash_pass = sb.ToString();

            string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlCommand cmd = new SqlCommand("select COUNT(*)FROM reg WHERE Email='" + TextBoxemail.Text + "'");
            SqlConnection con = new SqlConnection(connectionString);
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            con.Open();
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
            if (OBJ > 0)
            {
                
                Label1.Text =  hash_pass;
                this.Label1.ForeColor = Color.Red;
            }
            else
            {
                Response.Redirect("google.com");
            }
        }
    }
}