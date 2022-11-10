using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace Proyecto_PAW.Logica
{
    public class clsProducto : clsConexion
    {
        string tabla = "dbo.ProductosSet";
        protected string nombre, descripcion;
        protected int codigo, cantidad, precio;
        byte[] imagen;

        public clsProducto()
        {

        }

        // constructor
        public clsProducto(string nombre, int codigo, int cantidad, int precio, string descripcion, byte[] imagen)
        {
            this.nombre = nombre;
            this.codigo = codigo;
            this.cantidad = cantidad;
            this.precio = precio;
            this.descripcion = descripcion;
            this.imagen = imagen;
        }

        // métodos setter y getter
        public string Nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }

        public int Codigo
        {
            set { codigo = value; }
            get { return codigo; }
        }

        public int Cantidad
        {
            set { cantidad = value; }
            get { return cantidad; }
        }

        public int Precio
        {
            set { precio = value; }
            get { return precio; }
        }

        public string Descripcion
        {
            set { descripcion = value; }
            get { return descripcion; }
        }

        public byte[] Imagen
        {
            set { imagen = value; }
            get { return imagen; }
        }

        // comportamientos transaccionales
        public void insertar()
        {
            conectar(tabla);
            DataRow fila;
            fila = Data.Tables[tabla].NewRow();
            fila["nombre"] = Nombre;
            fila["codigo"] = Codigo;
            fila["cantidad"] = Cantidad;
            fila["precio"] = Precio;
            fila["descripcion"] = Descripcion;
            fila["imagen"] = Imagen;

            Data.Tables[tabla].Rows.Add(fila);
            adaptador.Update(Data, tabla);
        }
    }
}


        