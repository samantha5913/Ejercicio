using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Produccion
{
    public class Almacenar : Conexión
    {
        public bool Reg_Estimado(string Maquina, string teo, string metros, string velocidad, string arreglo, string inicio, string dias, string fin, string tiemposes, string fecha)
        {
            try
            {
                cmd = new SqlCommand("Guardar_Estimado", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Maquina", System.Data.SqlDbType.VarChar).Value = Maquina;
                cmd.Parameters.Add("@TEot", System.Data.SqlDbType.VarChar).Value = teo;
                cmd.Parameters.Add("@Metros", System.Data.SqlDbType.VarChar).Value = metros;
                cmd.Parameters.Add("@Velocidad", System.Data.SqlDbType.VarChar).Value = velocidad;
                cmd.Parameters.Add("@Arreglo", System.Data.SqlDbType.VarChar).Value = arreglo;
                cmd.Parameters.Add("@Inicio", System.Data.SqlDbType.VarChar).Value = inicio;
                cmd.Parameters.Add("@Dias", System.Data.SqlDbType.VarChar).Value = dias;
                cmd.Parameters.Add("@Fin", System.Data.SqlDbType.VarChar).Value = fin;
                cmd.Parameters.Add("@TimEstimado", System.Data.SqlDbType.VarChar).Value = tiemposes;
                cmd.Parameters.Add("@Fecha", System.Data.SqlDbType.Date).Value = fecha;
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

        public bool Reg_Real(string Prensa, string Turno, string Prensista, string Nomina, string Orden, string Metros, string Velocidad, string Inicio, string Cambio, string Arreglo, string Fin, string Real, string Fecha)
        {
            try
            {
                cmd = new SqlCommand("Guardara_Real", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Orden", System.Data.SqlDbType.VarChar).Value = Orden;
                cmd.Parameters.Add("@Prensa", System.Data.SqlDbType.VarChar).Value = Prensa;
                cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value = Prensista;
                cmd.Parameters.Add("@Turno", System.Data.SqlDbType.VarChar).Value = Turno;
                cmd.Parameters.Add("@Nomina", System.Data.SqlDbType.VarChar).Value = Nomina;
                cmd.Parameters.Add("@Metros", System.Data.SqlDbType.VarChar).Value = Metros;
                cmd.Parameters.Add("@Velocidad", System.Data.SqlDbType.VarChar).Value = Velocidad;
                cmd.Parameters.Add("@Inicio ", System.Data.SqlDbType.VarChar).Value = Inicio;
                cmd.Parameters.Add("@Cambio", System.Data.SqlDbType.VarChar).Value = Cambio;
                cmd.Parameters.Add("@Arreglo", System.Data.SqlDbType.VarChar).Value = Arreglo;
                cmd.Parameters.Add("@Fin", System.Data.SqlDbType.VarChar).Value = Fin;
                cmd.Parameters.Add("@Real", System.Data.SqlDbType.VarChar).Value = Real;
                cmd.Parameters.Add("@Fecha", System.Data.SqlDbType.Date).Value = Fecha;
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
        public bool Reg_Supervisor(string Usuario, string Contraseña)
        {
            try
            {
                cmd = new SqlCommand("ALM_Supervisor", con);
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
        public bool Reg_Operador(string Nombre, string Contraseña)
        {
            try
            {
                cmd = new SqlCommand("ALM_Operador", con);
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