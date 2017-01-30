using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Produccion
{
    public partial class Eficiencia : System.Web.UI.Page
    {
        Calcular cal = new Calcular();
        Almacenar Alm = new Almacenar();
        Eliminar Eli = new Eliminar();

      


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncalcular_Click(object sender, EventArgs e)
        {
            Page.Validate("RFVDatoss");
            if (IsValid)
            {
                lblArreglo.Text = "";
                lblCambio.Text = "";
                lblfecha.Text = "";
                lblFin.Text = "";
                lblInicio.Text = "";
                lblvelocidad.Text = "";
                lbltestimado.Text = "";


                lbltestimado.Text += "" + cal.Operador01(double.Parse(txtmetros.Text), double.Parse(txthoraIni.Text), double.Parse(txtminutoIni.Text), double.Parse(ddlhoracambio.Text), double.Parse(ddlminutocambio.Text), double.Parse(ddlhoraajuste.Text), double.Parse(ddlminutoajuste.Text), double.Parse(ddlhorafin.Text), double.Parse(ddlminutofin.Text));
                lblvelocidad.Text += "" + cal.velocidades(int.Parse(txtmetros.Text), int.Parse(txthoraIni.Text), int.Parse(txtminutoIni.Text), int.Parse(ddlhoraajuste.Text), int.Parse(ddlminutoajuste.Text), int.Parse(ddlhorafin.Text), int.Parse(ddlminutofin.Text));

                int valor1 = int.Parse((txthoraIni.Text));
                int valor2 = int.Parse((txtminutoIni.Text));
                int valor3 = int.Parse((ddlhoracambio.Text));
                int valor4 = int.Parse((ddlminutocambio.Text));
                int valor5 = int.Parse((ddlhoraajuste.Text));
                int valor6 = int.Parse((ddlminutoajuste.Text));
                int valor7 = int.Parse((ddlhorafin.Text));
                int valor8 = int.Parse((ddlminutofin.Text));

                lblInicio.Text = valor1 + ":" + valor2;
                lblCambio.Text = valor3 + ":" + valor4;
                lblArreglo.Text = valor5 + ":" + valor6;
                lblFin.Text = valor7 + ":" + valor8;
                lblfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");



                if (Alm.Reg_Real(ddlprensa.Text, ddlturno.Text, txtnombre.Text, txtnomina.Text, txtorden.Text, txtmetros.Text, lblvelocidad.Text, lblInicio.Text, lblCambio.Text, lblArreglo.Text, lblFin.Text, lbltestimado.Text, lblfecha.Text))
                {
                    dgvdatos.DataBind();
                    txtorden.Text = "";
                    txtnombre.Text = "";
                    txtnomina.Text = "";
                    txtmetros.Text = "";
                }
                else
                {
                    lblmensaje.Text = ("No es posible almacenar");
                    txtorden.Text = "";
                    txtnombre.Text = "";
                    txtnomina.Text = "";
                    txtmetros.Text = "";
                }
            }
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
             Page.Validate("RFVEliminar");
             if (IsValid)
             {

                 if (Eli.Elim_Real(txteliminar.Text))
                 {

                     lblmensaje.Text = ("Eliminado");
                     dgvdatos.DataBind();


                     txteliminar.Text = "";
                 }

                 else
                 {
                     lblmensaje.Text = ("No es posible eliminar");

                     txteliminar.Text = "";
                 }
             }
        }
    }
}