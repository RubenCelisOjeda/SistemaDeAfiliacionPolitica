<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="crearusuario.aspx.cs" Inherits="Evaluacion.WEB.Eseguridad.crearusuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %></h2>
    <h3>Crear usuario.</h3>
        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eseguridad/login.aspx">Iniciar Sesión</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Eseguridad/crearusuario.aspx">Crear Usuario</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Eseguridad/cambiarClave.aspx">Cambiar Contraseña</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Eseguridad/recuperarClave.aspx">Recuperar Contraseña</asp:HyperLink>
      </p>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AccessKey="0" ContinueDestinationPageUrl="~/Default.aspx" FinishDestinationPageUrl="~/Eseguridad/crearusuario.aspx">
        <WizardSteps>

            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />

        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
