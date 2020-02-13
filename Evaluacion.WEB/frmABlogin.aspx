<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmABlogin.aspx.cs" Inherits="Evaluacion.WEB.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
        <h2><%: Title %></h2>
    <h3>Iniciar Sesión.</h3>
        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eseguridad/login.aspx">Iniciar Sesión</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Eseguridad/crearusuario.aspx">Crear Usuario</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Eseguridad/cambiarClave.aspx">Cambiar Contraseña</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Eseguridad/recuperarClave.aspx">Recuperar Contraseña</asp:HyperLink>
      </p>
        EVALUACION DE PERMANENCIA PARA LA CARRERA PÚBLICA&nbsp; DOCENTE 2020 2020<br />
    <asp:Login ID="Login1" runat="server">
    </asp:Login>

</asp:Content>
