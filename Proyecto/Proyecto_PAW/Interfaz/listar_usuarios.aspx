<%@ Page Title="" Language="C#" MasterPageFile="~/Interfaz/Index.Master" AutoEventWireup="true" CodeBehind="listar_usuarios.aspx.cs" Inherits="Proyecto_PAW.Interfaz.listar_usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="container">
        <div class="wrapper fadeInDown mt-5">
            <div class="formContent" style="text-align:center">
                <h1 class="p-3" style="color: #39ace7; text-align:center">Usuarios
                </h1>

                  <form id="form1" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDProyectoConnectionString %>" SelectCommand="SELECT [codigo], [nombre], [contraseña], [correo], [direccion], [telefono], [tipo] FROM [Usuarios]" UpdateCommand="UPDATE Usuarios SET tipo = @tipo WHERE (codigo = @codigo)"></asp:SqlDataSource>
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
                    <asp:Label ID="Label0" runat="server" Text='<% # Bind("nombre") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Correo">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<% # Bind("correo") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                     <asp:Label ID="Label21" runat="server" Text='<% # Bind("correo") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Dirección">
                <EditItemTemplate>
                     <asp:Label ID="Label25" runat="server" Text='<% # Bind("direccion") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                     <asp:Label ID="Label22" runat="server" Text='<% # Bind("direccion") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Teléfono">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<% # Bind("telefono") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="Label32" runat="server" Text='<% # Bind("telefono") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Tipo">
                <ItemTemplate>
                    <asp:Label ID="Label51" runat="server" Text='<% # Bind("tipo") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtDescripcion" runat="server" Text='<%# Bind("tipo") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ButtonType="Link" ShowEditButton="true" />

            

            <asp:HyperLinkField DataNavigateUrlFields="codigo" DataNavigateUrlFormatString="eliminar2.aspx?codigo={0}" Text="Eliminar" />

            

        </Columns>
    </asp:GridView>

                  </form>
                </div>
        </div>
        <div id="formFooter">
                   <p>Estos son todos los usuarios</p>
                </div>
            
    </div>      <!--Cierra Container-->

 

</asp:Content>
