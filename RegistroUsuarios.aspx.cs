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
    public partial class RegistroUsuarios : System.Web.UI.Page
    {
        Almacenar Alm = new Almacenar();
        Eliminar Eli = new Eliminar();
        Modificar Mod = new Modificar(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

            Page.Validate("RFVSupe");
            if (IsValid)
            {
                if (Alm.Reg_Supervisor(TxtNickName.Text, txtContraseña.Text))
                {
                    dgvdatossupervisor.DataBind();
                }
            }
        }

     

        protected void btneliminarsup_Click(object sender, EventArgs e)
        {
            Page.Validate("RFVSupe");
            if (IsValid)
            {
                if (Eli.Elim_Supervisor(TxtNickName.Text, txtContraseña.Text))
                {
                    dgvdatossupervisor.DataBind();
                }
            }
        }

        

        protected void btnmodificarsup_Click(object sender, EventArgs e)
        {
            Page.Validate("RFVSupe");
            if (IsValid)
            {
                if (Mod.Modi_Supervisor(TxtNickName.Text, txtContraseña.Text))
                {
                    dgvdatossupervisor.DataBind();
                }
            }
        }

        protected void btnguardaroperador_Click(object sender, EventArgs e)
        {
            Page.Validate("RFVOpe");
            if (IsValid)
            {
                if (Alm.Reg_Operador(txtnombre.Text, txtcontra.Text))
                {
                    gvdatosoperador.DataBind();
                }
            }
        }

        protected void btneliminaroperador_Click(object sender, EventArgs e)
        {
            Page.Validate("RFVOpe");
            if (IsValid)
            {
                if (Eli.Elim_Operador(txtnombre.Text, txtcontra.Text))
                {
                    gvdatosoperador.DataBind();
                }
            }
        }

        protected void btnmodificaroperador_Click(object sender, EventArgs e)
        {
            Page.Validate("RFVOpe");
            if (IsValid)
            {
                if (Mod.Modi_Operador(txtnombre.Text, txtcontra.Text))
                {
                    gvdatosoperador.DataBind();
                }
            }
        }

    }
}