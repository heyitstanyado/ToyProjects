using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxMathCalculator
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int Addition(int num1, int num2)
        {
            return num1 + num2; 
        }

        protected void btnHelloWorld_Click(object sender, EventArgs e)
        {
            lblHelloWorld.Text = "Hello, world - this is a new message. The time is now: " + DateTime.Now.ToLongDateString();
        }
    }
}