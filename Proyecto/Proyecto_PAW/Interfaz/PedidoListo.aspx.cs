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
    public partial class PedidoListo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('Su pedido se ha realizado con éxito')</script>");

            string CadenaConexion = ConfigurationManager.ConnectionStrings["BDProyectoConnectionString"].ConnectionString;


            String id = Request.Params["codigo"];

            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "TRUNCATE TABLE carrito;";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();
            cmd.ExecuteNonQuery();

           


            Response.Redirect("Index1.aspx");

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index1.aspx");
        }
    }
}