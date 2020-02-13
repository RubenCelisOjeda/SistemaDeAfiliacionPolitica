<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PanelEncuestas.aspx.cs" Inherits="Evaluacion.WEB.Edigitador.PanelEncuestas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

        <h2><%--            </ContentTemplate>
        </asp:UpdatePanel>
        <br />--%></h2>
    <h3>Encuesta de Estudiantes -&nbsp; ALERTAS.</h3>
        <br />
        Es un instrumento que valora .....<br />
        <br />
                INSTRUCCION<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="dsDocente" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
        <asp:SqlDataSource ID="dsEcuesta" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [DEencuestas] WHERE [id_deEncuesta] = @original_id_deEncuesta" 
    InsertCommand="INSERT INTO [DEencuestas] ([dniDocente], [IA], [IB], [IC], [ID], [IE], [IF], [II1], [II2], [II3], [II4], [III1], [III2], [III3], [III4], [IV1], [IV2], [IV3], [IV4], [IV5], [IV6], [IV7], [IV8], [V1], [V2], [V3], [V4], [V5], [V6], [V7], [V8], [V9], [VI1], [VI2], [VI3], [VII1], [VII2], [VII3], [VIII1], [VIII2], [VIII3], [VIII4], [VIII5], [IX1], [IX2], [IX3], [IX4], [IX5], [IX6], [IX7], [IX8], [X1], [X2], [X3], [X4], [XI1], [XI2], [XII1], [XII2], [XII3], [XIII1], [XIII2], [XIII3], [XIV1], [XIV2], [XIV3]) VALUES (@dniDocente, @IA, @IB, @IC, @ID, @IE, @IF, @II1, @II2, @II3, @II4, @III1, @III2, @III3, @III4, @IV1, @IV2, @IV3, @IV4, @IV5, @IV6, @IV7, @IV8, @V1, @V2, @V3, @V4, @V5, @V6, @V7, @V8, @V9, @VI1, @VI2, @VI3, @VII1, @VII2, @VII3, @VIII1, @VIII2, @VIII3, @VIII4, @VIII5, @IX1, @IX2, @IX3, @IX4, @IX5, @IX6, @IX7, @IX8, @X1, @X2, @X3, @X4, @XI1, @XI2, @XII1, @XII2, @XII3, @XIII1, @XIII2, @XIII3, @XIV1, @XIV2, @XIV3)" OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [DEencuestas]" 
    UpdateCommand="UPDATE [DEencuestas] SET [dniDocente] = @dniDocente, [IA] = @IA, [IB] = @IB, [IC] = @IC, [ID] = @ID, [IE] = @IE, [IF] = @IF, [II1] = @II1, [II2] = @II2, [II3] = @II3, [II4] = @II4, [III1] = @III1, [III2] = @III2, [III3] = @III3, [III4] = @III4, [IV1] = @IV1, [IV2] = @IV2, [IV3] = @IV3, [IV4] = @IV4, [IV5] = @IV5, [IV6] = @IV6, [IV7] = @IV7, [IV8] = @IV8, [V1] = @V1, [V2] = @V2, [V3] = @V3, [V4] = @V4, [V5] = @V5, [V6] = @V6, [V7] = @V7, [V8] = @V8, [V9] = @V9, [VI1] = @VI1, [VI2] = @VI2, [VI3] = @VI3, [VII1] = @VII1, [VII2] = @VII2, [VII3] = @VII3, [VIII1] = @VIII1, [VIII2] = @VIII2, [VIII3] = @VIII3, [VIII4] = @VIII4, [VIII5] = @VIII5, [IX1] = @IX1, [IX2] = @IX2, [IX3] = @IX3, [IX4] = @IX4, [IX5] = @IX5, [IX6] = @IX6, [IX7] = @IX7, [IX8] = @IX8, [X1] = @X1, [X2] = @X2, [X3] = @X3, [X4] = @X4, [XI1] = @XI1, [XI2] = @XI2, [XII1] = @XII1, [XII2] = @XII2, [XII3] = @XII3, [XIII1] = @XIII1, [XIII2] = @XIII2, [XIII3] = @XIII3, [XIV1] = @XIV1, [XIV2] = @XIV2, [XIV3] = @XIV3 WHERE [id_deEncuesta] = @original_id_deEncuesta">
    <DeleteParameters>
        <asp:Parameter Name="original_id_deEncuesta" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="dniDocente" Type="String" />
        <asp:Parameter Name="IA" Type="String" />
        <asp:Parameter Name="IB" Type="Int32" />
        <asp:Parameter Name="IC" Type="String" />
        <asp:Parameter DbType="Date" Name="ID" />
        <asp:Parameter Name="IE" Type="String" />
        <asp:Parameter Name="IF" Type="String" />
        <asp:Parameter Name="II1" Type="String" />
        <asp:Parameter Name="II2" Type="String" />
        <asp:Parameter Name="II3" Type="String" />
        <asp:Parameter Name="II4" Type="String" />
        <asp:Parameter Name="III1" Type="Int32" />
        <asp:Parameter Name="III2" Type="Int32" />
        <asp:Parameter Name="III3" Type="Int32" />
        <asp:Parameter Name="III4" Type="Int32" />
        <asp:Parameter Name="IV1" Type="Int32" />
        <asp:Parameter Name="IV2" Type="Int32" />
        <asp:Parameter Name="IV3" Type="Int32" />
        <asp:Parameter Name="IV4" Type="Int32" />
        <asp:Parameter Name="IV5" Type="Int32" />
        <asp:Parameter Name="IV6" Type="Int32" />
        <asp:Parameter Name="IV7" Type="Int32" />
        <asp:Parameter Name="IV8" Type="Int32" />
        <asp:Parameter Name="V1" Type="Int32" />
        <asp:Parameter Name="V2" Type="Int32" />
        <asp:Parameter Name="V3" Type="Int32" />
        <asp:Parameter Name="V4" Type="Int32" />
        <asp:Parameter Name="V5" Type="Int32" />
        <asp:Parameter Name="V6" Type="Int32" />
        <asp:Parameter Name="V7" Type="Int32" />
        <asp:Parameter Name="V8" Type="Int32" />
        <asp:Parameter Name="V9" Type="Int32" />
        <asp:Parameter Name="VI1" Type="Int32" />
        <asp:Parameter Name="VI2" Type="Int32" />
        <asp:Parameter Name="VI3" Type="Int32" />
        <asp:Parameter Name="VII1" Type="Int32" />
        <asp:Parameter Name="VII2" Type="Int32" />
        <asp:Parameter Name="VII3" Type="Int32" />
        <asp:Parameter Name="VIII1" Type="Int32" />
        <asp:Parameter Name="VIII2" Type="Int32" />
        <asp:Parameter Name="VIII3" Type="Int32" />
        <asp:Parameter Name="VIII4" Type="Int32" />
        <asp:Parameter Name="VIII5" Type="Int32" />
        <asp:Parameter Name="IX1" Type="Int32" />
        <asp:Parameter Name="IX2" Type="Int32" />
        <asp:Parameter Name="IX3" Type="Int32" />
        <asp:Parameter Name="IX4" Type="Int32" />
        <asp:Parameter Name="IX5" Type="Int32" />
        <asp:Parameter Name="IX6" Type="Int32" />
        <asp:Parameter Name="IX7" Type="Int32" />
        <asp:Parameter Name="IX8" Type="Int32" />
        <asp:Parameter Name="X1" Type="Int32" />
        <asp:Parameter Name="X2" Type="Int32" />
        <asp:Parameter Name="X3" Type="Int32" />
        <asp:Parameter Name="X4" Type="Int32" />
        <asp:Parameter Name="XI1" Type="Int32" />
        <asp:Parameter Name="XI2" Type="Int32" />
        <asp:Parameter Name="XII1" Type="Int32" />
        <asp:Parameter Name="XII2" Type="Int32" />
        <asp:Parameter Name="XII3" Type="Int32" />
        <asp:Parameter Name="XIII1" Type="Int32" />
        <asp:Parameter Name="XIII2" Type="Int32" />
        <asp:Parameter Name="XIII3" Type="Int32" />
        <asp:Parameter Name="XIV1" Type="String" />
        <asp:Parameter Name="XIV2" Type="String" />
        <asp:Parameter Name="XIV3" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="dniDocente" Type="String" />
        <asp:Parameter Name="IA" Type="String" />
        <asp:Parameter Name="IB" Type="Int32" />
        <asp:Parameter Name="IC" Type="String" />
        <asp:Parameter DbType="Date" Name="ID" />
        <asp:Parameter Name="IE" Type="String" />
        <asp:Parameter Name="IF" Type="String" />
        <asp:Parameter Name="II1" Type="String" />
        <asp:Parameter Name="II2" Type="String" />
        <asp:Parameter Name="II3" Type="String" />
        <asp:Parameter Name="II4" Type="String" />
        <asp:Parameter Name="III1" Type="Int32" />
        <asp:Parameter Name="III2" Type="Int32" />
        <asp:Parameter Name="III3" Type="Int32" />
        <asp:Parameter Name="III4" Type="Int32" />
        <asp:Parameter Name="IV1" Type="Int32" />
        <asp:Parameter Name="IV2" Type="Int32" />
        <asp:Parameter Name="IV3" Type="Int32" />
        <asp:Parameter Name="IV4" Type="Int32" />
        <asp:Parameter Name="IV5" Type="Int32" />
        <asp:Parameter Name="IV6" Type="Int32" />
        <asp:Parameter Name="IV7" Type="Int32" />
        <asp:Parameter Name="IV8" Type="Int32" />
        <asp:Parameter Name="V1" Type="Int32" />
        <asp:Parameter Name="V2" Type="Int32" />
        <asp:Parameter Name="V3" Type="Int32" />
        <asp:Parameter Name="V4" Type="Int32" />
        <asp:Parameter Name="V5" Type="Int32" />
        <asp:Parameter Name="V6" Type="Int32" />
        <asp:Parameter Name="V7" Type="Int32" />
        <asp:Parameter Name="V8" Type="Int32" />
        <asp:Parameter Name="V9" Type="Int32" />
        <asp:Parameter Name="VI1" Type="Int32" />
        <asp:Parameter Name="VI2" Type="Int32" />
        <asp:Parameter Name="VI3" Type="Int32" />
        <asp:Parameter Name="VII1" Type="Int32" />
        <asp:Parameter Name="VII2" Type="Int32" />
        <asp:Parameter Name="VII3" Type="Int32" />
        <asp:Parameter Name="VIII1" Type="Int32" />
        <asp:Parameter Name="VIII2" Type="Int32" />
        <asp:Parameter Name="VIII3" Type="Int32" />
        <asp:Parameter Name="VIII4" Type="Int32" />
        <asp:Parameter Name="VIII5" Type="Int32" />
        <asp:Parameter Name="IX1" Type="Int32" />
        <asp:Parameter Name="IX2" Type="Int32" />
        <asp:Parameter Name="IX3" Type="Int32" />
        <asp:Parameter Name="IX4" Type="Int32" />
        <asp:Parameter Name="IX5" Type="Int32" />
        <asp:Parameter Name="IX6" Type="Int32" />
        <asp:Parameter Name="IX7" Type="Int32" />
        <asp:Parameter Name="IX8" Type="Int32" />
        <asp:Parameter Name="X1" Type="Int32" />
        <asp:Parameter Name="X2" Type="Int32" />
        <asp:Parameter Name="X3" Type="Int32" />
        <asp:Parameter Name="X4" Type="Int32" />
        <asp:Parameter Name="XI1" Type="Int32" />
        <asp:Parameter Name="XI2" Type="Int32" />
        <asp:Parameter Name="XII1" Type="Int32" />
        <asp:Parameter Name="XII2" Type="Int32" />
        <asp:Parameter Name="XII3" Type="Int32" />
        <asp:Parameter Name="XIII1" Type="Int32" />
        <asp:Parameter Name="XIII2" Type="Int32" />
        <asp:Parameter Name="XIII3" Type="Int32" />
        <asp:Parameter Name="XIV1" Type="String" />
        <asp:Parameter Name="XIV2" Type="String" />
        <asp:Parameter Name="XIV3" Type="String" />
        <asp:Parameter Name="original_id_deEncuesta" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
        <br />
<asp:SqlDataSource ID="dsEcuesta0" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [DEencuestas] WHERE ([dniDocente] = @dniDocente)">
    <SelectParameters>
        <asp:QueryStringParameter Name="dniDocente" QueryStringField="d" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_deEncuesta" DataSourceID="dsEcuesta0" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_deEncuesta" HeaderText="id_deEncuesta" InsertVisible="False" ReadOnly="True" SortExpression="id_deEncuesta" />
                <asp:BoundField DataField="dniDocente" HeaderText="dniDocente" SortExpression="dniDocente" />
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
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br /><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Siguiente" OnClick="Button1_Click" />
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
