<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="CalificacionFinalizada.aspx.cs" Inherits="Evaluacion.WEB.EdigitadorAlertas.CalificacionFinalizada" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../Style/CssCalificacionFinalizada.css" rel="stylesheet" />

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="form-group">
                <h1>Evaluaciones Finalizadas</h1>
            </div>
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="form-group">
                <asp:Label ID="lblMensage" Text="" runat="server" ForeColor="Green"  Font-Bold="true" Font-Size="Large"/>
            </div>
        </div>
    </div>
    
    <br />

    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="griViewEvalucionFinalizada" runat="server"  DataKeyNames="id,r1Extra" CssClass="table-bordered table-responsive" AllowPaging="true" OnRowEditing="griViewEvalucionFinalizada_RowEditing"  OnRowCancelingEdit="griViewEvalucionFinalizada_RowCancelingEdit" OnRowUpdating="griViewEvalucionFinalizada_RowUpdating" PageSize="20">

                

                <Columns>

                    <asp:CommandField  ShowEditButton="true"/>

                    <asp:TemplateField SortExpression="id">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("id") %>' runat="server"  Visible="false"/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                    <asp:BoundField DataField="videoID" HeaderText="Codigo video" ItemStyle-Width="100" ItemStyle-Wrap="False" SortExpression="videoID" />
                    <asp:BoundField DataField="evaluador" HeaderText="Evaluador" ItemStyle-Width="400" ItemStyle-Wrap="False" SortExpression="evaluador" />
                    <asp:BoundField DataField="r1" HeaderText="r1" ItemStyle-Width="300" SortExpression="r1" />
                    <asp:BoundField DataField="r1Extra" HeaderText="r1 Adcional" ItemStyle-Width="200" ItemStyle-Wrap="False" ReadOnly="false" />
                    <asp:BoundField DataField="r2" HeaderText="r2" ItemStyle-Width="100" ItemStyle-Wrap="False" SortExpression="r2" />
                    <asp:BoundField DataField="r2Extra" HeaderText="r2 Adcional" ItemStyle-Width="200" ItemStyle-Wrap="False" SortExpression="r2Extra" />
                    <asp:BoundField DataField="r3" HeaderText="r3" ItemStyle-Width="100" ItemStyle-Wrap="False" SortExpression="r3" />
                    <asp:BoundField DataField="r3Extra" HeaderText="r3 Adcional" ItemStyle-Width="200" ItemStyle-Wrap="False" SortExpression="r3Extra" />
                    <asp:BoundField DataField="r4" HeaderText="r4" ItemStyle-Width="100" ItemStyle-Wrap="False" SortExpression="r4" />
                    <asp:BoundField DataField="r4Extra" HeaderText="r4 Adcional" ItemStyle-Width="200" ItemStyle-Wrap="False" SortExpression="r4Extra" />
                    <asp:BoundField DataField="r5" HeaderText="r5" ItemStyle-Width="100" ItemStyle-Wrap="False" SortExpression="r5" />
                    <asp:BoundField DataField="r5Extra" HeaderText="r5 Adcional" SortExpression="r5Extra" />
                    <asp:BoundField DataField="fechaCreacion" HeaderText="Fecha creacion" SortExpression="fechaCreacion" />
                    <asp:BoundField DataField="fechaActualizacion" HeaderText="Fecha actualización" SortExpression="fechaActualizacion" />
                    <asp:BoundField DataField="fechaCierre" HeaderText="Fecha cierre" SortExpression="fechaCierre" />

                </Columns>


                <HeaderStyle Font-Bold="True" ForeColor="White" BorderStyle="Solid"  BackColor="#0066cc" HorizontalAlign="Center" BorderWidth="5" />
                <PagerSettings FirstPageText="" LastPageText="Ultimo" PageButtonCount="5" />
                <PagerStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Larger" Font-Underline="False" Height="0px" />

            </asp:GridView>
        </div>
    </div>

    <script src="../Scripts/jquery-3.3.1.js"></script>

    <script type="text/javascript">

        $(document).ready(function() {

            $('a').addClass("btn btn-outline-dark");
            $('a').addClass("mr-3");
            $('a').addClass("ml-3");
            $('input').addClass("form-control");
         
        });

    </script>

</asp:Content>
