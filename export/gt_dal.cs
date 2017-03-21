using System;
using System.Web;
#region Namespace for Database Connection
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
#endregion
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Net.Mail;

namespace export
{
    public class gt_dal
    {
        #region Variable for Database Connection
        SqlConnection SqlConn;
        SqlDataAdapter SqlDa;
        SqlCommand Sqlcmd;
        SqlDataReader SqlDr;
        DataTable Dt;
        DataSet Ds;
        int a;
        object ab;
        #endregion

        #region Function for Open Connection
        public void OpenConn()
        {
            if (SqlConn == null)
                SqlConn = new SqlConnection(ConfigurationManager.
                    ConnectionStrings["gt_ConStr"].ToString());
            if (SqlConn.State == ConnectionState.Closed)
                SqlConn.Open();

        }
        #endregion

        #region Function for Close Connection
        public void CloseConn()
        {
            if (SqlConn.State == ConnectionState.Open)
                SqlConn.Close();
        }
        #endregion

        #region Function for Dataset for Disconnected Mode
        public DataSet FunDataSet(string Commmand)
        {
            OpenConn();
            SqlDa = new SqlDataAdapter(Commmand, SqlConn);
            Ds = new DataSet();
            try
            {
                SqlDa.Fill(Ds);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

                CloseConn();
            }
            return Ds;

        }
        #endregion

        #region Function For DataTable(Disconnected Mode)
        public DataTable FunDataTable(string Command)
        {
            OpenConn();
            SqlDa = new SqlDataAdapter(Command, SqlConn);
            Dt = new DataTable();
            try
            {
                SqlDa.Fill(Dt);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                CloseConn();
            }
            return Dt;
        }
        #endregion

        #region Function for ExecuteNonQuery(Insert,Update,Delete)
        public int FunExecuteNonQuery(string Command)
        {
            OpenConn();
            Sqlcmd = new SqlCommand(Command, SqlConn);
            try
            {
                a = Sqlcmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                CloseConn();
            }
            return a;

        }
        #endregion

        #region Function For ExecuteReader fetch number of rows
        public SqlDataReader FunExecuteReader(string Command)
        {
            OpenConn();
            Sqlcmd = new SqlCommand(Command, SqlConn);

            try
            {
                SqlDr = Sqlcmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return SqlDr;
        }
        #endregion

        #region Function for ExecuteScalar(Fetch a single value)
        public object FunExecuteScalar(string Command)
        {
            OpenConn();
            Sqlcmd = new SqlCommand(Command, SqlConn);
            try
            {
                ab = Sqlcmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                CloseConn();
            }
            return ab;
        }
        #endregion

        #region Function for BulkInsert
        public void FuncBulkCopy(DataTable dt, string DestinationTable)
        {
            using (var bulkcopy = new SqlBulkCopy(SqlConn.ConnectionString, SqlBulkCopyOptions.KeepIdentity))
            {
                foreach (DataColumn col in dt.Columns)
                {
                    bulkcopy.ColumnMappings.Add(col.ColumnName, col.ColumnName);
                }
                bulkcopy.BulkCopyTimeout = 600;
                bulkcopy.DestinationTableName = DestinationTable;
                bulkcopy.WriteToServer(dt);
            }
        }
        #endregion

        #region Function for StoreProcedureExecuteNonQuery(Insert,Update,Delete)
        public int FunExecuteNonQuerySP(string Command, params SqlParameter[] parameters)
        {
            OpenConn();

            Sqlcmd = new SqlCommand(Command, SqlConn);
            Sqlcmd.CommandType = CommandType.StoredProcedure;

            if (parameters != null && parameters.Length > 0)
            {
                foreach (var p in parameters)
                    Sqlcmd.Parameters.Add(p);
            }
            try { a = Sqlcmd.ExecuteNonQuery(); }
            catch (Exception ex) { throw ex; }
            finally { CloseConn(); }
            return a;
        }
        #endregion

        #region Function for ExecuteScalar Store Procedure(Fetch a single value)
        public object FunExecuteScalarSP(string Command, params SqlParameter[] parameters)
        {
            OpenConn();
            Sqlcmd = new SqlCommand(Command, SqlConn);
            Sqlcmd.CommandType = CommandType.StoredProcedure;
            if (parameters != null && parameters.Length > 0)
            {
                foreach (var p in parameters)
                    Sqlcmd.Parameters.Add(p);
            }
            try
            {
                ab = Sqlcmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                CloseConn();
            }
            return ab;
        }
        #endregion

        #region Function For DataTable StoreProcedure (Disconnected Mode)
        public DataTable FunDataTableSP(string Command, params SqlParameter[] parameters)
        {
            OpenConn();
            SqlDa = new SqlDataAdapter(Command, SqlConn);
            SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (parameters != null && parameters.Length > 0)
            {
                foreach (var p in parameters)
                    SqlDa.SelectCommand.Parameters.Add(p);
            }
            Dt = new DataTable();
            try
            {
                SqlDa.Fill(Dt);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                CloseConn();
            }
            return Dt;
        }
        #endregion

        #region Function for Dataset SP for Disconnected Mode
        public DataSet FunDataSetSP(string Commmand, params SqlParameter[] parameters)
        {
            OpenConn();
            SqlDa = new SqlDataAdapter(Commmand, SqlConn);
            if (parameters != null && parameters.Length > 0)
            {
                foreach (var p in parameters)
                    Sqlcmd.Parameters.Add(p);
            }
            Ds = new DataSet();
            try
            {
                SqlDa.Fill(Ds);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                CloseConn();
            }
            return Ds;

        }
        #endregion

        //Add DB functions here





        //Add other functions below this



        #region Function for GenerateRondomNumber
        public string Get8Digits(string cbtype)
        {
            var bytes = new byte[4];
            var rng = RandomNumberGenerator.Create();
            rng.GetBytes(bytes);
            uint random = BitConverter.ToUInt32(bytes, 0) % 100000000;
            return String.Format(cbtype + "{0:D8}", random);
        }
        #endregion

        #region Function for Image to ByteArray
        public byte[] image2ByteArray(System.Drawing.Image imageIn)
        {
            MemoryStream ms = new MemoryStream();
            imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            return ms.ToArray();
        }
        #endregion

        #region Function for Document Type Check
        public string DocType(System.Web.UI.WebControls.FileUpload updoc)
        {
            string filePath = updoc.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);
            string contenttype = String.Empty;
            switch (ext)
            {
                case ".doc":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".docx":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".xls":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".xlsx":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".pdf":
                    contenttype = "application/pdf";
                    break;
            }
            return contenttype;
        }
        #endregion

