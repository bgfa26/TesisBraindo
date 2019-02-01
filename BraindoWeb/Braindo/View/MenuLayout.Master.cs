using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View
{
    public partial class MenuLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout_click(object sender, EventArgs e)
        {
            Session.Remove("USER_ID");
            Session.RemoveAll();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se ha cerrado la sesion');window.location.href='../IndexModule/LoginTest.aspx';", true);
        }
    }
}