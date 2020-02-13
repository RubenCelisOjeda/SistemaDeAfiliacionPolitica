<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCargarVideoCarga.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmCargarVideoCarga" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <h2><%: Title %></h2>
                <h3>Rúbrica de Observación de Clases -&nbsp;&nbsp;&nbsp;&nbsp; Evaluación</h3>
            </div>

            <div class="form-group">
                <p>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eevaluador/frmRubricaOC.aspx">Rúbrica Observación de Aula </asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">Portafolio</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#">Cuestionario de Estudiantes</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#">Cuestionario de Conocimientos</asp:HyperLink>
                </p>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <dl>
                    <dd>
                        <pre>INSTRUCCIONES: Rúbrica deobservación: es un instrumento  ..........                              <asp:Button ID="Button3" runat="server" Text="Descargar Manual" class="btn btn-info"/></pre>
                    </dd>

                </dl>

                <dl>
                    <dd>
                        <pre>
                I NO LOGRADO             	II EN PROCESO             	III LOGRADO             	IV DESTACADO 
            </pre>
                    </dd>
                </dl>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <table class="nav-justified">
                <tr>
                    <td style="width: 580px; height: 20px;"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 580px">
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        <br />
                        <asp:Label ID="lblUrl" runat="server" Text="lblUrl" Visible="false"></asp:Label>
                    </td>
                    <td>
                        <table class="nav-justified">
                            <tr>
                                <td style="color: white Background:black; background-color: #F0F0F0; width: 217px;">
                                    <p><span style="font-weight: bold">CARGAR ARCHIVO</span></p>
                                </td>
                                <td style="background-color: #F0F0F0;">

                                    <p><span style="font-weight: bold">DESCRIPCIÒN</span></p>

                                </td>
                            </tr>
                            <tr>
                                <td style="height: 44px; width: 217px;">
                                    <o:p></o:p>
                                    <span>Introduzca la URL del video subido a la plataforma de streaming (youtube).<br />
                                        <br />
                                        ........</span></td>
                                <td style="height: 44px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVideo" ErrorMessage="(campo obligatorio)" Style="color: #FF0000"></asp:RequiredFieldValidator>

                                    <div class="form-group">
                                        <asp:TextBox ID="txtVideo" runat="server" Height="35px" Width="202px" CssClass="form-control" placeholder="Ingrese url"></asp:TextBox>
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td style="height: 44px; width: 217px;">introduzca documento</td>
                                <td style="height: 44px; width: 217px;">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="(campo obligatorio)" Style="color: #FF0000"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 44px; width: 217px;"></td>
                                <td style="height: 44px; width: 217px;">

                                    <asp:Button ID="btnguardar" class="btn btn-primary" runat="server" OnClick="Button4_Click" Text="Guardar" />
                                    <asp:Label ID="lblEstado" runat="server"></asp:Label>

                                </td>
                            </tr>
                        </table>

                        <br />

                    </td>
                </tr>

            </table>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
                        <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="DATROS DEL DOCENTE" Height="100" BorderStyle="Groove">
                            <ContentTemplate>
                                <asp:FormView ID="FormView3" runat="server" CellPadding="4" DataSourceID="dsPersona" ForeColor="#333333" CssClass="table table-bordered table-hover">
                                    <EditItemTemplate>
                                        Nombres:
                                    <asp:TextBox ID="NombresTextBox" runat="server" Text='<%# Bind("Nombres") %>' />
                                        <br />
                                        Documento:
                                    <asp:TextBox ID="DocumentoTextBox" runat="server" Text='<%# Bind("Documento") %>' />
                                        <br />
                                        Direcciòn:
                                    <asp:TextBox ID="DirecciònTextBox" runat="server" Text='<%# Bind("Direcciòn") %>' />
                                        <br />
                                        Sexo:
                                    <asp:TextBox ID="SexoTextBox" runat="server" Text='<%# Bind("Sexo") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        Nombres:
                                    <asp:TextBox ID="NombresTextBox" runat="server" Text='<%# Bind("Nombres") %>' />
                                        <br />
                                        Documento:
                                    <asp:TextBox ID="DocumentoTextBox" runat="server" Text='<%# Bind("Documento") %>' />
                                        <br />
                                        Direcciòn:
                                    <asp:TextBox ID="DirecciònTextBox" runat="server" Text='<%# Bind("Direcciòn") %>' />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        Nombres:
                                    <asp:Label ID="NombresLabel" runat="server" Text='<%# Bind("Nombres") %>' />
                                        <br />
                                        Documento:
                                    <asp:Label ID="DocumentoLabel" runat="server" Text='<%# Bind("Documento") %>' />

                                    </ItemTemplate>
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                </asp:FormView>

                                <asp:SqlDataSource ID="dsPersona" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="sp_SeleccionardocentexISPdni" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="documento" QueryStringField="d" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="DATOS DEL INSTITUTO" CssClass="table table-bordered">
                            <ContentTemplate>
                                <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataSourceID="dsIESP" ForeColor="#333333">
                                    <ItemTemplate>
                                        Nombre:
                                    <p style="font-family: 'Arial Black'">
                                        <asp:Label ID="T_NombreLabel" runat="server" Text='<%# Bind("T_Nombre") %>' />
                                    </p>
                                        <br />
                                        CODIGO MODULAR:
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("T_CM_Instituto") %>' />
                                        <br />

                                        Email:
                                    <asp:Label ID="T_Email_InstitutoLabel" runat="server" Text='<%# Bind("T_Email_Instituto") %>' />
                                        <br />

                                        Direccion:
                                    <asp:Label ID="T_DireccionInstitutoLabel" runat="server" Text='<%# Bind("T_DireccionInstituto") %>' />
                                        Expediente:
                                    <asp:Label ID="T_ExpedienteLabel" runat="server" Text='<%# Bind("T_Expediente") %>' />
                                        <br />
                                        NroConstanciaAdecuacion:
                                    <asp:Label ID="T_NroConstanciaAdecuacionLabel" runat="server" Text='<%# Bind("T_NroConstanciaAdecuacion") %>' />
                                        <br />
                                        Web :
                                    <asp:Label ID="T_WebInstitutoLabel" runat="server" Text='<%# Bind("T_WebInstituto") %>' />
                                        <br />
                                        NroConstanciaAcreditacion:
                                    <asp:Label ID="T_NroConstanciaAcreditacionLabel" runat="server" Text='<%# Bind("T_NroConstanciaAcreditacion") %>' />
                                        <br />
                                        Fax:
                                    <asp:Label ID="T_FaxLabel" runat="server" Text='<%# Bind("T_Fax") %>' />
                                        <br />
                                        Telefono:
                                    <asp:Label ID="T_Telefono1Label" runat="server" Text='<%# Bind("T_Telefono1") %>' />
                                        <br />
                                        Doc Autorizacion:
                                    <asp:Label ID="T_DocAutorizacionLabel" runat="server" Text='<%# Bind("T_DocAutorizacion") %>' />
                                        <br />
                                        Reinscripcion:
                                    <asp:Label ID="T_ReinscripcionLabel" runat="server" Text='<%# Bind("T_Reinscripcion") %>' />
                                        <br />
                                        Ugel:
                                    <asp:Label ID="T_UgelLabel" runat="server" Text='<%# Bind("T_Ugel") %>' />
                                        <br />
                                        EstadoRevalidado:
                                    <asp:Label ID="T_EstadoRevalidadoLabel" runat="server" Text='<%# Bind("T_EstadoRevalidado") %>' />
                                        <br />
                                        AnosRevalidados:
                                    <asp:Label ID="T_AnosRevalidadosLabel" runat="server" Text='<%# Bind("T_AnosRevalidados") %>' />
                                        <br />
                                        NroCarrerasRevalidadas:
                                    <asp:Label ID="T_NroCarrerasRevalidadasLabel" runat="server" Text='<%# Bind("T_NroCarrerasRevalidadas") %>' />
                                        <br />
                                        EstadoAcreditado:
                                    <asp:Label ID="T_EstadoAcreditadoLabel" runat="server" Text='<%# Bind("T_EstadoAcreditado") %>' />
                                        <br />
                                        FechaAcreditado:
                                    <asp:Label ID="F_FechaAcreditadoLabel" runat="server" Text='<%# Bind("F_FechaAcreditado") %>' />
                                        <br />
                                        AnoAcreditado:
                                    <asp:Label ID="T_AnoAcreditadoLabel" runat="server" Text='<%# Bind("T_AnoAcreditado") %>' />
                                        <br />
                                        RDAcreditado:
                                    <asp:Label ID="T_RDAcreditadoLabel" runat="server" Text='<%# Bind("T_RDAcreditado") %>' />
                                        <br />
                                        NombreArchivo:
                                    <asp:Label ID="T_NombreArchivoLabel" runat="server" Text='<%# Bind("T_NombreArchivo") %>' />
                                        <br />
                                        ArchivoReglamento:
                                    <asp:Label ID="T_ArchivoReglamentoLabel" runat="server" Text='<%# Bind("T_ArchivoReglamento") %>' />
                                        <br />

                                    </ItemTemplate>
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                </asp:FormView>
                                <asp:SqlDataSource ID="dsIESP" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [p_instituto] WHERE ([ID_Instituto] = @ID_Instituto)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="ID_Instituto" QueryStringField="i" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="DOCUMENTOS Y CRITERIOS DE EVALUACION">
                            <ContentTemplate>
                                DOCUMENTOS Y CRITERIOS DE EVALUACION:
                            <p style="font-family: 'Arial Black'">
                                DOCUMENTACIÒN
                            </p>
                                <div class="form-group">
                                    <asp:Button ID="btnDesempe1" runat="server" class="btn btn-default" OnClick="btnDesempe1_Click" Text="Desempeño 1" />
                                    <asp:Button ID="btnDesempe2" runat="server" class="btn btn-default" OnClick="btnDesempe2_Click" Text="Desempeño 2" />
                                    <asp:Button ID="btnDesempe3" runat="server" class="btn btn-default" OnClick="btnDesempe3_Click" Text="Desempeño 3" />
                                    <asp:Button ID="btnDesempe4" runat="server" class="btn btn-default" OnClick="btnDesempe4_Click" Text="Desempeño 4" />
                                    <asp:Button ID="btnDesempe5" runat="server" class="btn btn-default" OnClick="btnDesempe5_Click" Text="Desempeño 5" />
                                    <asp:Button ID="btnDesempe6" runat="server" class="btn btn-default" OnClick="btnDesempe6_Click" Text="Desempeño 6" />
                                </div>


                                <asp:MultiView ID="MvgDesempeño" runat="server">
                                    <asp:View ID="View11" runat="server">
                                        <div id="sds" class="bg-success">
                                            <p class="bg-info">
                                                <strong>Desempeño 01: Evalúa y retroalimenta</strong>
                                                <br />


                                            </p>
                                        </div>
                                        <div id="sds1" class="as">
                                            <p style="background-color: #F5F5F5">
                                                <strong>Aspectos 1: ......</strong>
                                                <br />
                                                <strong>Aspectos 2: ......</strong>
                                                <br />

                                            </p>
                                        </div>
                                        <br />
                                        <table class="nav-justified" style="height: 254px">
                                            <tr>
                                                <td class="text-center" style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 2</em></strong></td>
                                                <td class="text-center" style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 4</em></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View12" runat="server">
                                        <div id="sds" class="bg-success">
                                            <p class="bg-info">
                                                <strong>Desempeño 02: XXXXXXXX</strong>
                                            </p>
                                        </div>
                                        <div id="sds1" class="as">
                                            <p style="background-color: #F5F5F5">
                                                <strong>Aspectos 1: ......</strong>
                                                <br />
                                                <strong>Aspectos 2: ......</strong>
                                                <br />

                                            </p>
                                        </div>
                                        <br />
                                        <table class="nav-justified" style="height: 254px">
                                            <tr>
                                                <td class="text-center" style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 2</em></strong></td>
                                                <td class="text-center" style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 4</em></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View13" runat="server">
                                        <div id="sds" class="bg-success">
                                            <p class="bg-info">
                                                <strong>Desempeño 03: YYYYYYYY</strong><br />
                                            </p>
                                        </div>
                                        <div id="sds1" class="as">
                                            <p style="background-color: #F5F5F5">
                                                <strong>Aspectos 1: ......</strong>
                                                <br />
                                                <strong>Aspectos 2: ......</strong>
                                                <br />

                                            </p>
                                        </div>
                                        <br />
                                        <table class="nav-justified" style="height: 254px">
                                            <tr>
                                                <td class="text-center" style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 2</em></strong></td>
                                                <td class="text-center" style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 4</em></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View14" runat="server">
                                        <div id="sds" class="bg-success">
                                            <p class="bg-info">
                                                <strong>Desempeño 04: </strong><span style="font-weight: bold">ZZZZZZZZZ</span><br />
                                            </p>
                                        </div>
                                        <div id="sds1" class="as">
                                            <p style="background-color: #F5F5F5">
                                                <strong>Aspectos 1: ......</strong>
                                                <br />
                                                <strong>Aspectos 2: ......</strong>
                                                <br />

                                            </p>
                                        </div>
                                        <br />
                                        <table class="nav-justified" style="height: 254px">
                                            <tr>
                                                <td class="text-center" style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 2</em></strong></td>
                                                <td class="text-center" style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 4</em></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View15" runat="server">
                                        <div id="sds" class="bg-success">
                                            <p class="bg-info">
                                                <strong>Desempeño 05:&nbsp; XXXXXXXX</strong>
                                            </p>
                                        </div>
                                        <div id="sds1" class="as">
                                            <p style="background-color: #F5F5F5">
                                                <strong>Aspectos 1: ......</strong>
                                                <br />
                                                <strong>Aspectos 2: ......</strong>
                                                <br />

                                            </p>
                                        </div>
                                        <br />
                                        <table class="nav-justified" style="height: 254px">
                                            <tr>
                                                <td class="text-center" style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 2</em></strong></td>
                                                <td class="text-center" style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 4</em></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View16" runat="server">
                                        <div id="sds" class="bg-success">
                                            <p class="bg-info">
                                                <strong>Desempeño 06: </strong><span style="font-weight: bold">YYYYYYYY</span><br />
                                            </p>
                                        </div>
                                        <div id="sds1" class="as">
                                            <p style="background-color: #F5F5F5">
                                                <strong>Aspectos 1: ......</strong>
                                                <br />
                                                <strong>Aspectos 2: ......</strong>
                                                <br />

                                            </p>
                                        </div>
                                        <br />
                                        <table class="nav-justified" style="height: 254px">
                                            <tr>
                                                <td class="text-center" style="color: white Background:black; height: 20px;"><strong><em>NIVEL 1</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 2</em></strong></td>
                                                <td class="text-center" style="height: 20px"><strong><em>NIVEL 3</em></strong></td>
                                                <td class="text-center" style="height: 20px; background-color: #F5F5F5;"><strong><em>NIVEL 4</em></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                                <td class="text-center" style="background-color: #F5F5F5">............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............<br />
                                                    ............</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </asp:MultiView>

                                <br />

                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                    </ajaxToolkit:TabContainer>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <br />
    <br />
    <br />


    <asp:GridView ID="GridView1" runat="server" DataSourceID="dsvideosCargados" CssClass="table table-bordered table-hover" OnRowCommand="GridView1_RowCommand1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_video" Height="78px" Width="1084px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id_video" HeaderText="COD VIDEO" InsertVisible="False" ReadOnly="True" SortExpression="id_video" />
            <asp:BoundField DataField="filmador" HeaderText="FILMADOR" SortExpression="filmador" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
            <asp:BoundField DataField="fecha" HeaderText="FECHA" SortExpression="fecha" />
            <asp:TemplateField HeaderText="ADJUNTO" SortExpression="documentoAdjunto">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("documentoAdjunto") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>

                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "~/Archivos/"+ Eval("documentoAdjunto") %>'>
                        <asp:Image ID="Image2" runat="server" ImageUrl="../imagenes/descarga2.png" Height="25px" Width="27px" />
                    </asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
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

    <asp:SqlDataSource ID="dsvideosCargados" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="sp_SeleccionarVideoxfilmador" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ProfileParameter Name="filmador" PropertyName="UserName" Type="String" />
            <asp:QueryStringParameter Name="dni" QueryStringField="d" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

    <br />


    <br />
    <br />




</asp:Content>
