<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="Evaluacion.WEB.EAdmin.RegistrarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>Registrar Usuario</p>
      <p>&nbsp;</p>
      <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnCreatedUser="CreateUserWizard1_CreatedUser">
          <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
          <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
          <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <WizardSteps>
              <asp:CreateUserWizardStep runat="server" />
              <asp:CompleteWizardStep runat="server" />
          </WizardSteps>
          <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
          <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
          <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
          <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
          <StepStyle BorderWidth="0px" />
      </asp:CreateUserWizard>
      <p>&nbsp;</p>
      <p>Asignar Roles:</p>
      <p style="background-color: #CCCCCC">Usuario:<asp:DropDownList ID="ddlUsuarios" runat="server">
          <asp:ListItem>Seleccionar usuario</asp:ListItem>
          </asp:DropDownList>
          <asp:DropDownList ID="ddlPerfil" runat="server">
              <asp:ListItem>Seleccione Rol</asp:ListItem>
              <asp:ListItem>Evaluador</asp:ListItem>
              <asp:ListItem>Docente</asp:ListItem>
              <asp:ListItem>Administrador</asp:ListItem>
          </asp:DropDownList>
          <asp:Button ID="btnAsignar" runat="server" Text="Aceptar" />
      </p>

</asp:Content>
