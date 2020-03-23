<%@ Page Title="Reporte afiliados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteAfiliados.aspx.cs" Inherits="Reniec_Afiliacion.Admin.ReporteAfiliados" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 
    <br />
    <div class="row">
        <div class="col-md-12 text-center">
            <div class="form-group">
                <h1>REPORTE DE AFILIADOS A <strong class="text-warning">HACER PAÍS</strong> </h1>
            </div>
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label class="text-dark">Buscar por / Región / Provincia / Distrito</label>
                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control" placeholder="Ingrese el valor para el buscar"  />
            </div>
            <div class="form-group">
                <asp:Button ID="btnBuscar" Text="Buscar" runat="server" CssClass="btn btn-success" OnClick="btnBuscar_Click"/>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:GridView  ID="griViewAfiliacones" runat="server"  DataKeyNames="Id,EstadoRegistro" CssClass="table table-bordered table-responsive" AllowPaging="True" PageSize="100" AutoGenerateColumns="False"  OnRowDataBound="griViewAfiliacones_RowDataBound">

            
                <Columns>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnExportarPdf" runat="server" Text="Exportar PDF" CssClass="btn btn-outline-dark" OnClick="btnExportarPdf_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Estado Registro">
                        <ItemTemplate>
                            <asp:DropDownList ID="drowListEstadoRegistro"  runat="server" CssClass="form-control bg-light" Width="150" AutoPostBack="true" OnSelectedIndexChanged="drowListEstadoRegistro_SelectedIndexChanged">
                                
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Id" HeaderText="Codigo" ItemStyle-Width="100" ItemStyle-Wrap="False" />
                    <asp:BoundField DataField="EstadoRegistro" HeaderText="Codigo" ItemStyle-Width="100" ItemStyle-Wrap="False"  Visible="false"/>
                    <asp:BoundField DataField="Alcanze_Organizacion" HeaderText="Alcanze nacional" ItemStyle-Width="300"/>
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" ItemStyle-Width="100" ItemStyle-Wrap="False" />
                    <asp:BoundField DataField="Apellido_Paterno" HeaderText="Apellido Paterno" ItemStyle-Width="300" ItemStyle-Wrap="False"  />
                    <asp:BoundField DataField="Apellid_Materno" HeaderText="Apellido Materno" ItemStyle-Width="300" ItemStyle-Wrap="False"  />
                    <asp:BoundField DataField="Dni" HeaderText="Dni" ItemStyle-Width="200" ItemStyle-Wrap="False"  />
                    <asp:BoundField DataField="Estado_Civil" HeaderText="Estado Civil" ItemStyle-Width="100" ItemStyle-Wrap="False"/>
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" ItemStyle-Width="200" ItemStyle-Wrap="False" />
                    <asp:BoundField DataField="Region" HeaderText="Región" ItemStyle-Width="100" ItemStyle-Wrap="False"  />
                    <asp:BoundField DataField="Provincia" HeaderText="Provincia" SortExpression="Provincia" />
                    <asp:BoundField DataField="Distrito" HeaderText="Distrito" SortExpression="Distrito" />
                    <asp:BoundField DataField="Lugar_Nacimiento" HeaderText="Lugar de Nacimiento" SortExpression="Lugar_Nacimiento" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

                </Columns>
             

                <HeaderStyle Font-Bold="True" ForeColor="White" BorderStyle="Solid" BackColor="#0066cc" HorizontalAlign="Center" BorderWidth="5" />
                <PagerSettings FirstPageText="" LastPageText="Ultimo" PageButtonCount="5" />
                <PagerStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Larger" Font-Underline="False" Height="0px" />

            </asp:GridView>
        </div>
    </div>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
</asp:Content>
