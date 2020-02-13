<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmInstrumentoEvaluacion.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmInstrumentoEvaluacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

        <h2><%: Title %></h2>
    <h3>Instrumentos de Evaluación.</h3>
        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eevaluador/frmRubricaOC.aspx">Rúbrica Observación de Aula </asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">Portafolio</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#">Cuestionario de Estudiantes</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#">Cuestionario de Conocimientos</asp:HyperLink>
      </p>
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Rúbrica de Aula</td>
                <td>
                    <asp:HyperLink ID="HyperLink4"  NavigateUrl="~/Eevaluador/frmRubricaOC.aspx" class="btn btn-default" runat="server">Descripción</asp:HyperLink>

                </td>
                <td>
                    <asp:HyperLink ID="HyperLink6"  NavigateUrl="#" class="btn btn-default" runat="server">Normativas</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>Portafolio</td>
                <td>
                    <asp:HyperLink ID="HyperLink7"  NavigateUrl="#" class="btn btn-default" runat="server">Descripción</asp:HyperLink>            
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink8"  NavigateUrl="#" class="btn btn-default" runat="server">Normativas</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>Cuestionario para Estudiantes</td>
                <td>
                    <asp:HyperLink ID="HyperLink9"  NavigateUrl="#" class="btn btn-default" runat="server">Descripción</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink10"  NavigateUrl="#" class="btn btn-default" runat="server">Normativas</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>Cuestionario de Conocimientos</td>
                <td>
                    <asp:HyperLink ID="HyperLink11"  NavigateUrl="#" class="btn btn-default" runat="server">Descripción</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink12"  NavigateUrl="#" class="btn btn-default" runat="server">Normativas</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>

                <td>&nbsp;</td>
                <td>

                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>

                    
                    <asp:HyperLink ID="HyperLink15"  NavigateUrl="~/frmNormativas.aspx" class="btn btn-primary btn-lg" runat="server">Informe Personal</asp:HyperLink>
                    
                </td>
                <td>
                    
                    <asp:HyperLink ID="HyperLink16"  NavigateUrl="~/frmNormativas.aspx" class="btn btn-primary btn-lg" runat="server">Informe General</asp:HyperLink>
                    
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />



</asp:Content>
