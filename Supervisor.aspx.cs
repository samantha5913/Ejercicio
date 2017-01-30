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
    public partial class Supervisor : System.Web.UI.Page
    {
        Calcular cal = new Calcular();
        Almacenar Alm = new Almacenar();
        Eliminar Eli = new Eliminar();

        int hrs;
        int minn;
        int dias;
        int metros;
        string hras;
        string h;
        int h1;
        int h2;
        DateTime fechaH;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btncalcular_Click(object sender, EventArgs e)
        {
            
                Page.Validate("RFVDatoss");
                if (IsValid)
                {
                    // Limpiar Label //
                    lblhora.Text = "";
                    lbl1.Text = "";
                    lbl2.Text = "";
                    lbl3.Text = "";
                    

                    // Clase Operador // 
                    lbl1.Text += "" + cal.Operador(double.Parse(txtcantidad.Text), double.Parse(txtvelocidad.Text), double.Parse(txttiempoH.Text), double.Parse(txttiempoM.Text));

                    // Cantidad en metros entre velocidad de la máquina // 


                    double cantidad = double.Parse(txtcantidad.Text);
                    double velocidad = double.Parse(txtvelocidad.Text);

                    if (cantidad > 0)
                    {
                        metros = Convert.ToInt32(cantidad / velocidad);
                    }

                    // Calcular hora y días de producción de un lote. //
                    int valor1 = int.Parse((txthora.Text));
                    int valor2 = int.Parse((txtminuto.Text));
                    int valor3 = int.Parse((txttiempoH.Text));
                    int valor4 = int.Parse((txttiempoM.Text));

                    hrs = DateTime.MinValue.Hour;
                    minn = DateTime.MinValue.Minute;
                    dias = DateTime.MinValue.Day;

                    hrs = hrs + valor1 + valor3;
                    minn = minn + valor2 + Convert.ToInt32(metros) + valor4;

                    while (minn >= 60)
                    {
                        hrs += 1;
                        minn = minn - 60;
                    }

                    while (hrs >= 24)
                    {
                        dias += 1;
                        hrs = hrs - 24;
                    }


                    hras += +hrs + " : " + minn;
                    lbl2.Text += "" + hras.ToString();
                    lbl3.Text += "" + dias.ToString();

                    txthora.Text = "";
                    txtminuto.Text = "";
                    txthora.Text += hrs;
                    txtminuto.Text += minn;
                    txthora.Text = string.Format("{00:00}", hrs);
                    txtminuto.Text = string.Format("{00:00}", minn);

                    lblhora.Text = valor1 + " : " + valor2;
                    lblestimado.Text = valor3 + " : " + valor4;
                    lblfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");
                    fechaH = Convert.ToDateTime(lblfecha.Text);



                    if (hrs <= 18)
                    {
                        if (hrs >= 18 && minn >= 0)
                        {
                            h1 = hrs - 18;
                            h2 = minn;
                            h += +h1 + " : " + h2;

                            lblmensaje.Text = "Ha rebasado su turno por " + h + ", Favor de respetar su horario.";
                        }
                    }
           
                    if (hrs <= 6)
                    {
                        if (hrs >= 6 && minn >= 0)
                        {
                            h1 = hrs - 6;
                            h2 = minn;
                            h += +h1 + " : " + h2;

                            lblmensaje.Text = "Ha rebasado su turno por " + h + ", Favor de respetar su horario.";
                        }
                    } 
                       
                }
                Page.Validate("RFVDatoss");
                if (IsValid)
                    if (Alm.Reg_Estimado(ddlprensa.Text, txtOrden.Text, txtcantidad.Text, txtvelocidad.Text, lblestimado.Text, lblhora.Text, lbl3.Text, lbl2.Text, lbl1.Text, lblfecha.Text))
                    {


                        dgvdatos.DataBind();


                        txtOrden.Text = "";
                        txtcantidad.Text = "";
                        txtvelocidad.Text = "";
                        txttiempoH.Text = "";
                        txttiempoM.Text = "";


                    }
                    else
                    {
                        lblmensaje.Text = ("No es posible almacenar");
                        txtOrden.Text = "";
                        txtcantidad.Text = "";
                        txtvelocidad.Text = "";
                        txttiempoH.Text = "";
                        txttiempoM.Text = "";
                    }
            }
        


        protected void btneliminar_Click(object sender, EventArgs e)
        {
            Page.Validate("RFVEliminar");
            if (IsValid)
            if (Eli.Elim_Estimado(txteliminar.Text))
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