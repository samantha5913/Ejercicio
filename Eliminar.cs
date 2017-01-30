using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Produccion
{
    public class Eliminar : Conexión
    {
        public bool Elim_Estimado(string ID)
        {
            try
            {
                cmd = new SqlCommand("Borrar_Dato", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ID", System.Data.SqlDbType.VarChar).Value = ID;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Elim_Real(string ID)
        {
            try
            {
                cmd = new SqlCommand("Borrar_Real", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ID", System.Data.SqlDbType.VarChar).Value = ID;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Elim_Supervisor(string Usuario, string Contraseña)
        {
            try
            {
                cmd = new SqlCommand("ELIM_Supervisor", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Usuario", System.Data.SqlDbType.VarChar).Value = Usuario;
                cmd.Parameters.Add("@Contraseña", System.Data.SqlDbType.VarChar).Value = Contraseña;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Elim_Operador(string Nombre, string Contraseña)
        {
            try
            {
                cmd = new SqlCommand("ELIM_Operador", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value = Nombre;
                cmd.Parameters.Add("@Contraseña", System.Data.SqlDbType.VarChar).Value = Contraseña;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}