using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.IO;


namespace Produccion
{
    public partial class V_OperadorXNombre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Img1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Img2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtfecha1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtfecha2.Text = Calendar2.SelectedDate.ToString("dd-MM-yyyy");
            Calendar2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView dg = new GridView();
            string attachment = "attachment; filename=Registrosdeloperador(Prensista).xls";
            Response.ClearContent();
            Response.AddHeader("content-disposition", attachment);
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            dg.DataSource = SqlDataSource1;
            dg.DataBind();
            dg.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
    }
}