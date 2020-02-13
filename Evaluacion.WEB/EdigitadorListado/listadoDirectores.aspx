<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listadoDirectores.aspx.cs" Inherits="Evaluacion.WEB.EdigitadorListado.listadoDirectores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <h2>DATOS GENERALES DE APLICACIÓN</h2>
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
            
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXPORTAR" BackColor="#66FF33" Font-Bold="True" />
            
            <br />
           <asp:Panel ID="Panel1" runat="server" Height="700px" ScrollBars="Both">   
        <asp:GridView ID="GridView1" runat="server" Font-Size="XX-Small" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_deEncuestaDirfector" DataSourceID="dsEncuestaEstudiante" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
<%--                <asp:BoundField DataField="id_deEncuesta" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id_deEncuesta" />--%>
                <%--<asp:BoundField DataField="dniDocente" HeaderText="dniDocente" SortExpression="dniDocente" />--%>
                <%--<asp:BoundField DataField="id_deEncuestaDirfector" HeaderText="id_deEncuestaDirfector" SortExpression="id_deEncuestaDirfector" InsertVisible="False" ReadOnly="True" />--%>
                <asp:BoundField DataField="CodigoEncuesta" HeaderText="Codigo" SortExpression="CodigoEncuesta" />
                <asp:BoundField DataField="idDigitador" HeaderText="Digitador" SortExpression="idDigitador" />
                <asp:BoundField DataField="I1" HeaderText="1" SortExpression="I1" />
                <asp:BoundField DataField="I2" HeaderText="2" SortExpression="I2" />
                <asp:BoundField DataField="I3" HeaderText="3" SortExpression="I3" />
                <asp:BoundField DataField="II41" HeaderText="4.1" SortExpression="II41" />
                <asp:BoundField DataField="II42" HeaderText="4.2" SortExpression="II42" />
                <asp:BoundField DataField="II43" HeaderText="4.3" SortExpression="II43" />
                <asp:BoundField DataField="II44" HeaderText="4.4" SortExpression="II44" />
                <asp:BoundField DataField="II45" HeaderText="4.5" SortExpression="II45" />
                <asp:BoundField DataField="II46" HeaderText="4.6" SortExpression="II46" />
                <asp:BoundField DataField="II51" HeaderText="5.1" SortExpression="II51" />
                <asp:BoundField DataField="II52" HeaderText="5.2" SortExpression="II52" />
                <asp:BoundField DataField="II53" HeaderText="5.3" SortExpression="II53" />
                <asp:BoundField DataField="II54" HeaderText="5.4" SortExpression="II54" />
                <asp:BoundField DataField="II55" HeaderText="5.5" SortExpression="II55" />
                <asp:BoundField DataField="II56" HeaderText="5.6" SortExpression="II56" />
                <asp:BoundField DataField="II6" HeaderText="6" SortExpression="II6" />
                <asp:BoundField DataField="II7" HeaderText="7" SortExpression="II7" />
                <asp:BoundField DataField="III8" HeaderText="8" SortExpression="III8" />
                <asp:BoundField DataField="III9" HeaderText="9" SortExpression="III9" />
                <asp:BoundField DataField="III10" HeaderText="10" SortExpression="III10" />
                <asp:BoundField DataField="III11a" HeaderText="11" SortExpression="III11a" />
                <asp:BoundField DataField="III11b" HeaderText="11.1" SortExpression="III11b" />
                <asp:BoundField DataField="III12a" HeaderText="12" SortExpression="III12a" />
                <asp:BoundField DataField="III12b" HeaderText="12(otro)" SortExpression="III12b" />
                <asp:BoundField DataField="III13a" HeaderText="13(esp)" SortExpression="III13a" />
                <asp:BoundField DataField="III13b" HeaderText="13(No)" SortExpression="III13b" />
                <asp:BoundField DataField="III14" HeaderText="14" SortExpression="III14" />
                <asp:BoundField DataField="IV15" HeaderText="15" SortExpression="IV15" />
                <asp:BoundField DataField="IV16" HeaderText="16" SortExpression="IV16" />
                <asp:BoundField DataField="V17" HeaderText="17" SortExpression="V17" />
                <asp:BoundField DataField="V18" HeaderText="18" SortExpression="V18" />
                <asp:BoundField DataField="V19" HeaderText="19" SortExpression="V19" />
                <asp:BoundField DataField="VI20" HeaderText="20" SortExpression="VI20" />
                <asp:BoundField DataField="VI21" HeaderText="21" SortExpression="VI21" />
                <asp:BoundField DataField="VI22" HeaderText="22" SortExpression="VI22" />
                <asp:BoundField DataField="VI23" HeaderText="23" SortExpression="VI23" />
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
            SelectCommand="SELECT * FROM [DEencuestasDirector] where estado = 1"></asp:SqlDataSource>
            </asp:Panel>

</asp:Content>
