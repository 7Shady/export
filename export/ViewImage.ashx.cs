using System;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;


namespace export
{
    /// <summary>
    /// Summary description for ViewImage
    /// </summary>
    public class ViewImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string clientid;
            if (context.Request.QueryString["ClientId"] != null)
                clientid = context.Request.QueryString["ClientId"];
            else
                throw new ArgumentException("No parameter specified");

            context.Response.ContentType = "image/jpeg";
            //context.Response.ContentType = "image/png";
            Stream strm = ShowEmpImage(clientid);
            byte[] buffer = new byte[4096];
            int byteSeq = strm.Read(buffer, 0, 4096);

            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }
            context.Response.BinaryWrite(buffer);
        }

        public Stream ShowEmpImage(string clientid)
        {
            string conn = ConfigurationManager.ConnectionStrings["gt_ConStr"].ConnectionString; ;
            
            SqlConnection connection = new SqlConnection(conn);
            string sql = "SELECT AttachedFile FROM tblClientRegistration WHERE ClientId = @ClientId";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ClientId", clientid);
            connection.Open();
            object img = cmd.ExecuteScalar();
            try
            {
                return new MemoryStream((byte[])img);
            }
            catch
            {
                return null;
            }
            finally
            {
                connection.Close();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}