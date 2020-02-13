<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cambiarClave.aspx.cs" Inherits="Evaluacion.WEB.Eseguridad.cambiarClave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Cambiar Contraseña.</h3>
        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eseguridad/login.aspx">Iniciar Sesión</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Eseguridad/crearusuario.aspx">Crear Usuario</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Eseguridad/cambiarClave.aspx">Cambiar Contraseña</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Eseguridad/recuperarClave.aspx">Recuperar Contraseña</asp:HyperLink>
      </p>
    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
        <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:ChangePassword>
</asp:Content>
