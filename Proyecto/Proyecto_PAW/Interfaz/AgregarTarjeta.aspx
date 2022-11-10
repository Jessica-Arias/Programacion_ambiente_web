<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="AgregarTarjeta.aspx.cs" Inherits="Proyecto_PAW.Interfaz.AgregarTarjeta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="wrapper fadeInDown mt-5">
            <div id="formContent">
                <h1 class="p-3" style="color: #39ace7">Tarjeta de pago</h1>
                <!-- Login Form -->
                <form id="frUI" name="frUI" method="post" runat="server">
                    <input type="text" id="num" class="fadeIn second" name="num" placeholder="Número de trajeta" required="required">
                    <div class=" btn-group-toggle btn-group-sm">
                        <input type="text" id="ccv" class="fadeIn third" style="width:170px" name="cvc" placeholder="CCV" required="required">
                    <input type="text" id="fecha" class="fadeIn third "  style="width:170px" name="cvc" placeholder="mm/aa" required="required">
                        <br />
                    </div>
                    <div>
                         <asp:Button ID="Button2" runat="server" Text="Confirmar" Width="220px" OnClick="Button2_Click" />
                    </div>
                   
                </form>

                <!-- Remind Passowrd -->
                
            </div>
        </div>
    </div>      <!--Cierra Container-->
</asp:Content>
