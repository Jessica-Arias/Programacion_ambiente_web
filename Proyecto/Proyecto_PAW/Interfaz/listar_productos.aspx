<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="listar_productos.aspx.cs" Inherits="Proyecto_PAW.Interfaz.listar_productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="wrapper fadeInDown mt-5">
            <div class="formContent" style="text-align:center">
                <h1 class="p-3" style="color: #39ace7">Productos</h1>

    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDProyectoConnectionString %>" SelectCommand="SELECT [codigo], [nombre], [cantidad], [precio], [descripcion] FROM [ProductosSet] ORDER BY [codigo]" UpdateCommand="UPDATE ProductosSet SET cantidad = @cantidad, precio = @precio, descripcion = @descripcion WHERE (codigo = @codigo)"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False"  DataKeyNames="codigo" DataSourceID="SqlDataSource1" GridLines="None" 
        class="table">
        <Columns>
            <asp:TemplateField HeaderText="Código">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<% # Bind("codigo") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                   <asp:Label ID="Label7" runat="server" Text='<% # Bind("codigo") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Nombre">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<% # Bind("nombre") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<% # Bind("nombre") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Cantidad">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<% # Bind("cantidad") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cantidad", "{0}") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Precio Unitario">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("precio") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<% # Bind("precio") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Descripción">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<% # Bind("descripcion") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtDescripcion" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ButtonType="Link" ShowEditButton="true" />

            

            <asp:HyperLinkField DataNavigateUrlFields="codigo" DataNavigateUrlFormatString="eliminar1.aspx?codigo={0}" Text="Eliminar" />

            

        </Columns>
    </asp:GridView>
</form>
<div id="formFooter">
                   <p>Estos son todos los productos</p>
                </div>
            </div>
        </div>
    </div>      <!--Cierra Container-->

</asp:Content>
