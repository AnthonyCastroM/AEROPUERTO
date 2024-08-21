using AEROPUERTO.LOGICA;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEROPUERTO.VISTAS
{
    public partial class Usuarios : System.Web.UI.Page
    {
        LUsuario lUsuario = new LUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }

        protected void BAGREGAR_Click(object sender, EventArgs e)
        {
            string nombre = TNOMBRE.Text.Trim();
            string apellido1 = TAPELLIDO1.Text.Trim();
            string apellido2 = TAPELLIDO2.Text.Trim();
            string correo = TCORREO.Text.Trim();
            string contrasena = TCONTRASENA.Text.Trim();

            lUsuario.Crear(nombre, apellido1, apellido2, correo, contrasena);

            LlenarGrid();
        }

        protected void BEDITAR_Click(object sender, EventArgs e)
        {
            int id = 0;
            int.TryParse(TID.Text.Trim(), out id);
            string nombre = TNOMBRE.Text.Trim();
            string apellido1 = TAPELLIDO1.Text.Trim();
            string apellido2 = TAPELLIDO2.Text.Trim();
            string correo = TCORREO.Text.Trim();
            string contrasena = TCONTRASENA.Text.Trim();

            lUsuario.Editar(id, nombre, apellido1, apellido2, correo, contrasena);

            LlenarGrid();
        }

        //METODO DE CREAR
        protected void BELIMINAR_Click(object sender, EventArgs e)
        {
            int id = 0;
            int.TryParse(TID.Text.Trim(), out id);

            lUsuario.Eliminar(id);

            LlenarGrid();
        }

        //LLENAR TABLA
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();  // Asegúrate de abrir la conexión manualmente
                using (SqlCommand cmd = new SqlCommand("SELECT ID, NOMBRE, APELLIDO1, APELLIDO2, CORREO FROM USUARIO", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridViewUsuarios.DataSource = dt;
                            GridViewUsuarios.DataBind();
                        }
                    }
                }
            }
        }

    }
}