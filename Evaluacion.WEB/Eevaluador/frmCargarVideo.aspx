<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCargarVideo.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmCargarVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <h3>Rúbrica de Observación de Clases.</h3>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <h4>Seleccione el ISP y Docente, para proceder con la carga de video</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <table class="nav-justified">
                <tr>
                    <td class="text-center" style="height: 20px">Región&nbsp; </td>
                    <td style="height: 20px">

                        <div class="form-group">
                            <asp:DropDownList ID="ddlRegion" runat="server" AutoPostBack="True" DataSourceID="dsRegion" DataTextField="T_Nombre" DataValueField="ID_Region" CssClass="form-control" Width="200">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsRegion" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [p_region] WHERE ([T_EstadoRegistro] = @T_EstadoRegistro) ORDER BY [T_Nombre]">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="T_EstadoRegistro" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="height: 26px">IESP</td>
                    <td style="height: 26px">

                        <div class="form-group">
                            <asp:DropDownList ID="ddlSP" runat="server" DataSourceID="dsIESPP" DataTextField="T_Nombre" DataValueField="ID_instituto" AutoPostBack="True" CssClass="form-control" Width="200">
                                <asp:ListItem Value="0">&lt;Seleccione un Item&gt;</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsIESPP" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="sp_SeleccionarIESPxREgion" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlRegion" Name="region" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>

                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Refrescar" CssClass="btn btn-success" />
                        </div>
                    </td>
                    <td style="height: 26px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">&nbsp;</td>
                    <td>

                        <asp:SqlDataSource ID="dsDocente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="sp_SeleccionardocentexISP" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlSP" Name="id_instituto" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>



    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="dsDocente" CssClass="table table-bordered table-hover" OnRowCommand="GridView1_RowCommand1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="974px">
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

    <br />
    <br />
    <br />

    <br />
    <br />

    <br />
    <br />

    <br />

</asp:Content>
