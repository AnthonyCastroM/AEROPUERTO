using AEROPUERTO.LOGICA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEROPUERTO.VISTAS
{
    public partial class Login : System.Web.UI.Page
    {
        LUsuario lUsuario = new LUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //BOTON DE INGRESO
        protected void bingresar_Click(object sender, EventArgs e)
        {
            string usuario = tusuario.Text;
            string contrasena = tclave.Text;
            bool respuesta = lUsuario.Login(usuario, contrasena);

            if (respuesta)
            {
                Response.Redirect("inicio.aspx");
            }
            else
            {
                lmensaje.Text = "¡Usuario o contraseña incorrecto!";
            }
        }
    }
}