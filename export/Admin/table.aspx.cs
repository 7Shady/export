using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace export.Admin
{
    public partial class table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getStudentData()
        {
            string data = "";
            using (SqlConnection conn = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = export; Integrated Security = True"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ust_rsbuyer";
                    cmd.Connection.Open();
                    using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                    {
                        // table = new DataTable();  
                        // table.Load(reader);  
                        if (sqlRdr.HasRows)
                        {
                            while (sqlRdr.Read())
                            {
                                
                                string Name = sqlRdr.GetString(2);
                                string EmailAddress = sqlRdr.GetString(3);
                                string Role = sqlRdr.GetString(5);
                                data += "<tr><td>" + Name + "</td><td>" + EmailAddress + "</td><td>" + Role + "</td></tr>";
                            }
                        }
                    }
                }
                return data;
            }
        }
    }
}