using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using Braindo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace Braindo.View.IndexModule
{
    public partial class Register : System.Web.UI.Page
    {

        private Psychologist _psychologist;
        private Psychologist _psychologistRegistered;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static String GenerateSHA256String(string inputString)
        {
            SHA256 sha256 = SHA256Managed.Create();
            byte[] bytes = Encoding.UTF8.GetBytes(inputString);
            byte[] hash = sha256.ComputeHash(bytes);
            return GetStringFromHash(hash);
        }

        private static string GetStringFromHash(byte[] hash)
        {
            StringBuilder result = new StringBuilder();

            for (int i = 0; i < hash.Length; i++)
            {
                result.Append(hash[i].ToString("X2"));
            }
            return result.ToString();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(cedula.Text);
            String email = correo.Text;
            String password = GenerateSHA256String(pass.Text);
            String firstName = primerNombre.Text;
            String secondName = segundoNombre.Text;
            String firstSurname = primerApellido.Text;
            String secondSurname = segundoApellido.Text;
            String registrationNumber = registro.Text;
            String birthdate = date.Value;

            DateTime oDate = DateTime.Parse(birthdate);

            _psychologist = new Psychologist(id, email, password, firstName, secondName, firstSurname, secondSurname, registrationNumber, oDate);

            RegisterPsychologistCommand cmd = new RegisterPsychologistCommand(_psychologist);

            try
            {
                cmd.execute();
                _psychologistRegistered = cmd.getAnswer();
                if (_psychologistRegistered._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Psicologo registrado con exito');window.location.href='LoginTest.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se pudo registrar el psicologo');window.location.href='LoginTest.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
    }
}