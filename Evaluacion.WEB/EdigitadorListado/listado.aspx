<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listado.aspx.cs" Inherits="Evaluacion.WEB.EdigitadorListado.listado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <h2>ENCUESTAS PARA ESTUDIANTES</h2>
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
            
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXPORTAR" BackColor="#66FF33" Font-Bold="True" />
            
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="700px" ScrollBars="Both"> 
        <asp:GridView ID="GridView1" runat="server" Font-Size="XX-Small" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_deEncuesta" DataSourceID="dsEncuestaEstudiante" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
<%--                <asp:BoundField DataField="id_deEncuesta" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id_deEncuesta" />--%>
                <%--<asp:BoundField DataField="dniDocente" HeaderText="dniDocente" SortExpression="dniDocente" />--%>
                <asp:BoundField DataField="idEncuesta" HeaderText="idEncuesta" SortExpression="idEncuesta" />
                <asp:BoundField DataField="idDigitador" HeaderText="Digitador" SortExpression="idDigitador" />
                <asp:BoundField DataField="IA" HeaderText="A" SortExpression="IA" />
                <asp:BoundField DataField="IB" HeaderText="B" SortExpression="IB" />
                <asp:BoundField DataField="IC" HeaderText="C" SortExpression="IC" />
                <asp:BoundField DataField="ID" HeaderText="D" SortExpression="ID" />
                <asp:BoundField DataField="IE" HeaderText="E" SortExpression="IE" />
                <asp:BoundField DataField="IF" HeaderText="F" SortExpression="IF" />
                <asp:BoundField DataField="II1" HeaderText="2.1" SortExpression="II1" />
                <asp:BoundField DataField="II2" HeaderText="2.2" SortExpression="II2" />
                <asp:BoundField DataField="II3" HeaderText="2.3" SortExpression="II3" />
                <asp:BoundField DataField="II4" HeaderText="2.4" SortExpression="II4" />
                <asp:BoundField DataField="III1" HeaderText="3.1" SortExpression="III1" />
                <asp:BoundField DataField="III2" HeaderText="3.2" SortExpression="III2" />
                <asp:BoundField DataField="III3" HeaderText="3.3" SortExpression="III3" />
                <asp:BoundField DataField="III4" HeaderText="3.4" SortExpression="III4" />
                <asp:BoundField DataField="IV1" HeaderText="4.1" SortExpression="IV1" />
                <asp:BoundField DataField="IV2" HeaderText="4.2" SortExpression="IV2" />
                <asp:BoundField DataField="IV3" HeaderText="4.3" SortExpression="IV3" />
                <asp:BoundField DataField="IV4" HeaderText="4.4" SortExpression="IV4" />
                <asp:BoundField DataField="IV5" HeaderText="4.5" SortExpression="IV5" />
                <asp:BoundField DataField="IV6" HeaderText="4.6" SortExpression="IV6" />
                <asp:BoundField DataField="IV7" HeaderText="4.7" SortExpression="IV7" />
                <asp:BoundField DataField="IV8" HeaderText="4.8" SortExpression="IV8" />
                <asp:BoundField DataField="V1" HeaderText="5.1" SortExpression="V1" />
                <asp:BoundField DataField="V2" HeaderText="5.2" SortExpression="V2" />
                <asp:BoundField DataField="V3" HeaderText="5.3" SortExpression="V3" />
                <asp:BoundField DataField="V4" HeaderText="5.4" SortExpression="V4" />
                <asp:BoundField DataField="V5" HeaderText="5.5" SortExpression="V5" />
                <asp:BoundField DataField="V6" HeaderText="5.6" SortExpression="V6" />
                <asp:BoundField DataField="V7" HeaderText="5.7" SortExpression="V7" />
                <asp:BoundField DataField="V8" HeaderText="5.8" SortExpression="V8" />
                <asp:BoundField DataField="V9" HeaderText="5.9" SortExpression="V9" />
                <asp:BoundField DataField="VI1" HeaderText="6.1" SortExpression="VI1" />
                <asp:BoundField DataField="VI2" HeaderText="6.2" SortExpression="VI2" />
                <asp:BoundField DataField="VI3" HeaderText="6.3" SortExpression="VI3" />
                <asp:BoundField DataField="VII1" HeaderText="7.1" SortExpression="VII1" />
                <asp:BoundField DataField="VII2" HeaderText="7.2" SortExpression="VII2" />
                <asp:BoundField DataField="VII3" HeaderText="7.3" SortExpression="VII3" />
                <asp:BoundField DataField="VIII1" HeaderText="8.1" SortExpression="VIII1" />
                <asp:BoundField DataField="VIII2" HeaderText="8.2" SortExpression="VIII2" />
                <asp:BoundField DataField="VIII3" HeaderText="8.3" SortExpression="VIII3" />
                <asp:BoundField DataField="VIII4" HeaderText="8.4" SortExpression="VIII4" />
                <asp:BoundField DataField="VIII5" HeaderText="8.5" SortExpression="VIII5" />
                <asp:BoundField DataField="IX1" HeaderText="9.1" SortExpression="IX1" />
                <asp:BoundField DataField="IX2" HeaderText="9.2" SortExpression="IX2" />
                <asp:BoundField DataField="IX3" HeaderText="9.3" SortExpression="IX3" />
                <asp:BoundField DataField="IX4" HeaderText="9.4" SortExpression="IX4" />
                <asp:BoundField DataField="IX5" HeaderText="9.5" SortExpression="IX5" />
                <asp:BoundField DataField="IX6" HeaderText="9.6" SortExpression="IX6" />
                <asp:BoundField DataField="IX7" HeaderText="9.7" SortExpression="IX7" />
                <asp:BoundField DataField="IX8" HeaderText="9.8" SortExpression="IX8" />
                <asp:BoundField DataField="X1" HeaderText="10.1" SortExpression="X1" />
                <asp:BoundField DataField="X2" HeaderText="10.2" SortExpression="X2" />
                <asp:BoundField DataField="X3" HeaderText="10.3" SortExpression="X3" />
                <asp:BoundField DataField="X4" HeaderText="10.4" SortExpression="X4" />
                <asp:BoundField DataField="XI1" HeaderText="11.1" SortExpression="XI1" />
                <asp:BoundField DataField="XI2" HeaderText="11.2" SortExpression="XI2" />
                <asp:BoundField DataField="XII1" HeaderText="12.1" SortExpression="XII1" />
                <asp:BoundField DataField="XII2" HeaderText="12.2" SortExpression="XII2" />
                <asp:BoundField DataField="XII3" HeaderText="12.3" SortExpression="XII3" />
                <asp:BoundField DataField="XIII1" HeaderText="13.1" SortExpression="XIII1" />
                <asp:BoundField DataField="XIII2" HeaderText="13.2" SortExpression="XIII2" />
                <asp:BoundField DataField="XIII3" HeaderText="13.3" SortExpression="XIII3" />
                <asp:BoundField DataField="XIV1" HeaderText="14(1)" SortExpression="XIV1" />
                <asp:BoundField DataField="XIV2" HeaderText="14(2)" SortExpression="XIV2" />
                <asp:BoundField DataField="XIV3" HeaderText="14(3)" SortExpression="XIV3" />
                <asp:BoundField DataField="XIV22" HeaderText="14.2" SortExpression="XIV22" />
                <asp:BoundField DataField="XIV33" HeaderText="14.3" SortExpression="XIV33" />
                <asp:BoundField DataField="XIV44" HeaderText="14.4" SortExpression="XIV44" />
                <asp:BoundField DataField="fechaAplicacion" HeaderText="fechaAplicacion" SortExpression="fechaAplicacion" />
                <asp:BoundField DataField="horaAplicacion" HeaderText="horaAplicacion" SortExpression="horaAplicacion" />
                <asp:BoundField DataField="cantidadEstudiantes" HeaderText="cantidadEstudiantes" SortExpression="cantidadEstudiantes" />
       <%--         <asp:BoundField DataField="fechaRegistroSistema" HeaderText="fechaRegistroSistema" SortExpression="fechaRegistroSistema" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />--%>
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
        <asp:SqlDataSource ID="dsEncuestaEstudiante" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [DEencuestas] where estado = 1"></asp:SqlDataSource>
            </asp:Panel>    
        <br />
    <br />
    <br />
    <br />
            
        <br />
        <br />
        <br />
</asp:Content>
