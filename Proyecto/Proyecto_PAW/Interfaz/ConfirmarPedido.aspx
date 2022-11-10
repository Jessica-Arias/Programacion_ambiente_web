<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="ConfirmarPedido.aspx.cs" Inherits="Proyecto_PAW.Interfaz.ConfirmarPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="wrapper fadeInDown mt-5">
            <div id="formContent">
                <h1 class="p-3" style="color: #39ace7">Su pedido se ha registrado con exito! Seleccione método de pago</h1>
                <!-- Login Form -->
                <form id="frUI" name="frUI" runat="server" method="post">
                    <div class="btn-group-vertical">
                        <asp:Button ID="Button1" runat="server" Text="Contraentrega" OnClick="Button1_Click" Width="320px" />   <asp:Button ID="Button2" runat="server" Text="Tarjeta" OnClick="Button2_Click" Width="320px" />
                    </div>
                    
                </form>
                
               
            </div>
        </div>
    </div>      <!--Cierra Container-->


</asp:Content>
