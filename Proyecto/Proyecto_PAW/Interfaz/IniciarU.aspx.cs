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
    public partial class IniciarU : System.Web.UI.Page
    {
        string CadenaConexion = ConfigurationManager.ConnectionStrings["BDProyectoConnectionString"].ConnectionString;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.lblNombre.Text = Request.Form["nombre"].ToString();
                this.lblContraseña.Text = Request.Form["contraseña"].ToString();

                consulUsu(Request.Form["nombre"].ToString(), Request.Form["contraseña"].ToString());

            }
        }

        protected void consulUsu(String corr, String pss)
        {
            String c = "", p = "", a="";

            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT correo, contraseña, tipo FROM Usuarios WHERE correo = " + "'" +corr + "'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            SqlDataReader oReader = cmd.ExecuteReader();

            while (oReader.Read())
            {
                c = oReader["correo"].ToString();
                p = oReader["contraseña"].ToString();
                a = oReader["tipo"].ToString();
            }

            if (c.Equals(corr) && p.Equals(pss))
            {
                if (a.Equals("admin"))
                {
                    ConfigurationManager.AppSettings["admin"] = "admin";
                }


                ConfigurationManager.AppSettings["user"] = corr;
             
                Response.Redirect("Index1.aspx");
            }

            conexionSQL.Close();
        }
        

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Verifique los campos')</script>");
            Response.Redirect("Iniciar.aspx");
        }
    }
}