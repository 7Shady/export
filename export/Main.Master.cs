using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace export
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
           
        }
        protected string SetCssClass(string page)
        {
            return Request.Url.AbsolutePath.ToLower().EndsWith(page.ToLower()) ? "active-menu-li" : "";
        }

        
    }
}