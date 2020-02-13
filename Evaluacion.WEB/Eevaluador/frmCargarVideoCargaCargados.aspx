<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCargarVideoCargaCargados.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmCargarVideoCargaCargados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

    

        <h2><%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%></h2>
    <h3>Rúbrica de Observación de Clases.</h3>
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
        Es un instrumento que valora .....<br />
        <br />
                <dl>
                    <dd>
                        <pre>&nbsp;&nbsp;&nbsp; I NO LOGRADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; II EN PROCESO	III&nbsp;&nbsp;&nbsp; LOGRADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IV&nbsp;&nbsp;&nbsp; DESTACADO </pre>
                    </dd>
        </dl>
        INSTRUCCIONES: ........... (seleec)<br />
    
    <iframe width="560"  height="315" src="https://www.youtube.com/embed/aHl7fayjyrw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <br />
&nbsp;<%--<asp:DropDownList ID="ddldocente" runat="server" DataSourceID="dsDocente" DataTextField="T_Nombres" DataValueField="ID_Persona">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsDocente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [p_persona] WHERE ([ID_Distrito] = @ID_Distrito)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlDistrito" Name="ID_Distrito" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>--%><table class="nav-justified">
                    <tr>
                        <td class="text-center" style="height: 20px">Región&nbsp; </td>
                        <td style="height: 20px">
                            <asp:DropDownList ID="ddlRegion" runat="server" AutoPostBack="True" DataSourceID="dsRegion" DataTextField="T_Nombre" DataValueField="ID_Region">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsRegion" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [p_region] WHERE ([T_EstadoRegistro] = @T_EstadoRegistro) ORDER BY [T_Nombre]">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="T_EstadoRegistro" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 26px">IESP</td>
                        <td style="height: 26px">
                            <asp:DropDownList ID="ddlSP" runat="server" DataSourceID="dsIESPP" DataTextField="T_Nombre" DataValueField="ID_instituto" AutoPostBack="True" >
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsIESPP" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="sp_SeleccionarIESPxREgion" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlRegion" Name="region" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                           
                        </td>
                        <td style="height: 26px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center">&nbsp;</td>
                        <td>
                            <%--            </ContentTemplate>
        </asp:UpdatePanel>
        <br />--%>
                            <asp:SqlDataSource ID="dsDocente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="sp_SeleccionardocentexISP" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlSP" Name="id_instituto" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
<%--            </ContentTemplate>
        </asp:UpdatePanel>
        <br />--%>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="dsDocente" OnRowCommand="GridView1_RowCommand1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
     <%--   <asp:Button ID="Button1" runat="server" Text="Siguiente" OnClick="Button1_Click" />--%>
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
