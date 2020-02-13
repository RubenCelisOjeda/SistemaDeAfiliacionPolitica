<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alertas.aspx.cs" Inherits="Evaluacion.WEB.EdigitadorAlertas.Alertas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../Style/CssAlertas.css" rel="stylesheet" />

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="form-group">
                <h2>EXPORTAR EVALUACION</h2>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-1" style="margin-left:-100px">
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" class="btn btn-info" OnClick="Button1_Click" Text="Exportar" Font-Bold="True" Style="font-size: small" />
            </div>

        </div>

        <div class="col-md-1">
            <div class="form-group">
                <asp:Button ID="btnUpdate" runat="server" class="btn btn-info" Text="Actualizar" Font-Bold="True" Style="font-size: small" OnClick="btnUpdate_Click" />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12" style="margin-left:-100px">
            <div class="form-group">
                <asp:GridView ID="gvExportarTodo" runat="server" AutoGenerateColumns="False" CssClass="table-bordered table-hover" DataSourceID="exportarTodo" ForeColor="#333333" GridLines="None" BorderStyle="Dotted" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>

                        <asp:TemplateField ItemStyle-Width="40">
                            <ItemTemplate>
                                <asp:Button ID="btnSeleccionar" runat="server" Text="Ver reporte" OnClick="btnSeleccionar_Click" CssClass="btn btn-success btn-sm"  Width="80"/>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="videoid" HeaderText="IdVideo" SortExpression="videoid" ItemStyle-Width="50" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC"></ControlStyle>
                            <ItemStyle HorizontalAlign="Center" BackColor="#FFFFCC" BorderWidth="1px" BorderStyle="Dotted" ForeColor="#003366"></ItemStyle>
                        </asp:BoundField>

                        <asp:BoundField DataField="evaluador" HeaderText="Evaluador" ItemStyle-Width="50" SortExpression="evaluador" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center" Visible="true">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="docente" HeaderText="docente" SortExpression="docente" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center" Visible="False">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="fechaCreacion" HeaderText="Fec. Registro" SortExpression="fechaCreacion" ItemStyle-Width="120" />
                        <asp:BoundField DataField="EstadoEvaluacion" HeaderText="Estado Evaluación" SortExpression="EstadoEvaluacion" ItemStyle-Width="120" />

                        <asp:BoundField DataField="t_nombres" HeaderText="Nombres" SortExpression="t_nombres" ItemStyle-Width="150" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>



                        <asp:BoundField DataField="t_apellidoPaterno" HeaderText="Apellido Paterno" ItemStyle-Width="120" SortExpression="t_apellidoPaterno" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="t_apellidoMaterno" HeaderText="Apellido Materno" ItemStyle-Width="120" SortExpression="t_apellidoMaterno" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">


                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="id_docente" HeaderText="N° Filmación" ItemStyle-Width="80" SortExpression="id_docente" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>


                        <asp:TemplateField HeaderText="video" SortExpression="video" ItemStyle-Width="90">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("video") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# Bind("video") %>'><%# Eval("video") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--  <asp:BoundField DataField="evaluador" HeaderText="evaluador" SortExpression="evaluador" ItemStyle-Width="70" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">

                        <ControlStyle BackColor="#FFFFCC" />
                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                    </asp:BoundField>--%>

                        <asp:BoundField Visible="false" DataField="ficharegistro" HeaderText="ficharegistro" SortExpression="ficharegistro" ControlStyle-BackColor="#FFFFCC" ItemStyle-Width="1000" ItemStyle-BackColor="#CCFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">


                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" Width="500" />
                        </asp:BoundField>

                        <asp:BoundField DataField="r1" HeaderText="D1" SortExpression="r1" ItemStyle-Width="30" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="r1Extra" HeaderText="D1 Adicional" ItemStyle-Width="80" SortExpression="r1Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="r2" HeaderText="D2" SortExpression="r2" ItemStyle-Width="30" ItemStyle-BackColor="#CCFFFF" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle BackColor="#CCFFFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="r2Extra" HeaderText="D2 Adicional" ItemStyle-Width="80" SortExpression="r2Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="r3" HeaderText="D3" SortExpression="r3" ItemStyle-Width="30" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="r3Extra" HeaderText="D3 Adicional" ItemStyle-Width="80" SortExpression="r3Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="r4" HeaderText="D4" ItemStyle-Width="30" SortExpression="r4" ItemStyle-BackColor="#CCFFFF" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle BackColor="#CCFFFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="r4Extra" HeaderText="D4 Adicional" ItemStyle-Width="80" SortExpression="r4Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="r5" HeaderText="D5" SortExpression="r5" ItemStyle-Width="30" ControlStyle-BackColor="#CCFFFF" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#CCFFFF" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="r5Extra" HeaderText="D5 Adicional" ItemStyle-Width="80" SortExpression="r5Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="IESP" HeaderText="IESP" ItemStyle-Width="120" SortExpression="r5Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>

                         <asp:BoundField DataField="REGION" HeaderText="REGION" ItemStyle-Width="120" SortExpression="r5Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                            <ControlStyle BackColor="#FFFFCC" />
                            <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                        </asp:BoundField>


                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

                <asp:SqlDataSource ID="exportarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="spr_Get_Report_Evaluaciones_Videos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>


    </div>

    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script type="text/javascript"> 

        $(document).ready(function () {

            $('input').addClass("mr-2");
            $('input').addClass("ml-2");
            $('input').addClass("mt-2");
            $('input').addClass("mb-2");
        });

    </script>



</asp:Content>
