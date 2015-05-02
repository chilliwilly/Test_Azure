using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAzure
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                String txtUsr = "$('#inputEmail').val('" + System.Environment.UserName + "');";
                ClientScript.RegisterStartupScript(typeof(string), "ServerControlScript", txtUsr, true);
            }
        }
    }
}