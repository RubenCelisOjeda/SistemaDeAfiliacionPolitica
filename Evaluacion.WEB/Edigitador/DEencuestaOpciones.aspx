<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DEencuestaOpciones.aspx.cs" Inherits="Evaluacion.WEB.Edigitador.DEencuestaOpciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <h2>Encuestas </h2>
        <br />
        Seleccione la Encuesta
    <br />
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td>
            
            <asp:HyperLink ID="HyperLink7"  NavigateUrl="~/Edigitador/DEencuestaEstudiante.aspx" class="btn btn-primary btn-lg" runat="server">Encuesta para el Estudiante</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
                <td>
            
<asp:HyperLink ID="HyperLink4"  NavigateUrl="~/Edigitador/DEdatosGenerales.aspx" class="btn btn-primary btn-lg" runat="server">Datos Generales de aplicacion</asp:HyperLink>
                </td>
            </tr>
        </table>
    <br />
        <br />
            
        <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_deEncuesta" DataSourceID="dsEncuestaEstudiante" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id_deEncuesta" HeaderText="id_deEncuesta" InsertVisible="False" ReadOnly="True" SortExpression="id_deEncuesta" />
                <asp:BoundField DataField="dniDocente" HeaderText="dniDocente" SortExpression="dniDocente" />
                <asp:BoundField DataField="idEncuesta" HeaderText="idEncuesta" SortExpression="idEncuesta" />
                <asp:BoundField DataField="idDigitador" HeaderText="idDigitador" SortExpression="idDigitador" />
                <asp:BoundField DataField="IA" HeaderText="IA" SortExpression="IA" />
                <asp:BoundField DataField="IB" HeaderText="IB" SortExpression="IB" />
                <asp:BoundField DataField="IC" HeaderText="IC" SortExpression="IC" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="IE" HeaderText="IE" SortExpression="IE" />
                <asp:BoundField DataField="IF" HeaderText="IF" SortExpression="IF" />
                <asp:BoundField DataField="II1" HeaderText="II1" SortExpression="II1" />
                <asp:BoundField DataField="II2" HeaderText="II2" SortExpression="II2" />
                <asp:BoundField DataField="II3" HeaderText="II3" SortExpression="II3" />
                <asp:BoundField DataField="II4" HeaderText="II4" SortExpression="II4" />
                <asp:BoundField DataField="III1" HeaderText="III1" SortExpression="III1" />
                <asp:BoundField DataField="III2" HeaderText="III2" SortExpression="III2" />
                <asp:BoundField DataField="III3" HeaderText="III3" SortExpression="III3" />
                <asp:BoundField DataField="III4" HeaderText="III4" SortExpression="III4" />
                <asp:BoundField DataField="IV1" HeaderText="IV1" SortExpression="IV1" />
                <asp:BoundField DataField="IV2" HeaderText="IV2" SortExpression="IV2" />
                <asp:BoundField DataField="IV3" HeaderText="IV3" SortExpression="IV3" />
                <asp:BoundField DataField="IV4" HeaderText="IV4" SortExpression="IV4" />
                <asp:BoundField DataField="IV5" HeaderText="IV5" SortExpression="IV5" />
                <asp:BoundField DataField="IV6" HeaderText="IV6" SortExpression="IV6" />
                <asp:BoundField DataField="IV7" HeaderText="IV7" SortExpression="IV7" />
                <asp:BoundField DataField="IV8" HeaderText="IV8" SortExpression="IV8" />
                <asp:BoundField DataField="V1" HeaderText="V1" SortExpression="V1" />
                <asp:BoundField DataField="V2" HeaderText="V2" SortExpression="V2" />
                <asp:BoundField DataField="V3" HeaderText="V3" SortExpression="V3" />
                <asp:BoundField DataField="V4" HeaderText="V4" SortExpression="V4" />
                <asp:BoundField DataField="V5" HeaderText="V5" SortExpression="V5" />
                <asp:BoundField DataField="V6" HeaderText="V6" SortExpression="V6" />
                <asp:BoundField DataField="V7" HeaderText="V7" SortExpression="V7" />
                <asp:BoundField DataField="V8" HeaderText="V8" SortExpression="V8" />
                <asp:BoundField DataField="V9" HeaderText="V9" SortExpression="V9" />
                <asp:BoundField DataField="VI1" HeaderText="VI1" SortExpression="VI1" />
                <asp:BoundField DataField="VI2" HeaderText="VI2" SortExpression="VI2" />
                <asp:BoundField DataField="VI3" HeaderText="VI3" SortExpression="VI3" />
                <asp:BoundField DataField="VII1" HeaderText="VII1" SortExpression="VII1" />
                <asp:BoundField DataField="VII2" HeaderText="VII2" SortExpression="VII2" />
                <asp:BoundField DataField="VII3" HeaderText="VII3" SortExpression="VII3" />
                <asp:BoundField DataField="VIII1" HeaderText="VIII1" SortExpression="VIII1" />
                <asp:BoundField DataField="VIII2" HeaderText="VIII2" SortExpression="VIII2" />
                <asp:BoundField DataField="VIII3" HeaderText="VIII3" SortExpression="VIII3" />
                <asp:BoundField DataField="VIII4" HeaderText="VIII4" SortExpression="VIII4" />
                <asp:BoundField DataField="VIII5" HeaderText="VIII5" SortExpression="VIII5" />
                <asp:BoundField DataField="IX1" HeaderText="IX1" SortExpression="IX1" />
                <asp:BoundField DataField="IX2" HeaderText="IX2" SortExpression="IX2" />
                <asp:BoundField DataField="IX3" HeaderText="IX3" SortExpression="IX3" />
                <asp:BoundField DataField="IX4" HeaderText="IX4" SortExpression="IX4" />
                <asp:BoundField DataField="IX5" HeaderText="IX5" SortExpression="IX5" />
                <asp:BoundField DataField="IX6" HeaderText="IX6" SortExpression="IX6" />
                <asp:BoundField DataField="IX7" HeaderText="IX7" SortExpression="IX7" />
                <asp:BoundField DataField="IX8" HeaderText="IX8" SortExpression="IX8" />
                <asp:BoundField DataField="X1" HeaderText="X1" SortExpression="X1" />
                <asp:BoundField DataField="X2" HeaderText="X2" SortExpression="X2" />
                <asp:BoundField DataField="X3" HeaderText="X3" SortExpression="X3" />
                <asp:BoundField DataField="X4" HeaderText="X4" SortExpression="X4" />
                <asp:BoundField DataField="XI1" HeaderText="XI1" SortExpression="XI1" />
                <asp:BoundField DataField="XI2" HeaderText="XI2" SortExpression="XI2" />
                <asp:BoundField DataField="XII1" HeaderText="XII1" SortExpression="XII1" />
                <asp:BoundField DataField="XII2" HeaderText="XII2" SortExpression="XII2" />
                <asp:BoundField DataField="XII3" HeaderText="XII3" SortExpression="XII3" />
                <asp:BoundField DataField="XIII1" HeaderText="XIII1" SortExpression="XIII1" />
                <asp:BoundField DataField="XIII2" HeaderText="XIII2" SortExpression="XIII2" />
                <asp:BoundField DataField="XIII3" HeaderText="XIII3" SortExpression="XIII3" />
                <asp:BoundField DataField="XIV1" HeaderText="XIV1" SortExpression="XIV1" />
                <asp:BoundField DataField="XIV2" HeaderText="XIV2" SortExpression="XIV2" />
                <asp:BoundField DataField="XIV3" HeaderText="XIV3" SortExpression="XIV3" />
                <asp:BoundField DataField="XIV22" HeaderText="XIV22" SortExpression="XIV22" />
                <asp:BoundField DataField="XIV33" HeaderText="XIV33" SortExpression="XIV33" />
                <asp:BoundField DataField="XIV44" HeaderText="XIV44" SortExpression="XIV44" />
                <asp:BoundField DataField="fechaAplicacion" HeaderText="fechaAplicacion" SortExpression="fechaAplicacion" />
                <asp:BoundField DataField="horaAplicacion" HeaderText="horaAplicacion" SortExpression="horaAplicacion" />
                <asp:BoundField DataField="cantidadEstudiantes" HeaderText="cantidadEstudiantes" SortExpression="cantidadEstudiantes" />
                <asp:BoundField DataField="fechaRegistroSistema" HeaderText="fechaRegistroSistema" SortExpression="fechaRegistroSistema" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
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
        </asp:GridView>--%>
        <asp:SqlDataSource ID="dsEncuestaEstudiante" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DEencuestas]"></asp:SqlDataSource>
    
            </asp:Content>
