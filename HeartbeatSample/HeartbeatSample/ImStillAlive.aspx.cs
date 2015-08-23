using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HeartbeatSample
{
    public partial class ImStillAlive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string name = Request.QueryString["name"].ToString();
            Response.Write("My name is: " + name + "\n");
            Response.Write("The time is: " + DateTime.Now);

        }
    }
}