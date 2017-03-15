using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
#region Namespace for Database Connection
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
#endregion
using System.Security.Cryptography;
using System.IO;

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
            SqlDa.Fill(Ds);
            CloseConn();
            return Ds;

        }
        #endregion
        #region Function For DataTable(Disconnected Mode)
        public DataTable FunDataTable(string Command)
        {
            OpenConn();
            SqlDa = new SqlDataAdapter(Command, SqlConn);
            Dt = new DataTable();
            SqlDa.Fill(Dt);
            CloseConn();
            return Dt;
        }
        #endregion
        #region Function for ExecuteNonQuery(Insert,Update,Delete)
        public int FunExecuteNonQuery(string Command)
        {
            OpenConn();
            Sqlcmd = new SqlCommand(Command, SqlConn);
            a = Sqlcmd.ExecuteNonQuery();
            CloseConn();
            return a;

        }
        #endregion
        #region Function For ExecuteReader fetch number of rows
        public SqlDataReader FunExecuteReader(string Command)
        {
            OpenConn();
            Sqlcmd = new SqlCommand(Command, SqlConn);
            SqlDr = Sqlcmd.ExecuteReader();
            return SqlDr;
        }
        #endregion
        #region Function for ExecuteScalar(Fetch a single value)
        public object FunExecuteScalar(string Command)
        {
            OpenConn();
            Sqlcmd = new SqlCommand(Command, SqlConn);
            ab = Sqlcmd.ExecuteScalar();
            CloseConn();
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

            a = Sqlcmd.ExecuteNonQuery();
            CloseConn();
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
            ab = Sqlcmd.ExecuteScalar();
            CloseConn();
            return ab;
        }
        #endregion

        #region Function for GenerateRondomNumber
        public string Get8Digits()
        {
            var bytes = new byte[4];
            var rng = RandomNumberGenerator.Create();
            rng.GetBytes(bytes);
            uint random = BitConverter.ToUInt32(bytes, 0) % 100000000;
            return String.Format("CL" + "{0:D8}", random);
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

        #region Function For DataTableStoreProcedure(Disconnected Mode)
        public DataTable FunDataTableSP(string Command, params SqlParameter[] parameters)
        {
            OpenConn();
            SqlDa = new SqlDataAdapter(Command, SqlConn);
            if (parameters != null && parameters.Length > 0)
            {
                foreach (var p in parameters)
                    SqlDa.SelectCommand.Parameters.Add(p);

                //Sqlcmd.Parameters.Add(p);
            }
            Dt = new DataTable();
            SqlDa.Fill(Dt);
            CloseConn();
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
            SqlDa.Fill(Ds);
            CloseConn();
            return Ds;

        }
        #endregion


        #region Function for GetUserIpAddress

        #endregion
    }
}


