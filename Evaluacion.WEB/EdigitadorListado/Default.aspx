<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Evaluacion.WEB.EdigitadorListado.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


 <h2>LISTADO DE ENCUESTAS Y EXPORTACION</h2>
        <br />
        Seleccione la Encuesta
    <br />
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td>
            
            <asp:HyperLink ID="HyperLink7"  NavigateUrl="~/EdigitadorListado/listado.aspx" class="btn btn-primary btn-lg" runat="server">Encuesta para el Estudiante</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
                <td>
            
<asp:HyperLink ID="HyperLink4"  NavigateUrl="~/EdigitadorListado/listadoDirectores.aspx" class="btn btn-primary btn-lg" runat="server">Datos Generales de aplicacion</asp:HyperLink>
                </td>
            </tr>
        </table>
    <br />
        <br />
            
    <br />
    <br />
    <br />
            
        <br />
        <br />
        <br />

</asp:Content>
