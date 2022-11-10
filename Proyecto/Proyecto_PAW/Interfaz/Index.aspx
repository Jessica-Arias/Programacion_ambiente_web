<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto_PAW.Interfaz.Index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">

        <h1 class="m-3">Productos</h1>

        <div class="row">
            <div class="col-md-7 p-4">
        
                <!--Genera todos las cards de prductos-->
        
                <div class="card " style="width: 18rem; display:inline-block;">

                    <img src="img/i11.jpg" class="card-img-top" alt="...">
                    <div class="card-bo" method="POST">
                            <h5 class="card-title">Nombre Producto</h5>
                            <p class="card-text">Descripci&oacute;n</p>
                            <label for="cantidad">Cantidad</label>
                            <input type="number" name="cantidad" placeholder="Cantidad" value="1" class="form-control">
                            <button type="submit" class="btn btn-primary mt-3">Agregar al carro!</button>
                        </form>
                    </div>
                </div>    
            </div>
        


        <div class="col-md-5 p-4">
            <div class="card " style="width: 25rem; display:inline-block;">
                <div class="card-body">      
                    <h5 class="card-title">Carrito de Compras</h5>
                    <p class="card-text">Esto es lo que tienes hasta ahora!</p>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Valor</th>
                                <th>Acci&oacute;n</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Nombre producto</td>
                                <td>$ total</td>
                                <td><a href="" class="btn btn-warning">Eliminar</a></td>
                            </tr>
                        </tbody>
                    </table>
        
        
                    <h5>Total: $</h5>
                    <a href="" class="btn btn-primary">Comprar</a>
                </div>
            </div>
        </div>

    </div>      <!--Cierra Container-->
</asp:Content>
