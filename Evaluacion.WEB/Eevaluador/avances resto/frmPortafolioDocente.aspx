<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPortafolioDocente.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmPortafolioDocente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

          <h2><%: Title %></h2>
    <h3>Portafolio Docente</h3>
        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eseguridad/login.aspx">Rúbrica Observación de Aula </asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Eseguridad/crearusuario.aspx">Portafolio</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Eseguridad/cambiarClave.aspx">Cuestionario de Estudiantes</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Eseguridad/recuperarClave.aspx">Cuestionario de Conocimientos</asp:HyperLink>
      </p>
        <br />
        Es un instrumento que valora .....<br />
        <br />


    pasame el numero de Elio de agrorural please
                <dl>
                     <dd>
                         <pre>&nbsp;&nbsp;&nbsp; I NO LOGRADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; II EN PROCESO	III&nbsp;&nbsp;&nbsp; LOGRADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IV&nbsp;&nbsp;&nbsp; DESTACADO </pre>
                     </dd>
        </dl>
        Cada uno de los 5 criterios se valora usando una rubrica:<br />
        <br />
        <table class="nav-justified">
            <tr>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <asp:Button ID="Button15" runat="server" Text="Criterio 1" />
                </td>
                <td style="height: 26px">
                    <asp:Button ID="Button22" runat="server" Text="Criterio 2" />
                </td>
                <td style="height: 26px">
                    <asp:Button ID="Button23" runat="server" Text="Criterio 3" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <asp:Button ID="Button24" runat="server" Text="Criterio 4" />
                </td>
                <td style="height: 20px">
                    <asp:Button ID="Button25" runat="server" Text="Criterio 5" />
                </td>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
                    <asp:Button ID="Button21" runat="server" Text="Pautas para el portafolio" />
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                Criterio 1<br /> Aspectos: ....<br />
                <table class="nav-justified">
                    <tr>
                        <td style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 2</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 4</em></strong></td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                Criterio 2<br /> Aspectos: ....<br />
                <table class="nav-justified">
                    <tr>
                        <td style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 2</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 4</em></strong></td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                </table>
                
            </asp:View>
            <asp:View ID="View3" runat="server">
                Criterio 3<br /> Aspectos: ....<br />
                <table class="nav-justified">
                    <tr>
                        <td style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 2</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 4</em></strong></td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
                 Criterio 4<br /> Aspectos: ....<br />
                <table class="nav-justified">
                    <tr>
                        <td style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 2</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                        <td style="height: 20px"><strong><em>NIVEL 4</em></strong></td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                    </tr>
                </table>
            </asp:View>

        </asp:MultiView>
        


</asp:Content>
