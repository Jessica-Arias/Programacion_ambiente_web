<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="Iniciar.aspx.cs" Inherits="Proyecto_PAW.Interfaz.Iniciar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="wrapper fadeInDown mt-5">
            <div id="formContent">
                <h1 class="p-3" style="color: #39ace7">Iniciar Sesi&oacute;n</h1>
                <!-- Login Form -->
                <form id="frUI" name="frUI" onsubmit="event.preventDefault(); iniciarU();" method="post">
                    <input type="text" id="nombre" class="fadeIn second" name="nombre" placeholder="Correo">
                    <label id="ErrorNombre" style="display:none;">* Este campo es requerido.</label>
                    <input type="text" id="contraseña" class="fadeIn third" name="contraseña" placeholder="Contraseña">
                    <label id="ErrorContraseña" style="display:none;">* Este campo es requerido.</label>
                    <input type="submit" class="fadeIn fourth" value="Log In">
                </form>

                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a class="underlineHover" href="Registrar.aspx">Crear Cuenta</a>
                </div>
            </div>
        </div>
    </div>      <!--Cierra Container-->
</asp:Content>
