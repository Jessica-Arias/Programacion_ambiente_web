<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Proyecto_PAW.Interfaz.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="wrapper fadeInDown mt-5">
            <div id="formContent">
                <h1 class="p-3" style="color: #39ace7">Registro</h1>
                <!-- Login Form -->
                <form id="frUR" name="frUR" onsubmit="event.preventDefault(); registrarU();" method="post">
                    <input type="text" id="nombreU" class="fadeIn " name="nombreU" placeholder="Nombre de Usuario">
                    <label id="ErrorNombreU" style="display:none;">* Este campo es requerido.</label>
                    <input type="text" id="correoU" class="fadeIn " name="correoU" placeholder="Correo">
                    <label id="ErrorCorreoU" style="display:none;">* Este campo es requerido.</label>
                    <label id="ErrorCorreoU2" style="display:none;">* Correo no v&aacute;lido.</label>
                    <input type="text" id="contraseñaU" class="fadeIn " name="contraseñaU" placeholder="Contraseña">
                    <label id="ErrorContraseñaU" style="display:none;">* Este campo es requerido.</label>
                    <input type="text" id="direccionU" class="fadeIn " name="direccionU" placeholder="Dirección">
                    <label id="ErrorDireccionU" style="display:none;">* Este campo es requerido.</label>
                    <input type="text" id="telefonoU" class="fadeIn " name="telefonoU" placeholder="Teléfono">
                    <label id="ErrorTelefonoU" style="display:none;">* Este campo es requerido.</label>
                    <label id="ErrorTelefonoU1" style="display:none;">* Digite solo n&uacute;meros.</label>
                    <label id="ErrorTelefonoU2" style="display:none;">* Telefono no v&aacute;lido.</label>
                    
                    <input type="submit" class="fadeIn fourth" value="Registrar">
                </form>

                <!-- Remind Passowrd -->
                <div id="formFooter">
                </div>

            </div>
        </div>
    </div>      <!--Cierra Container-->
</asp:Content>
