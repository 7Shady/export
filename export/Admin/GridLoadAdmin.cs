using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace export.Admin
{
    public class GridLoadAdmin
    {
        gt_dal obj_gt_dal = new gt_dal();

        public void LoadGrid(string spname, string modetype, string parametrname, GridView Grid)
        {
            SqlParameter param2 = obj_gt_dal.SqlParam(parametrname, "", SqlDbType.VarChar);
            SqlParameter param3 = obj_gt_dal.SqlParam("@ModeType", modetype, SqlDbType.VarChar);

            DataTable sdt = obj_gt_dal.FunDataTableSP(spname, param2, param3);
            if (sdt.Rows.Count != 0)
            {
                Grid.DataSource = sdt;
                Grid.DataBind();
            }
        }
    }
}