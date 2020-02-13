<%@ Page Title="EvaluacionPortafolio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EvaluacionPortafolio.aspx.cs" Inherits="Evaluacion.WEB.Eevaluacion2.EvaluacionPortafolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <link href="../Style/CssEvaluadorPortafolio.css" rel="stylesheet" />

    <link href="../Style/CssPortafolio.css" rel="stylesheet" />
    

    <div class="row">
        <div class="col-md-8">

            <div class="form-group">
                <h2>Portafolio docente</h2>

                <p>Estimado docente,</p>
                <p>Se le agradece subir los documentos del portafolio de acuerdo a la organización que se solicita.</p>
            </div>
        </div>
    </div>

 
    <br />


    <div class="row" id="portafolio">
        <div class="col-md-12 text-center">
            <table class="tablePorta">
                <tr>
                    <td style="padding: 5px"><span class="text-success text-porta">PORTAFOLIO</span> </td>

                    <!--Portafolio Id-->
                    <asp:Label ID="lblPortafolioId" Text="" runat="server" Visible="false" />

                    <!--PortafolioFile Id-->
                    <asp:Label ID="lblPortafolioFile" Text="" runat="server" Visible="false" />

                    <!--Anexo Id-->
                    <asp:Label ID="lblAnexoId" Text="" runat="server" Visible="false" />

                    <td style="padding: 5px" width="200" class="tdPorta">
                        <label style="margin-top: 10px;">Portafolio</label><br />
                        <img src="../imagenes/folder.jpg" width="80" height="80" href="#filePortafolio" title="Descargar portafolio" /><br />
                        <asp:Button ID="btnPortafolio" runat="server" CssClass="btn btn-primary" Text="Portafolio" OnClick="btnPortafolio_Click" />
                    </td>

                    <td style="padding: 5px" class="tdPorta">
                        <label style="margin-bottom: 20px; margin-top: 5px;">Anexo</label><br />
                        <img src="../imagenes/anexo.png" width="55" height="50" style="margin-bottom: 20px;" title="Decargar anexo" /><br />
                        <asp:Button ID="btnAnexo" runat="server" CssClass="btn btn-primary" Text="Anexo" OnClick="btnAnexo_Click" />
                    </td>

                    <td style="padding: 5px" class="tdPorta">
                        <label style="margin-bottom: 20px; margin-top: 5px;">Archivo</label><br />
                        <div class="cssArchivo" style="width: 55px; height: 100px;">
                            <br />
                            <label runat="server" id="lblEstadoArchivo" class="text-danger" style="margin-left: 50px;">Ninguno</label>
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
                    <asp:Label Text="Adjuntar Archivo" CssClass="modal-title" runat="server" Font-Size="Large" />
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 text-left">


                            <br />
                            <br />
                            <br />
                            <asp:FileUpload ID="fileUpload" runat="server" CssClass="file" Style="margin-left: 150px;" />
                            <br />
                            <br />
                            <br />
                            <br />

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:ScriptManager runat="server" />
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardar_Click" /></ContentTemplate>
                    </asp:UpdatePanel>
                    <a class="btn btn-primary" data-dismiss="modal">Cerrar</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->



    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <asp:Button Text="Exportar Excel" runat="server" CssClass="btn btn-success" />
                <asp:Button Text="Exportar PDF" runat="server" CssClass="btn btn-danger" />
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12">

            <table style="width: 100%;" border="1" class="table-bordered table-responsive bg-light">
                <tbody>
                    <tr style="height: 40px">
                        <td style="width: 250px" class="text-center bg-dark text-white">Rúbricas</td>
                        <td style="width: 450px" class="text-center bg-dark text-white">Aspectos a evaluar</td>
                        <td style="width: 100px" class="text-center bg-dark text-white">Justificación</td>
                        <td style="width: 100px" class="bg-dark text-white justify-content-center">Valoración</td>
                    </tr>

                    <!--fila 1-->
                    <tr class="justify-content-center">
                        <td><strong>Rúbrica 1:</strong>  Diseño de sesiones de aprendizaje coherente con el criterio de desempeño o desempeño específico a desarrollar.</td>
                        <td>* Grado de alineamiento entre el criterio de desempeño o desempeño específico y actividades propuestas en cada sesión.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r1" runat="server" Height="90px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r1Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <!--fila 1-->

                    <!--fila 2-->
                    <tr class="justify-content-center">
                        <td><strong>Rúbrica 2:</strong>  Diseño de sesiones de aprendizaje que aproximen a los estudiantes de FID a la práctica docente.</td>
                        <td>• Grado en que las sesiones diseñadas ofrecen a los estudiantes de FID oportunidades de acercarse a la práctica docente o a los contextos escolares.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r2" runat="server" Height="90px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r2Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 2-->

                    <!--fila 3-->
                    <tr>
                        <td><strong>Rúbrica 3:</strong>  Promoción de la reflexión de los estudiantes de FID.</td>
                        <td>• Grado en que las actividades diseñadas promueven que los estudiantes de FID evalúen su propio desempeño y reflexionen sobre su influencia en el aprendizaje de quienes serán, a futuro, sus estudiantes.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r3" runat="server" Height="100px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r3Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 3-->

                    <!--fila 4-->
                    <tr>
                        <td><strong>RÚBRICA 4:</strong>  Pertinencia de la planificación a las características y contexto de sus estudiantes, y a las necesidades de su futuro ejercicio profesional.</td>
                        <td>• Grado en que el docente formador conoce a los estudiantes de FID, a su cargo (características, experiencias, contexto y necesidades de su futuro ejercicio profesional).
                            • Grado en que se considera el conocimiento de los estudiantes de FID en el diseño de las sesiones de aprendizaje.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r4" runat="server" Height="140px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r4Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 4-->

                    <!--fila 5-->
                    <tr>
                        <td><strong>RÚBRICA 5:</strong> Fundamentación de la planificación.</td>
                        <td>• Identificación de los fundamentos curriculares presentes en los Diseños Curriculares Nacionales vigentes.
                            • Grado en que el diseño de sesiones se relaciona con el fundamento curricular identificado.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r5" runat="server" Height="100px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r5Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 5-->

                    <!--fila 6-->
                    <tr>
                        <td><strong>RÚBRICA 6: </strong>Coherencia de la evaluación con los propósitos formativos evaluados.</td>
                        <td>• Grado de alineamiento entre el instrumento o procedimiento de evaluación y el criterio de desempeño/desempeño específico que se busca evaluar.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r6" runat="server" Height="90px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r6Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 6-->

                    <!--fila 7-->
                    <tr>
                        <td><strong>RÚBRICA 7:</strong>  Calidad de los instrumentos de evaluación.</td>
                        <td>• Claridad y correcta  formulación de rúbricas, listas de cotejo, escalas de apreciación y/o de los ítems que componen el instrumento.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r7" runat="server" Height="80px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r7Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 7-->

                    <!--fila 8-->
                    <tr>
                        <td><strong>RÚBRICA 8:</strong>  Involucramiento de los estudiantes en la evaluación.</td>
                        <td>• Grado en que el docente formador involucra a los estudiantes de FID en el proceso de evaluación. </td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r8" runat="server" Height="60px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r8Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 8-->

                    <!--fila 9-->
                    <tr>
                        <td rowspan="2"><strong>RÚBRICA 9 :</strong>  Retroalimentación </td>
                        <td>• Grado en que el docente formador propone una retroalimentación con potencial para promover el aprendizaje de los estudiantes de FID. </td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r9" runat="server" Height="80px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r9Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>• Coherencia de la fundamentación que el docente formador entrega para sus decisiones de retroalimentación del desempeño del estudiante de FID.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r10" runat="server" Height="80px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r10Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 9-->

                    <!--fila 10-->
                    <tr>
                        <td rowspan="2"><strong>RÚBRICA 10:</strong>  Reflexión sobre la práctica.</td>
                        <td>• Reconocimiento de aspectos del quehacer del docente formador que requieren mejorar o aquellos que constituyen una fortaleza.</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r11" runat="server" Height="80px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r11Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>• Grado en que las propuestas de mejora favorecen el mejoramiento del desempeño y son consistentes con las debilidades identificadas</td>
                        <td class="tdMargen">
                            <asp:TextBox ID="r12" runat="server" Height="80px" MaxLength="2000" Width="270px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="r12Eva" runat="server" BackColor="#FFFFCC" Font-Size="20pt" CssClass="form-control combo">
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>II</asp:ListItem>
                                <asp:ListItem>III</asp:ListItem>
                                <asp:ListItem>IV</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <!--fila 10-->

                </tbody>
            </table>
            <!-- DivTable.com -->
        </div>
    </div>


</asp:Content>
