using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Proyecto_PAW.Interfaz
{
    public partial class cerrarsesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           ConfigurationManager.AppSettings["user"] = "null";
            ConfigurationManager.AppSettings["admin"] = "null";
            Response.Redirect("Index1.aspx");
            

        }
    }
}