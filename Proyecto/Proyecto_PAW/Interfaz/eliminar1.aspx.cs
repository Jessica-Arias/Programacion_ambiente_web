using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_PAW.Interfaz
{
    public partial class eliminar1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CadenaConexion = ConfigurationManager.ConnectionStrings["BDProyectoConnectionString"].ConnectionString;


            String id = Request.Params["codigo"];

            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "DELETE FROM ProductosSet WHERE codigo =" + id;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();
            cmd.ExecuteNonQuery();

            Response.Redirect("listar_productos.aspx");
        }
    }
}