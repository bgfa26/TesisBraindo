using Braindo.Controller.PsychologistModule;
using Braindo.Common;
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

        private Psychologist psycho;
        private Psychologist psychoConsulted;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Session["USER_ID"] != null)
                {
                    String idSession = Session["USER_ID"].ToString();
                    int id = Convert.ToInt32(idSession);
                    psycho = new Psychologist(id);

                    ConsultPsychoInformationCommand psychoConsult = new ConsultPsychoInformationCommand(psycho);

                    try
                    {
                        psychoConsult.execute();
                        psychoConsulted = psychoConsult.getAnswer();

                        String name = psychoConsulted._Name;
                        String surname = psychoConsulted._Surname;

                        //anchorPsycho.Attributes["data-toggle"] = "dropdown";
                        //anchorPsycho.Attributes.Add("class", "dropdown-toggle");
                        anchorPsycho.InnerText = name + " " + surname;



                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
                else
                {
                    Response.Redirect("~/View/Home/index.aspx", false);
                }
            }
        }

        protected void logout_click(object sender, EventArgs e)
        {
            Session.Remove("USER_ID");
            Session.RemoveAll();
            Response.Redirect("~/View/Home/index.aspx", false);
        }
    }
}