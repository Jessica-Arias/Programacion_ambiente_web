<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="RegistrarU.aspx.cs" Inherits="Proyecto_PAW.Interfaz.RegistrarU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form2" runat="server">
        <table style="width: 400px;">
            <tr>
                <th>Datos enviados al servidor</th>
            </tr>
            <tr>
                <td>Nombre Usuario</td>
                <td><asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Correo</td>
                <td><asp:Label ID="lblCorreo" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td><asp:Label ID="lblContraseña" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Dirección</td>
                <td><asp:Label ID="lblDireccion" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Telefono</td>
                <td><asp:Label ID="lblTelefono" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                    <td colspan="2" align="right">
                        <asp:Button ID="btnRegresar" runat="server" class="btn btn-primary" Text="Regresar" OnClick="btnRegresar_Click"/>
                    </td>
            </tr>
        </table>
    </form>
</asp:Content>
