<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRubricaOCEvaluador.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmRubricaOCEvaluador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <%--<link href="../Content/bootstrap.min.css" rel="stylesheet" />--%>

    <h3>Rúbrica de Observación de Clases.</h3>
    <p>&nbsp;</p>


    Seleccione el IESP y docente a evaluar:<br />
    <table class="nav-justified">
        <tr>
            <td class="text-center" style="height: 20px">Región&nbsp; </td>
            <td style="height: 20px">
                <div class="form-group">
                    <asp:DropDownList ID="ddlRegion" runat="server" AutoPostBack="True" DataSourceID="dsRegion" DataTextField="T_Nombre" DataValueField="ID_Region" CssClass="form-control" Width="200">
                    </asp:DropDownList>
                </div>

                <asp:SqlDataSource ID="dsRegion" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Distinct * FROM [p_region] WHERE ([T_EstadoRegistro] = @T_EstadoRegistro) ORDER BY [T_Nombre]">
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

                <div class="form-group">
                    <asp:DropDownList ID="ddlSP" runat="server" DataSourceID="dsIESPP" DataTextField="T_Nombre" DataValueField="ID_instituto" AutoPostBack="True" CssClass="form-control" Width="200">
                    </asp:DropDownList>
                </div>

                <asp:Button ID="Button2" runat="server" Text="Buscar" Width="75px" CssClass="btn btn-success" />
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
                <asp:SqlDataSource ID="dsDocente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="sp_SeleccionardocentexISP2" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSP" Name="id_instituto" PropertyName="SelectedValue" Type="Int32" />
                        <asp:Parameter Name="evaluador" DbType="String"/>
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <%--            </ContentTemplate>
        </asp:UpdatePanel>
        <br />--%>
    <asp:Label ID="Label1" runat="server"></asp:Label>

    <br />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-hover" DataSourceID="dsDocente" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="953px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <br />


</asp:Content>
