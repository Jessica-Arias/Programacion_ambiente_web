<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="PedidoListo.aspx.cs" Inherits="Proyecto_PAW.Interfaz.PedidoListo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="wrapper fadeInDown mt-5">
            <div id="formContent">
                <h1 class="p-3" style="color: #39ace7">Su pedido se esta listo! Confirme que se encuentre todo bien</h1>
                <!-- Login Form -->
                <form id="frUI" name="frUI" runat="server" method="post">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDProyectoConnectionString %>" SelectCommand="SELECT [nombre], [cantidad], [precio] FROM [Carrito]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad" />
                            <asp:BoundField DataField="precio" HeaderText="Subtotal" SortExpression="precio" />
                        </Columns>

                    </asp:GridView>


                    <div class="btn-group-vertical">
                        <asp:Button ID="Button1" runat="server" Text="Confirmar"  Width="320px" OnClick="Button1_Click" />   <asp:Button ID="Button2" runat="server" Text="Volver" Width="320px" OnClick="Button2_Click" />
                    </div>
                    
                </form>
                
               
            </div>
        </div>
    </div>      <!--Cierra Container-->

</asp:Content>
