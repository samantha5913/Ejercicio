using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data; 

namespace Produccion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            cn.ConnectionString = @"Data source  =  LENOVO-PC;  initial catalog  = CCLPRODUCCION; Integrated Security = True;";
            cmd.Connection = cn;
            cmd.CommandText = "Select * from Supervisor where Usuarios = '" + txtusuario.Text + "' and Contraseña = '" + txtcontraseña.Text + "'";
            int noRegistros = 0;
            cn.Open();
            noRegistros = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();
            cmd.CommandText = "Select * from Operador where Nombre = '" + txtusuario.Text + "' and Contraseña = '" + txtcontraseña.Text + "'";
            int noReg = 0;
            cn.Open();
            noReg = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();
            if (noRegistros > 0)
            {

                Server.Transfer("Supervisor.aspx");

            }
            if (noReg > 0)
            {
                Server.Transfer("OrdenProduccion.aspx");
            }
            else
            {
                lblmensaje.Text = "Usuario No Registrado.";
            }
        }

        protected void btncancelar_Click(object sender, EventArgs e)
        {
            txtusuario.Text = "";
            txtcontraseña.Text = "";   
        }
    }
}