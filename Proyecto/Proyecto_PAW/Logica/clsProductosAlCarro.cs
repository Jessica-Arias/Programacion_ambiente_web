using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_PAW.Logica
{
    public class clsProductosAlCarro 
    {
        public int Cantidad { get; set; }
        public int _IdProducto;
        private clsProducto _producto = null;

        public int IdProducto
        {
            get { return _IdProducto; }
            set
            {
                _producto = null;
                _IdProducto = value;
            }
        }
        public clsProducto Producto
        {
            get
            {
                if (_producto == null)
                {
                    _producto = new clsProducto(IdProducto);
                }
                return _producto;
            }
        }
        public string Descripcion
        {
            get { return Producto.Descripcion; }
        }
        public decimal PrecioUnitario
        {
            get { return Producto.Precio; }
        }
        public decimal Total
        {
            get { return PrecioUnitario * Cantidad; }
        }
        public clsProductosAlCarro(int pId)
        {
            IdProducto = pId;
        }
        public bool Equals(clsProductosAlCarro pItem)
        {
            return pItem.IdProducto == IdProducto;
        }


    }
}

    