        #region Function for Document to ByteArray
        public Byte[] Doc2ByteArray(System.Web.UI.WebControls.FileUpload upfile)
        {
            Byte[] ClientDocBytes = null;
            string contenttype = DocType(upfile);

            if (contenttype != String.Empty)
            {
                Stream fs = upfile.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                ClientDocBytes = br.ReadBytes((Int32)fs.Length);
                fs.Close();
                br.Close();
            }
            return ClientDocBytes;
        }
        #endregion

        #region Function for Get User IP Address
        public string GetUserIpAddress()
        {
            string ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(ip))
            {
                ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                if (ip == "::1") ip = "127.0.0.1"; // localhost
            }
            return ip;
        }
        #endregion

        #region Function for SQLParaMeter
        public SqlParameter SqlParam(string Pname, object Pvalue, SqlDbType Ptype)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = Pname;
            param.Value = Pvalue;
            param.SqlDbType = Ptype;
            return param;
        }
        #endregion

        #region Function for Download Document
        public void DocDownload(DataTable dt, string databytecolum, string dataconttype, string datafilename)
        {
            Byte[] bytes = (Byte[])dt.Rows[0][databytecolum];
            System.Web.HttpContext.Current.Response.Buffer = true;
            System.Web.HttpContext.Current.Response.Charset = "";
            System.Web.HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            System.Web.HttpContext.Current.Response.ContentType = dt.Rows[0][dataconttype].ToString();
            System.Web.HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename="
            + dt.Rows[0][datafilename].ToString());
            System.Web.HttpContext.Current.Response.BinaryWrite(bytes);
            System.Web.HttpContext.Current.Response.Flush();
            System.Web.HttpContext.Current.Response.End();
        }
        #endregion

        #region Function for Password Hash
        public string PassHash(string Password)
        {
            byte[] hs = new byte[50];
            string pass = Password;
            MD5 md5 = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(pass);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                hs[i] = hash[i];
                sb.Append(hs[i].ToString("x2"));
            }
            string hash_pass = sb.ToString();
            return hash_pass;
        }
        #endregion

        #region Function for SendMail
        public void SendMail(string Email, string Subject, string BodyText)
        {
            MailMessage message = new MailMessage();
            MailAddress Sender = new MailAddress(ConfigurationManager.AppSettings["smtpUser"], "Glocal Thinkers");
            MailAddress receiver = new MailAddress(Email);
            SmtpClient smtp = new SmtpClient()
            {
                Host = ConfigurationManager.AppSettings["smtpServer"],
                Port = Convert.ToInt32(ConfigurationManager.AppSettings["smtpPort"]),
                EnableSsl = true,
                Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["smtpUser"], ConfigurationManager.AppSettings["smtpPass"])
            };
            message.From = Sender;
            
            message.To.Add(receiver);
            message.Body = BodyText;
            message.Subject = Subject;
            message.IsBodyHtml = true;
            try
            {
                smtp.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion
    }
}

