using AEROPUERTO.DATOS;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AEROPUERTO.LOGICA
{
    public class LViajero
    {
        Usuario Usuario = new Usuario();
        Viajero Viajero = new Viajero();
        public static String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        SqlConnection conexion = new SqlConnection(s);


        //METODO CREAR
        public void Crear(string nombre, string apellido1, string apellido2, string correo)
        {
            try
            {
                conexion.Open();

                int idCreador = Usuario.id;

                SqlCommand comando = new SqlCommand(" INSERT INTO VIAJERO VALUES( '" + idCreador + "','" + nombre + "','" + apellido1 + "','" + apellido2 + "','" + correo + "')", conexion);
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }

            conexion.Close();
        }

        //METODO EDITAR
        public void Editar(int id, string nombre, string apellido1, string apellido2, string correo)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand(" UPDATE VIAJERO SET NOMBRE ='" + nombre + "', APELLIDO1 ='" + apellido1 + "', APELLIDO2 ='" + apellido2 + "', CORREO ='" + correo + "' WHERE ID = '" + id + "'", conexion);
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
                SqlCommand comando = new SqlCommand(" DELETE VIAJERO WHERE ID = '" + id + "'", conexion);
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