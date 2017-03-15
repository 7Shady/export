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
using System.IO;
using System.Security.Cryptography;

namespace export
{
    public partial class editprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("select * from tblClientRegistration where ClientId = 'CL/8961969'", con);

            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                TextBoxCname.Text = (myReader["Name"].ToString());
                TextBoxEmail.Text = (myReader["Email"].ToString());
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                        


        }
    }
     
}