using Proyecto_PAW.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_PAW.Interfaz
{
    public partial class RegistrarU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //
            if (!IsPostBack)
            {
                string nombre, direccion, contraseña, correo, telefono;
                string tipo = "usuario";

                this.lblNombre.Text = Request.Form["nombreU"].ToString();
                this.lblCorreo.Text = Request.Form["correoU"].ToString();
                this.lblContraseña.Text = Request.Form["contraseñaU"].ToString();
                this.lblDireccion.Text = Request.Form["direccionU"].ToString();
                this.lblTelefono.Text = Request.Form["telefonoU"].ToString();

                nombre = Request.Form["nombreU"].ToString();
                direccion = Request.Form["direccionU"].ToString();
                contraseña = Request.Form["contraseñaU"].ToString();
                telefono = Request.Form["telefonoU"].ToString();
                correo = Request.Form["correoU"].ToString();

                clsUsuarios sg = new clsUsuarios( nombre,  telefono,  direccion,  contraseña,  correo, tipo);
                sg.insertar();


            }

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrar.aspx");
        }
    }
}