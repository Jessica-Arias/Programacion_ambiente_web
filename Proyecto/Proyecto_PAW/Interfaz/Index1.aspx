<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="Index1.aspx.cs" Inherits="Proyecto_PAW.Interfaz.Index11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
         <form runat="server">
        <h1 class="m-3">Productos</h1>

        <div class="row">
            <div class="col-md-7 p-4">
        
        <!--Genera todos las cards de prductos-->
       
            
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="card mt-2" style="width: 18rem; display:inline-block;">
                                    <img  class="card-img-top" alt="..." src="data:imagen/jpg;base64, <%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"Imagen")) %>"/>
                                
                                    <div class="card-bo p-2" method="POST">
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text=<%#DataBinder.Eval(Container.DataItem,"codigo") %>> </asp:Label>
                                        <h5 class="card-title"> <%#DataBinder.Eval(Container.DataItem,"nombre") %></h5>
                                        <p class="card-text"> <%#DataBinder.Eval(Container.DataItem,"descripcion") %> </p>
                                         <label for="cantidad">Cantidad</label>
                                         <input type="number" name=<%#DataBinder.Eval(Container.DataItem,"codigo") %> value="1" class="form-control" min="0" max="<%#DataBinder.Eval(Container.DataItem,"cantidad") %>">
                                        <asp:LinkButton ID="Button1" CssClass ="btn btn-primary mt-3" runat="server" Text="Agregar al carro!"  CommandArgument='<%#DataBinder.Eval(Container.DataItem,"codigo") %>' CommandName="ThisBtnClick" OnClick="MyBtnHandler" />
                               
                                    </div>
                                

                            </div>

                        </ItemTemplate>


                    </asp:Repeater>
                  
        
                 
            </div>
        


        <div class="col-md-5 p-4">
            <div class="card " style="width: 25rem; display:inline-block;">
                <div class="card-body">      
                    <h5 class="card-title">Carrito de Compras</h5>
                    <p class="card-text">Esto es lo que tienes hasta ahora!</p>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDProyectoConnectionString %>" SelectCommand="SELECT [nombre], [cantidad], [precio], [codigo] FROM [Carrito]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" CssClass="table" GridLines="None" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="codigo" >
                        <Columns>
                            <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" Visible="False" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad" />
                            <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
                            <asp:HyperLinkField DataNavigateUrlFields="codigo" DataNavigateUrlFormatString="eliminar.aspx?codigo={0}" Text="X" />
                        </Columns>
                    </asp:GridView>
                    <h5>Total: $ <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h5>
                    
                    <br />
                     <asp:LinkButton ID="ButtonComprar" CssClass ="btn btn-primary mt-3" runat="server" Text="Comprar!" OnClick="verificarInicio" />
                </div>
            </div>
        </div>
    </form>
    </div>      <!--Cierra Container-->
</asp:Content>

