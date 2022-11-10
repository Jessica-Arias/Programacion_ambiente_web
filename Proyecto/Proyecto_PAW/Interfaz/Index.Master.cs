using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Proyecto_PAW.Interfaz
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ConfigurationManager.AppSettings["user"].ToString().Equals("null"))
            {
                this.HyperLink1.Text = "";
                this.HyperLink2.Enabled = true;
                this.HyperLink2.Visible = true;

                this.HyperLink2.Text = "Iniciar Sesión";
                this.HyperLink2.NavigateUrl = "Iniciar.aspx";

            }
            else
            {
                this.HyperLink1.Text = "Cerrar Sesión";
                this.HyperLink1.NavigateUrl = "cerrarsesion.aspx";
                this.HyperLink2.Enabled = false;
                this.HyperLink2.Visible = false;

            }
            if (ConfigurationManager.AppSettings["admin"].ToString().Equals("null"))
            {
                this.Hproductos.Text = "";
                this.Hproductos.Enabled = false;
                this.Hproductos.Visible = false;

                this.Hlistar.Text = "";
                this.Hlistar.Enabled = false;
                this.Hlistar.Visible = false;

                this.Hagregar.Text = "";
                this.Hagregar.Enabled = false;
                this.Hagregar.Visible = false;

                this.Mp.Text = "";
                this.Mp.Enabled = false;
                this.Mp.Visible = false;


                this.Mu.Visible = false;
                this.Mu.Enabled = false;
            }
            else
            {
                this.Hproductos.Enabled = true;
                this.Hproductos.Visible = true;

                this.Hlistar.Enabled = true;
                this.Hlistar.Visible = true;

                this.Hagregar.Enabled = true;
                this.Hagregar.Visible = true;

                this.Mp.Enabled = true;
                this.Mp.Visible = true;

                this.Mu.Visible = true;
                this.Mu.Enabled = true;
            }


            
        }
    }
}