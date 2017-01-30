using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Produccion
{
    public class Conexión
    {
            public SqlConnection con = new SqlConnection(@"Data source = LENOVO-PC; initial catalog = CCLPRODUCCION; integrated security = true");
            public SqlDataAdapter da;
            public DataSet ds;
            public SqlCommand cmd;
            public DataTable dt = new DataTable();

    }
}