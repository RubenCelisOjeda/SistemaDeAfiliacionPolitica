<%@ Page Title="Portafolio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portafolio.aspx.cs" Inherits="Evaluacion.WEB.Docente.Portafolio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--<link href="../Content/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="../Style/CssPortafolio.css" rel="stylesheet" />

    <br />
    <br />

    <div class="row">
        <div class="col-md-7">

            <div class="form-group">
                <h2>Portafolio docente</h2>

                <p>Estimado docente,</p>
                <p>Se le agradece subir los documentos del portafolio de acuerdo a la organización que se solicita.</p>
            </div>
        </div>
    </div>

    <br />
    <br />

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">

            </div>
        </div>
    </div>

    <div class="row" id="portafolio">
        <div class="col-md-12 text-center">
            <table>
                <tr>
                    <td style="padding:5px"><span class="text-success text-porta">PORTAFOLIO</span> </td>

                    <!--Portafolio Id-->
                    <asp:Label ID="lblPortafolioId" Text="" runat="server"  Visible="false"/>

                    <!--PortafolioFile Id-->
                    <asp:Label ID="lblPortafolioFile" Text="" runat="server"  Visible="false"/>

                    <!--Anexo Id-->
                    <asp:Label ID="lblAnexoId" Text="" runat="server"  Visible="false"/>


                                    

                    <td style="padding:5px" width="200">
                        <label style="margin-top:10px;">Portafolio</label><br />
                        <img src="../imagenes/folder.jpg" width="80" height="80" href="#filePortafolio" title="Descargar portafolio"/><br />
                        <asp:Button ID="btnPortafolio" runat="server" CssClass="btn btn-primary" Text="Portafolio" OnClick="btnPortafolio_Click"/>
                    </td>

                    <td style="padding:5px">
                        <label style="margin-bottom:20px; margin-top:5px;">Anexo</label><br />
                        <img src="../imagenes/anexo.png" width="55" height="50" style="margin-bottom:20px;" title="Decargar anexo"/><br />
                        <asp:Button ID="btnAnexo" runat="server" CssClass="btn btn-primary" Text="Anexo" OnClick="btnAnexo_Click"/>
                    </td>

                    <td style="padding:5px">
                       <label style="margin-bottom:20px; margin-top:5px;">Archivo</label><br />
                       <div class="cssArchivo" style="width:55px;height:100px;">
                           <br />
                           <label runat="server" id="lblEstadoArchivo" class="text-danger" style="margin-left:50px;">Ninguno</label>
                       </div>
                    </td>

                </tr>
            </table>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center header-color-sesion">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <%--<h4 class="modal-title">Adjuntar Archivo</h4>--%>
                    <asp:Label Text="Adjuntar Archivo" CssClass="modal-title" runat="server"  Font-Size="Large"/>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 text-left">

                            
                            <br />
                            <br />
                            <br />
                            <asp:FileUpload ID="fileUpload" runat="server" CssClass="file"  style="margin-left:150px;" />
                            <br />
                            <br />
                            <br />
                            <br />

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardar_Click"/>
                    <a class="btn btn-primary" data-dismiss="modal">Cerrar</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->

</asp:Content>
