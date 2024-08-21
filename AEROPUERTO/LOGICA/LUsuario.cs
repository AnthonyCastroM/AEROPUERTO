using AEROPUERTO.DATOS;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AEROPUERTO.LOGICA
{
    public class LUsuario
    {
        Usuario Usuario = new Usuario();
        public static String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        SqlConnection conexion = new SqlConnection(s);

        //METODO QUE VALIDA EL USUARIO Y CONTRASENA INGRESADO DESDE LA VISTA DE LOGIN
        public bool Login(string usuario, string contrasena)
        {
            Usuario.correo = usuario;
            Usuario.contrasena = contrasena;

            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT CORREO, CONTRASENA, ID FROM USUARIO WHERE CORREO = '" + usuario + "' " +
                    "AND CONTRASENA = '" + contrasena + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Usuario.id = (int)registro["id"]; ;
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {

                throw;
            }

            conexion.Close();

        }

        //METODO CREAR
        public void Crear(string nombre, string apellido1, string apellido2, string correo, string contrasena)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO USUARIO VALUES( '" + nombre + "','" + apellido1 + "','" + apellido2 + "','" + correo + "','" + contrasena + "')", conexion);
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }

            conexion.Close();
        }

        //METODO EDITAR
        public void Editar(int id, string nombre, string apellido1, string apellido2, string correo, string contrasena)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand(" UPDATE USUARIO SET NOMBRE ='" + nombre + "', APELLIDO1 ='" + apellido1 + "', APELLIDO2 ='" + apellido2 + "', CORREO ='" + correo + "', CONTRASENA='" + contrasena + "' WHERE ID = '" + id + "'", conexion);
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }

            conexion.Close();
        }

        //METODO ELIMINAR
        public void Eliminar(int id)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand(" DELETE USUARIO WHERE ID = '" + id + "'", conexion);
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            conexion.Close();
        }


    }
}