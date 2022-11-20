using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vertiefungsprojekt_M151
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnClickLogin(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }


        protected void OnClickRegions(object sender, EventArgs e)
        {
            Response.Redirect("regions.aspx");
        }

        protected void OnClickInpressum(object sender, EventArgs e)
        {
            Response.Redirect("impressum.aspx");
        }
    }
}