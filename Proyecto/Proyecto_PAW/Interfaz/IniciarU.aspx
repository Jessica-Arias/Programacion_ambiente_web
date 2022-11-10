<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="IniciarU.aspx.cs" Inherits="Proyecto_PAW.Interfaz.IniciarU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form3" runat="server">
        <table style="width: 400px;">
            <tr>
                <th>Verifique los datos</th>
            </tr>
            <tr>
               
                <td><asp:Label ID="lblNombre" runat="server" Text="Label" Visible="false"></asp:Label></td>
            </tr>
            <tr>
             
                <td><asp:Label ID="lblContraseña" runat="server" Text="Label" Visible="false"></asp:Label></td>
            </tr>
            <tr>
                    <td colspan="2" align="right">
                        <asp:Button ID="btnRegresar" runat="server" class="btn btn-primary" Text="Regresar" OnClick="btnRegresar_Click"/>
                    </td>
            </tr>
        </table>
    </form>
</asp:Content>
