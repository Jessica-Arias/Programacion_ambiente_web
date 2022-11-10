using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace Proyecto_PAW.Logica
{
    public class clsConexion
    {

        protected SqlDataReader reader;
        protected SqlDataAdapter adaptador;
        protected DataSet datos;
        protected SqlConnection conexion = new SqlConnection();

        public void conectar(string tabla)
        {
            string str = ConfigurationManager.ConnectionStrings["BDProyectoConnectionString"].ConnectionString;
            conexion.ConnectionString = str;

            conexion.Open();
            adaptador = new SqlDataAdapter("select * from " + tabla, conexion);
            SqlCommandBuilder respuesta = new SqlCommandBuilder(adaptador);

            Data = new DataSet();
            adaptador.Fill(Data, tabla);

            conexion.Close();
        }

        public DataSet Data
        {
            set { datos = value; }
            get { return datos; }
        }

        public SqlDataReader DataReader
        {
            set { reader = value; }
            get { return reader; }

        }
    }
}