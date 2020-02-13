<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="seguridad.aspx.cs" Inherits="Evaluacion.WEB.Eseguridad.seguridad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
       <h1>Seguridad</h1>
          
   <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </AnonymousTemplate>
        <LoggedInTemplate>
            Bienenido:
            <asp:LoginName ID="LoginName1" runat="server"  />
            &nbsp;
            <asp:LoginStatus ID="LoginStatus2" runat="server" />
        </LoggedInTemplate>
</asp:LoginView>


    </div>

      <%--<asp:Button ID="Button4" runat="server" Text="Registro de usuarios" class="btn btn-default"  PostBackUrl="~/Eseguridad/crearusuario.aspx" />--%>
      <asp:Button ID="Button2" runat="server" Text="Cambio de contraseña" class="btn btn-default" PostBackUrl="~/Eseguridad/cambiarClave.aspx" />
      <%--<asp:Button ID="Button3" runat="server" Text="Recuperaciòn de contraseña" class="btn btn-default"  PostBackUrl="~/Eseguridad/recuperarClave.aspx" />--%>

    
</asp:Content>
