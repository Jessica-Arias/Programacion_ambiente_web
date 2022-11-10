using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

using Proyecto_PAW.Logica;
using System.Configuration;

namespace Proyecto_PAW.Interfaz
{
    public partial class Index11 : System.Web.UI.Page
    {
        string CadenaConexion = ConfigurationManager.ConnectionStrings["BDProyectoConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultarImagenes();
            cargarTotal();
        }
        protected void ConsultarImagenes()
        {
            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT nombre, descripcion, cantidad, imagen, codigo FROM ProductosSet ORDER BY codigo ASC";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            DataTable ImagenesBD = new DataTable();
            ImagenesBD.Load(cmd.ExecuteReader());

            Repeater1.DataSource = ImagenesBD;
            Repeater1.DataBind();
            conexionSQL.Close();

        }

        protected void cargarTotal()
        {
            int total = 0;

            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Carrito";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            SqlDataReader oReader = cmd.ExecuteReader();

            while (oReader.Read())
            {
                total += int.Parse(oReader["precio"].ToString());
            }

            Label2.Text = total.ToString();
        }

        protected void MyBtnHandler(Object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;

            int codigo = int.Parse( btn.CommandArgument.ToString());
            String cantidad = Request.Form[codigo.ToString()].ToString();

            String nombreP ="", precio="", cantidadAc="";

            Response.Write("<script>alert('" +codigo + " Cantidad: "+ cantidad +  "')</script>");

            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM ProductosSet WHERE codigo = " + codigo ;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            SqlDataReader oReader = cmd.ExecuteReader();

            while (oReader.Read())
            {
                nombreP = oReader["nombre"].ToString();
                precio = oReader["precio"].ToString();
                cantidadAc = oReader["cantidad"].ToString();
            }


            Response.Write("<script>alert('" + nombreP + " Cantidad: " + precio + "')</script>");

            insertarCarrito(nombreP, cantidad, precio);
            alterCantidad(cantidad, cantidadAc, codigo);
            Response.Redirect("Index1.aspx");
        }

        private void insertarCarrito(String nombreP, String cantidad, String precio)
        {

            int pr = int.Parse(cantidad) * int.Parse(precio); 

            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            if (!nombreP.Equals(""))
            {
                cmd.CommandText = "INSERT INTO Carrito (nombre, cantidad, precio) VALUES ('" + nombreP + "'," + cantidad + ", " + pr + ")";
                cmd.CommandType = CommandType.Text;

                cmd.ExecuteNonQuery();
            }
        }

        private void alterCantidad(String cantidad, String cantidadAc, int codigo)
        {

            int cantRest = int.Parse(cantidadAc) - int.Parse(cantidad);

            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            cmd.CommandText = "UPDATE ProductosSet SET cantidad = " + cantRest + " WHERE codigo = " + codigo;
            cmd.CommandType = CommandType.Text;

            cmd.ExecuteNonQuery();

        }

        protected void verificarInicio(Object sender, EventArgs e)
        {
            String a = ConfigurationManager.AppSettings["user"];
            if (!a.Equals("null"))
            {
                Response.Redirect("ConfirmarPedido.aspx");
            }
            else
            {
                Response.Redirect("Iniciar.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

    }
}