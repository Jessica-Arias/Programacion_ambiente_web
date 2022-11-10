using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_PAW.Logica
{
    public class clsUsuarios : clsConexion
    {
        string tabla = "dbo.Usuarios";
        protected string nombre, direccion, contraseña, correo, telefono, tipo;

        // constructor
        public clsUsuarios(string nombre, string telefono, string direccion, string contraseña, string correo, string tipo)
        {
            this.nombre = nombre;
            this.telefono = telefono;
            this.direccion = direccion;
            this.contraseña = contraseña;
            this.correo = correo;
            this.tipo = tipo;
        }

        // métodos setter y getter
        public string Nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }

        public string Telefono
        {
            set { telefono = value; }
            get { return telefono; }
        }

        public string Direccion
        {
            set { direccion = value; }
            get { return direccion; }
        }

        public string Contraseña
        {
            set { contraseña = value; }
            get { return contraseña; }
        }

        public string Correo
        {
            set { correo = value; }
            get { return correo; }
        }

        public string Tipo
        {
            set { tipo = value; }
            get { return tipo; }
        }

        // comportamientos transaccionales
        public void insertar()
        {
            conectar(tabla);
            DataRow fila;
            fila = Data.Tables[tabla].NewRow();
            fila["nombre"] = Nombre;
            fila["telefono"] = Telefono;
            fila["direccion"] = Direccion;
            fila["contraseña"] = Contraseña;
            fila["correo"] = Correo;
            fila["tipo"] = Tipo;

            Data.Tables[tabla].Rows.Add(fila);
            adaptador.Update(Data, tabla);
        }
    }
}