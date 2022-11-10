<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="Proyecto_PAW.Interfaz.AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
          <h1 class="m-3">Agregar Producto</h1>

        <form id="frP" name="frP" method="post" runat="server">
            <div class="form-group">
                <label for="exampleFormControlInput1">Nombre</label><br />
                <asp:TextBox ID="nombreP" name="nombreP" runat="server" CausesValidation="False" required="required" class="form-control" placeholder="iPhone"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Cantidad</label>
                <asp:TextBox ID="cantidadP" name="cantidadP" placeholder="1" required="required" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Precio Unitario</label>
                <asp:TextBox ID="precioP" name="precioP" placeholder="$$$" required="required" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Imagen de producto</label><br />
                <asp:FileUpload ID="imagen" name="imagen" accept=".jpg" CssClass="form-control-file" runat="server" required="required" />
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Descripici&oacute;n</label><br />
                <asp:TextBox ID="descripcionP" runat="server" CssClass="form-control-plaintext" required="required" ></asp:TextBox>
            </div>
            <div class="form-group"><asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />

            </div>
           

        </form>

    </div>        <!--Cierra Container-->

</asp:Content>
