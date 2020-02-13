<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRubricaOCResultados.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmRubricaOCResultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
        <h2>|<%: Title %></h2>
    <h3>Resultados de la rúbrica de observación de clases.</h3>
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
&nbsp;&nbsp;&nbsp;
        <br />
                <dl>
                    <dd>
                        <pre style="height: 110px">
             <table class="nav-justified" style="height: 61px; margin-bottom: 0px">
                        <tr>
                            
                            <td style="height: 54px">Docente:</td>
                            <td style="height: 54px">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td style="height: 54px">IESP:</td>
                            <td style="height: 54px">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            
                            <td>Región</td>
                            <td>
                                
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>Cod. Modular:</td>
                            <td>
                                
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>           

</pre>
                    </dd>
                    
        </dl>
                    
            <table class="nav-justified">
                <tr>
                    <td class="text-center" style="width: 143px">DESEMPEÑO</td>
                    <td>I</td>
                    <td>II</td>
                    <td>III</td>
                    <td>IV</td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 143px">Desempeño 1</td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 143px">Desempeño 2</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 143px">Desempeño 3</td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 143px">Desempeño 4</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">Desempeño 5</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">Desempeño 6</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>Promeio Final</td>
                    <td>XX.XX</td>
                </tr>
        </table>
        <br />
</asp:Content>
