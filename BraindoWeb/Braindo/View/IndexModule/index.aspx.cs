using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.IndexModule
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inicie sesion para ver esta ventana');window.location.href='LoginTest.aspx';", true);
            }
        }
    }
}
