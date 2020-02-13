<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Evaluacion.WEB.login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron">
            <asp:Login ID="Login" runat="server"  DestinationPageUrl="~/Default.aspx">
        </asp:Login>    
    </div>
    
    
</asp:Content>
