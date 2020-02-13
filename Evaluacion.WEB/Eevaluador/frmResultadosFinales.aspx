<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmResultadosFinales.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmResultadosFinales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
        <h2><%: Title %></h2>
    <h3>Rúbrica de Observación de Clases -&nbsp;&nbsp;&nbsp;&nbsp; Resultados Finales
    </h3>
        <p>
        
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eevaluador/frmRubricaOC.aspx">Rúbrica Observación de Aula </asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">Portafolio</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#">Cuestionario de Estudiantes</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#">Cuestionario de Conocimientos</asp:HyperLink>

      </p>
        <br />
                <dl>
                    <dd>
                        <pre>INSTRUCCIONES: Detalles sobre los resultados finales ..........                              <asp:Button ID="Button3" runat="server" Text="Descargar informaciòn" class="btn btn-default"  /></pre>
                    </dd>

        </dl>
    <dl>
                    <dd>
                    
            <table class="nav-justified">
                <tr>
                    <td class="text-right" style="width: 182px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 182px" class="text-justify">
                        <asp:HyperLink ID="HyperLink6" runat="server">Rúbrica</asp:HyperLink>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 182px" class="text-justify">
                        <asp:HyperLink ID="HyperLink7" runat="server">Encuestas estudiantes</asp:HyperLink>
                    </td>
                    <td style="height: 20px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 182px" class="text-justify">
                        <asp:HyperLink ID="HyperLink8" runat="server">Portafolio</asp:HyperLink>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 182px" class="text-justify">
                        <asp:HyperLink ID="HyperLink9" runat="server">Encuestas Conocimientos</asp:HyperLink>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 182px; height: 20px;" class="text-justify"></td>
                    <td style="height: 20px"></td>
                </tr>
                </table>
                        <pre>PROMEDIO FINAL   ...    (PROMEDIO)</pre>
                        Información del evaluado:<br />



                        <br />



                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
                    <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="DATROS DEL DOCENTE">
                        <ContentTemplate>
                            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="dsPersona" ForeColor="#333333">
                                <ItemTemplate>
                                    NroDocumento:
                                    <p style="font-family: 'Arial Black'">
                                        <asp:Label ID="T_NroDocumentoLabel" runat="server" Text='<%# Bind("T_NroDocumento") %>' />
                                    </p>
                <br />
                
                                    Apellido Paterno:
                                    <asp:Label ID="T_ApellidoPaternoLabel" runat="server" Text='<%# Bind("T_ApellidoPaterno") %>' />
                <br />
                                    Apellido Materno:
                                    <asp:Label ID="T_ApellidoMaternoLabel" runat="server" Text='<%# Bind("T_ApellidoMaterno") %>' />
                <br />
                                    Nombres:
                                    <asp:Label ID="T_NombresLabel" runat="server" Text='<%# Bind("T_Nombres") %>' />
                <br />

                                    ID_Persona:
                                    <asp:Label ID="ID_PersonaLabel" runat="server" Text='<%# Bind("ID_Persona") %>' />
                <br />
                                    FechaNacimiento:
                                    <asp:Label ID="F_FechaNacimientoLabel" runat="server" Text='<%# Bind("F_FechaNacimiento") %>' />
                <br />
                
                                    Direccion:
                                    <asp:Label ID="T_DireccionLabel" runat="server" Text='<%# Bind("T_Direccion") %>' />
                <br />
                                    TelefonoCasa:
                                    <asp:Label ID="T_TelefonoCasaLabel" runat="server" Text='<%# Bind("T_TelefonoCasa") %>' />
                <br />
                                    Celular:
                                    <asp:Label ID="T_CelularLabel" runat="server" Text='<%# Bind("T_Celular") %>' />
                <br />
                                    T_Email:
                                    <asp:Label ID="T_EmailLabel" runat="server" Text='<%# Bind("T_Email") %>' />
                <br />
                                    Sexo:
                                    <asp:Label ID="T_SexoLabel" runat="server" Text='<%# Bind("T_Sexo") %>' />
                                </ItemTemplate>
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:FormView>
                            <asp:SqlDataSource ID="dsPersona" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [p_persona] WHERE ([ID_Persona] = @ID_Persona)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ID_Persona" QueryStringField="d" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="DATOS DEL INSTITUTO">
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
                            <asp:Button ID="btnDesempe1" runat="server" class="btn btn-default" OnClick="btnDesempe1_Click" Text="Desempeño 1" />
                            <asp:Button ID="btnDesempe2" runat="server" class="btn btn-default" OnClick="btnDesempe2_Click" Text="Desempeño 2" />
                            <asp:Button ID="btnDesempe3" runat="server" class="btn btn-default" OnClick="btnDesempe3_Click" Text="Desempeño 3" />
                            <asp:Button ID="btnDesempe4" runat="server" class="btn btn-default" OnClick="btnDesempe4_Click" Text="Desempeño 4" />
                            <asp:Button ID="btnDesempe5" runat="server" class="btn btn-default" OnClick="btnDesempe5_Click" Text="Desempeño 5" />
                            <asp:Button ID="btnDesempe6" runat="server" class="btn btn-default" OnClick="btnDesempe6_Click" Text="Desempeño 6" />
                            <asp:MultiView ID="MvgDesempeño" runat="server">
                                <asp:View ID="View11" runat="server">
                                    <div id="sds" class="bg-success">
                                        <p class="bg-info">
                                            <strong>Desempeño 01: Evalúa y retroalimenta</strong> <br />
      

                                        </p>
                                    </div>
                                    <div id="sds1" class="as">
                                        <p style="background-color: #F5F5F5">
                                            <strong>Aspectos 1: ......</strong> <br />
                                            <strong>Aspectos 2: ......</strong> <br />
                            
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
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View12" runat="server">
                                    <div id="sds" class="bg-success">
                                        <p class="bg-info">
                                            <strong>Desempeño 02: XXXXXXXX</strong></p>
                                    </div>
                                    <div id="sds1" class="as">
                                        <p style="background-color: #F5F5F5">
                                            <strong>Aspectos 1: ......</strong> <br />
                                            <strong>Aspectos 2: ......</strong> <br />
                            
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
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
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
                                            <strong>Aspectos 1: ......</strong> <br />
                                            <strong>Aspectos 2: ......</strong> <br />
                            
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
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
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
                                            <strong>Aspectos 1: ......</strong> <br />
                                            <strong>Aspectos 2: ......</strong> <br />
                            
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
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View15" runat="server">
                                    <div id="sds" class="bg-success">
                                        <p class="bg-info">
                                            <strong>Desempeño 05:&nbsp; XXXXXXXX</strong></p>
                                    </div>
                                    <div id="sds1" class="as">
                                        <p style="background-color: #F5F5F5">
                                            <strong>Aspectos 1: ......</strong> <br />
                                            <strong>Aspectos 2: ......</strong> <br />
                            
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
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
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
                                            <strong>Aspectos 1: ......</strong> <br />
                                            <strong>Aspectos 2: ......</strong> <br />
                            
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
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
                                            <td class="text-center" style="background-color: #F5F5F5">............<br /> ............<br /> ............<br /> ............<br /> ............</td>
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



        </dl>
</asp:Content>
