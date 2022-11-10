using Proyecto_PAW.Logica;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_PAW.Interfaz
{
    public partial class AgregarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int tamanio = imagen.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[tamanio];
            imagen.PostedFile.InputStream.Read(ImagenOriginal, 0, tamanio);
            Bitmap ImagenOriginalBinaria = new Bitmap(imagen.PostedFile.InputStream);

            
            
            
            string ImagenDataURL64 = "data:image/jpg;base64" + Convert.ToBase64String(ImagenOriginal);




                string nombre, descripcion;
                int codigo, cantidad, precio;


                nombre = nombreP.Text;
                codigo = Convert.ToInt32(cantidadP.Text);
                cantidad = Convert.ToInt32(cantidadP.Text);
                precio = Convert.ToInt32(precioP.Text);
                descripcion = descripcionP.Text;

                clsProducto pr = new clsProducto(nombre, codigo, cantidad, precio, descripcion, ImagenOriginal);
                pr.insertar();

                Response.Redirect("AgregarProducto.aspx");

            
        }
    }
}