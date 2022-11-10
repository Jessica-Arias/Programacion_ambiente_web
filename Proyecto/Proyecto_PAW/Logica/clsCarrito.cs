using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace Proyecto_PAW.Logica
{
    public class clsCarrito : clsConexion
    {
        string tabla = "dbo.Carrito";
        protected string nombre, descripcion;
        protected int codigo, cantidad, precio;

       
        public clsCarrito() { }
        // constructor
        public clsCarrito(string nombre, int codigo, int cantidad, int precio)
        {
            this.nombre = nombre;
            this.codigo = codigo;
            this.cantidad = cantidad;
            this.precio = precio;
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


            Data.Tables[tabla].Rows.Add(fila);
            adaptador.Update(Data, tabla);
        }
    }
}


