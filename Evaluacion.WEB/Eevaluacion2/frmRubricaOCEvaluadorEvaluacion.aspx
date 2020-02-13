<%@ Page Title="Evaluación" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="frmRubricaOCEvaluadorEvaluacion.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmRubricaOCEvaluadorEvaluacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 
    <%--<link href="../Content/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="../Style/EvaluadorEvaluacion.css" rel="stylesheet" />

    <br />

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
          
                <h2>Rúbricas de observación de clases</h2>
            </div>
            <div class="form-group">
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="dsPersona" ForeColor="#333333">
                    <ItemTemplate>
                        Docente:
                        <asp:Label ID="T_ApellidoPaternoLabel" ForeColor="Black" Font-Bold="true" runat="server" Text='<%# Bind("T_ApellidoPaterno") %>' />
                        <asp:Label ID="T_ApellidoMaternoLabel" ForeColor="Black" Font-Bold="true" runat="server" Text='<%# Bind("T_ApellidoMaterno") %>' />
                        <asp:Label ID="T_NombresLabel" ForeColor="Black" Font-Bold="true" runat="server" Text='<%# Bind("T_Nombres") %>' />
                    </ItemTemplate>
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle />
                </asp:FormView>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="dsPersona" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ID_Persona, F_FechaNacimiento, T_ApellidoPaterno, T_ApellidoMaterno, T_Nombres, T_NroDocumento, T_Direccion, T_TelefonoCasa, T_Celular, N_Estado, T_Email, ID_Distrito, T_Sexo, ID_TipDocumento, T_UsuarioCreacion, T_UsuarioModificacion, F_FechaCreacion, F_FechaModificacion, T_EstadoRegistro, T_SistemaCreacion, T_SistemaModificacion, T_Usuario, T_Clave, ID_LenguaMaterna, ID_LenguaSecundaria, T_CodigoProvincia, ID_DistritoDomicilio, ID_Pais FROM dbo.p_persona WHERE (T_NroDocumento = @T_NroDocumento)">
        <SelectParameters>
            <asp:QueryStringParameter Name="T_NroDocumento" QueryStringField="p" />
        </SelectParameters>
    </asp:SqlDataSource>


    <div class="card" id="pnlResumen" runat="server">
        <div class="card-header text-primary">
            <h4 class="mb-0">
                Resumen video
            </h4>
        </div>

        <div aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="form-group">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblUrl" runat="server" ForeColor="Green" Font-Bold="true" BorderColor="Black"></asp:Label><br />
                            <asp:Label ID="lblVideoID" runat="server" Font-Bold="true" BorderColor="Black"></asp:Label>
                        </div>
                    </div>
                    <%--<div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblFichaRegistro" runat="server" Text="FICHA DE REGISTRO  DE SESIÓN DE CLASES"></asp:Label>
                            <asp:TextBox ID="txtficharegistro" runat="server" Height="310px" TextMode="MultiLine" Width="530px" BackColor="#EAF4FF" CssClass="formato-control"></asp:TextBox>
                        </div>
                        <div class="form-group text-right">
                            <asp:Button ID="btnExportarFichaRegistro" CssClass="btn" runat="server" BackColor="#FF7777" ForeColor="White" OnClick="btnExportarFichaRegistro_Click" Text="Exportar ficha"  Visible="false"/>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
     
    <br />

    <div class="card" id="pnlEvaluaciones" runat="server">
        <div class="card-header">
            <h4 class="mb-0 text-primary">
                 Mis evaluaciones
            </h4>
        </div>

        <div id="otro2" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <h4>SELECCIONE EL VIDEO A EVALUAR:</h4>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblEstadoEvaluaciones" runat="server" Font-Size="Larger" ForeColor="Red" Style="font-size: medium"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-hover" DataSourceID="dsvideosCargados" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_video" Height="78px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />


                                    <%--<asp:BoundField DataField="id" HeaderText="idRegistro video" InsertVisible="False" ReadOnly="True" SortExpression="id"  Visible="false"/>--%>
                                    <asp:BoundField DataField="id_video" HeaderText="COD VIDEO" InsertVisible="False" ReadOnly="True" SortExpression="id_video" />
                                    <asp:BoundField DataField="id_docente" HeaderText="Nro Filmación" SortExpression="id_docente" />
                                    <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />

                                    <asp:TemplateField HeaderText="ADJUNTO" SortExpression="documentoAdjunto">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("documentoAdjunto") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink4" Target="_blank" runat="server" NavigateUrl='<%# "~/Archivos/Portafolios/" + Eval("documentoAdjunto") %>'>
                                                <asp:Image ID="Image2" runat="server" ImageUrl="../imagenes/word.png" Height="30px" Width="30px" />
                                            </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <span style="background-color: #FFFFCC">AÙN NO EXISTEN VIDEOS CARGADOS PARA </span></strong></strong><span style="background-color: #FFFFCC">E<span style="font-weight: bold">L DOCENTE </span></span>
                                </EmptyDataTemplate>
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
                        </div>
                        <div class="form-group text-right">
                            <asp:Button ID="Button1" runat="server" Visible="" class="btn" OnClick="Button1_Click" Text="Descargar Evaluación " BackColor="#FF7777" ForeColor="White" Font-Bold="True" Style="font-size: small" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />

    <div class="card card-calificar" id="pnlCalificar" runat="server">
        <div class="card-header">
            <h4 class="mb-0 text-primary">
                 Calificar evaluación
            </h4>
        </div>

       

        <div id="otro" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="col-md-12">
            <div class="card-body">

                

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Label ID="lblEstado" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Green"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="btnEvaluar" runat="server" class="btn btn-primary" OnClick="btnTerminar_Click" Text="GUARDAR AVANCE" />
                        <%--<asp:Button ID="btnEvaluarActualizar" runat="server" class="btn btn-primary btnVerBotones" Text="GUARDAR AVANCE " OnClick="btnTerminar_Click" />--%>
                        <asp:Button ID="btnFinalizar" runat="server" class="btn btn-success" Text="FINALIZAR" OnClick="btnAceptarFinalizar_Click" />
                    </div>

                    <div class="col-md-6 text-right">
                        <asp:Button ID="btnNuevo" runat="server" class="btn btn-success" Text="Nuevo" OnClick="btnNuevo_Click" />
                        <asp:Button ID="btnAddCalificacion" runat="server" class="btn btn-outline-warning" Text="Agregar nota adicional" OnClick="btnAddCalificacion_Click" Visible="true"/>
                        <asp:Button ID="btnCancelar" Text="Cancelar" runat="server" class="btn btn-danger" Visible="false" OnClick="btnCancelar_Click" />
                    </div>
                </div>

                <br />
                <br />

                <!--prueba-->
                <%--<div class="row">
                    <div class="col-md-12">
                        <table>

                            <!--fila 1-->
                            <tr>
                                <!--columnas-->
                                <td class="text-center td-encabezado">DESEMPEÑO</td>
                                <td class="text-center td-encabezado">ASPECTOS</td>
                                <td class="text-center td-encabezado anchoConducta">CONDUCTAS OBSERVADAS <br />(EVIDENCIAS)</td>
                                <td class="text-center td-encabezado">CONCLUSIÓN</td>
                                <td class="text-center td-encabezado">CALIFICACIÓN</td>
                                <td class="text-center td-encabezado" runat="server" id="tdNotaAdicional" visible="true">NOTA ADICIONAL</td>
                                <!--columnas-->

                            </tr>
                            <tr>
                                <!--<!--0 celda-->
                                <td style="width: 153px" rowspan="3" class="text-left justify-content-center">
                                    <p style="text-autospace: none; font-size: 11.0pt; font-family: Tahoma, sans-serif; margin-left: 0cm; margin-right: 0cm; margin-top: 0cm; margin-bottom: .0001pt;">
                                        <b><span>PROMUEVE LA PARTICIPACIÓN ACTIVA DE LOS ESTUDIANTES EN LA CONSTRUCCIÓN DE SUS APRENDIZAJES.</span></b>
                                    </p>
                                </td>
                                <!--DESEMPEÑO-->

                                <!--1 celda-->
                                <td class="celda-margen">
                                    <span>Conexiones con las experiencias previas de los estudiantes o con sus necesidades de desempeño profesional.</span>
                                </td>

                                <!--2 celda-->
                                <td>
                                    <asp:TextBox ID="a1Prueba" runat="server" Height="130px" MaxLength="2000" Width="200px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                </td>

                                <!--3 celda-->
                                <td style="width: 93px">
                                    <asp:TextBox ID="a11Prueba" runat="server" Height="75px" MaxLength="2000" Width="200px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                </td>

                                <!--4 celda-->
                                <td class="text-left" rowspan="3">
                                    <asp:DropDownList ID="r1Prueba" runat="server" BackColor="#FFFFCC" Font-Size="20pt" Width="115px" CssClass="formato-control">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>I</asp:ListItem>
                                        <asp:ListItem>II</asp:ListItem>
                                        <asp:ListItem>III</asp:ListItem>
                                        <asp:ListItem>IV</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            
                        </table>
                    </div>
                </div>--%>
                <!--prueba-->

                <br />
                <br />

                <div class="row">

                    <div class="col-md-12 ">
                        
                        <!--Panel-->
                        <section id="PanelEncabezado" runat="server">
                            <table class="nav-justified" >

                                <!--columnas-->
                                <tr class="encabezado">
                                    <td class="text-center  encabezado text-white">DESEMPEÑO</td>
                                    <td class="text-center  encabezado text-white">ASPECTOS</td>
                                    <td class="text-center  encabezado text-white">CONDUCTAS OBSERVADAS<br />(EVIDENCIAS)</td>
                                    <td class="text-center  encabezado text-white">CONCLUSIÓN</td>
                                    <td class="text-center  encabezado text-white">CALIFICACIÓN</td>
                                    <td class="text-center  encabezado text-white" runat="server" id="encabezado" visible="false">NOTA ADICIONAL</td>
                            
                                </tr>
                                <!--columnas-->

                               <!--1 fila-->
                                <tr>

                                    <!--celda 1-->
                                    <td style="width: 153px" rowspan="3" class="text-left justify-content-center">
                                        <p style="text-autospace: none; font-size: 11.0pt; font-family: Tahoma, sans-serif; margin-left: 0cm; margin-right: 0cm; margin-top: 0cm; margin-bottom: .0001pt;">
                                            <b><span><b class="text-success">(D1)</b> PROMUEVE LA PARTICIPACIÓN ACTIVA DE LOS ESTUDIANTES EN LA CONSTRUCCIÓN DE SUS APRENDIZAJES.</span></b>
                                        </p>
                                    </td>

                                    <!--celda 2-->
                                    <td class="celda-margen">
                                        <span><b class="text-success">(A1.1)</b>Conexiones con las experiencias previas de los estudiantes o con sus necesidades de desempeño profesional.</span>
                                    </td>
                                    
                                     <!--celda 3-->
                                    <td  class="celda-margen">
                                        <asp:TextBox ID="a1" runat="server" Height="160px" MaxLength="2000" Width="300px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                    </td>

                                     <!--celda 4-->
                                    <td  style="width: 93px">
                                        <asp:TextBox ID="a11" runat="server" Height="160px" MaxLength="2000" Width="300px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                    </td>

                                     <!--celda 5-->
                                    <td class="text-left" rowspan="3">
                                        <asp:DropDownList ID="r1" runat="server" BackColor="#FFFFCC" Font-Size="20pt" Width="115px" CssClass="formato-control">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>

                                    <!--Adicional-->
                                     <td class="text-left" rowspan="3" runat="server" id="fila1" visible="false">
                                        <asp:DropDownList ID="r1_copy" runat="server" BackColor="#FFFFCC" Font-Size="20pt" Width="115px" CssClass="formato-control">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <!--Adicional-->

                                </tr>
                                <!--1 fila-->

                                <tr>
                                    <td style="width: 250px; height: 22px;">
                                        <p class="MsoNormal">
                                            <span><b class="text-success">(A1.2)</b>Estrategias que promueven la participación activa de los estudiantes.</span><p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                        </p>
                                    </td>
                                    <td style="width: 173px; height: 22px;">
                                        <asp:TextBox ID="a2" runat="server" Height="100px" MaxLength="2000" Width="300px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="a2" ErrorMessage="* Campo obligatorio" Style="color: #FF0000" ValidationGroup="VG1"></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td style="width: 93px; height: 22px;">
                                        <asp:TextBox ID="a22" runat="server" Height="100px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="a22" ErrorMessage="* Campo obligatorio" Style="color: #FF0000" ValidationGroup="VG1"></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 250px; height: 22px;">
                                        <p class="MsoNormal">
                                            <span><b class="text-success">(A1.3)</b>Mecanismos para asegurar el involucramiento de todos los estudiantes.</span>
                                        </p>
                                    </td>
                                    <td style="height: 22px; width: 173px">
                                        <asp:TextBox ID="a3" runat="server" Height="135px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="VG1" runat="server" ControlToValidate="a3" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td style="width: 93px; height: 22px">
                                        <asp:TextBox ID="a33" runat="server" Height="135px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="VG1" runat="server" ControlToValidate="a33" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                  

                                    <!--Adicional-->
                                    <td runat="server" id="fila1_sinNada" visible="false"></td>
                                     <!--Adicional-->
                                </tr>
                                <tr>
                                    <td style="width: 129px; background-color: #D9F2FF;"><b><span><b class="text-success">(D2)</b>PROMUEVE EL PENSAMIENTO CRÍTICO Y/O CREATIVO DE LOS ESTUDIANTES.</span></b></td>
                                    <td style="height: 20px; width: 250px; background-color: #D9F2FF;">
                                        <p class="MsoNormal">

                                            <span><b class="text-success">(2.1)</b>Estrategias que facilitan el desarrollo del pensamiento crítico o creativo.<p></p>
                                            </span>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                        </p>
                                    </td>
                                    <td style="height: 20px; width: 173px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="a4" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td style="height: 20px; width: 93px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="a44" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                    <td class="text-left" style="background-color: #D9F2FF">
                                        <asp:DropDownList ID="r2" runat="server" Font-Size="20pt" Width="115px" BackColor="#FFFFCC" CssClass="formato-control">
                                            <%-- <asp:ListItem Selected="True"> ... </asp:ListItem>--%>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>

                                    <!--copy-->
                                    <td runat="server" id="fil2" visible="false">
                                        <asp:DropDownList ID="r2_copy" runat="server" Font-Size="20pt" Width="115px" BackColor="#FFFFCC" CssClass="formato-control">
                                            <%-- <asp:ListItem Selected="True"> ... </asp:ListItem>--%>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <!--copy-->

                                </tr>
                                <tr>
                                    <td rowspan="3" style="width: 129px">
                                        <p style="text-autospace: none; font-size: 11.0pt; font-family: Tahoma, sans-serif; margin-left: 0cm; margin-right: 0cm; margin-top: 0cm; margin-bottom: .0001pt;">
                                            <b><span lang="ES-CL"><b class="text-success">(D3)</b>FAVORECE LA APROXIMACIÓN Y EL ANÁLISIS&nbsp; SOBRE LA PRÁCTICA PEDAGÓGICA.<p>
                                            </p>
                                            </span></b>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                            <p>
                                            </p>
                                        </p>
                                    </td>
                                    <td style="width: 250px"><span><b class="text-success">(A3.1)</b>Oportunidades de aproximación a la práctica pedagógica</span></td>
                                    <td style="width: 173px">
                                        <asp:TextBox ID="a6" runat="server" CssClass="formato-control MultiLineTextBox" Height="75px" MaxLength="2000" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        
                                    <td style="width: 93px">
                                        <asp:TextBox ID="a66" runat="server" CssClass="formato-control MultiLineTextBox" Height="75px" MaxLength="2000" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        
                                    <td class="text-left" rowspan="3">
                                        <asp:DropDownList ID="r3" runat="server" BackColor="#FFFFCC" CssClass="formato-control" Font-Size="20pt" Width="115px">
                                        
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <!--Adicional-->
                                    <td id="fila3" runat="server" class="text-left" rowspan="3" visible="false">
                                        <asp:DropDownList ID="r3_copy" runat="server" BackColor="#FFFFCC" CssClass="formato-control" Font-Size="20pt" Width="115px">
                                            <%--<asp:ListItem Selected="True"> ... </asp:ListItem>--%>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                 
                                    <!--Adicional-->
                                </tr>
                                <tr>
                                    <td style="width: 250px; height: 20px;">
                                        <span><b class="text-success">(A3.2)</b>Análisis de los elementos de la práctica pedagógica.</span></td>
                                    <td style="width: 173px; height: 20px;">
                                        <asp:TextBox ID="a7" runat="server" CssClass="formato-control MultiLineTextBox" Height="75px" MaxLength="2000" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="VG1" runat="server" ControlToValidate="a7" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%></td>
                                    <td style="width: 93px; height: 20px;">
                                        <asp:TextBox ID="a77" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="VG1" runat="server" ControlToValidate="a6" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                     
                                </tr>
                                <tr>
                                    <td style="width: 250px; "><span><b class="text-success">(A3.3)</b>Impacto de la práctica pedagógica en el aprendizaje</span></td>
                                   
                                    <td style="width: 173px; ">
                                        <asp:TextBox ID="a8" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="VG1" runat="server" ControlToValidate="a7" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td style="width: 93px; ">
                                        <asp:TextBox ID="a88" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ValidationGroup="VG1" runat="server" ControlToValidate="a77" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                              
                                </tr>
                                <tr>
                                    <td style="width: 129px; background-color: #D9F2FF;" rowspan="3"><b><span><b class="text-success">(D4)</b>EVALÚA FORMATIVAMENTE LOS APRENDIZAJES DE LOS ESTUDIANTES.</span></b></td>
                                    <td style="width: 250px; background-color: #D9F2FF;">
                                        <span><b class="text-success">(A4.1)</b>Involucra a los estudiantes en el proceso de evaluación de sus aprendizajes.</span></td>
                                    <td style="width: 173px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="a9" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine" BackColor="#DFF4FF"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" ValidationGroup="VG1" runat="server" ControlToValidate="a88" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td style="width: 93px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="a99" runat="server" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" Height="75px" MaxLength="2000" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator18" ValidationGroup="VG1" runat="server" ControlToValidate="a99" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%></td>
                                    <td class="text-left" rowspan="3" style="background-color: #D9F2FF">
                                        <asp:DropDownList ID="r4" runat="server" BackColor="#FFFFCC" CssClass="formato-control" Font-Size="20pt" Width="115px">
                                            <%--      <asp:ListItem Selected="True"> ... </asp:ListItem>--%>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <!--Adicional-->
                                    <td id="fila4" runat="server" class="text-left" rowspan="3" style="background-color: #D9F2FF" visible="false">
                                        <asp:DropDownList ID="r4_copy" runat="server" BackColor="#FFFFCC" CssClass="formato-control" Font-Size="20pt" Width="115px">
                                            <%--      <asp:ListItem Selected="True"> ... </asp:ListItem>--%>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <!--Adicional-->
                                </tr>
                                <tr>
                                    <td style="width: 250px; background-color: #D9F2FF;"><span><b class="text-success">(A4.2)</b>Recoge evidencias de las actividades que realizan los estudiantes.</span></td>
                                    <td style="width: 173px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="a10" runat="server" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" Height="75px" MaxLength="2000" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator19" ValidationGroup="VG1" runat="server" ControlToValidate="a10" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%></td>
                                    <td style="width: 93px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="a1010" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" ValidationGroup="VG1" runat="server" ControlToValidate="a9" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 250px; background-color: #D9F2FF;"><span><b class="text-success">(A4.3)</b>Brinda retroalimentación formativa a los estudiantes para el logro de los aprendizajes.</span></td>
                                    <td style="width: 173px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="aa11" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator19" ValidationGroup="VG1" runat="server" ControlToValidate="a10" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td style="width: 93px; background-color: #D9F2FF;">
                                        <asp:TextBox ID="aa1111" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator21" ValidationGroup="VG1" runat="server" ControlToValidate="a1010" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 129px; " rowspan="2"><b><span><b class="text-success">(D5)</b>FUNDAMENTA LOS APRENDIZAJES Y LA PRÁCTICA PEDAGÓGICA CON FUENTES BIBLIOGRÁFICAS.</span></b></td>
                                    <td style="width: 250px; ">
                                        <span><b class="text-success">(A5.1)</b>Utiliza fuentes bibliográficas para fundamentar sus explicaciones o estrategias pedagógicas.</span></td>
                                    <td style="width: 173px; ">
                                        <asp:TextBox ID="a12" runat="server" Height="130px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator22" ValidationGroup="VG1" runat="server" ControlToValidate="aa1111" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td style="width: 93px">
                                        <asp:TextBox ID="a1212" runat="server" CssClass="formato-control MultiLineTextBox" Height="130px" MaxLength="2000" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator24" ValidationGroup="VG1" runat="server" ControlToValidate="a1212" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%></td>
                                    <td class="text-left" rowspan="2">
                                        <asp:DropDownList ID="r5" runat="server" BackColor="#FFFFCC" CssClass="formato-control" Font-Size="20pt" Width="115px">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <!--Adiciconal-->
                                    <td id="fila5" runat="server" class="text-left" rowspan="2" visible="false">
                                        <asp:DropDownList ID="r5_copy" runat="server" BackColor="#FFFFCC" CssClass="formato-control" Font-Size="20pt" Width="115px">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>II</asp:ListItem>
                                            <asp:ListItem>III</asp:ListItem>
                                            <asp:ListItem>IV</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <!--Adiciconal-->
                                </tr>
                                <tr>
                                    <td style="width: 250px; height: 160px;"><span><b class="text-success">(A5.2)</b>Promueve que los estudiantes utilicen fuentes bibliográficas para fundamentar sus explicaciones o propuestas pedagógicas.</span></td>
                                    <td style="width: 173px; height: 160px;">
                                        <asp:TextBox ID="a13" runat="server" CssClass="formato-control MultiLineTextBox" Height="170px" MaxLength="2000" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                    <td style="width: 93px; height: 160px;">
                                        <asp:TextBox ID="a1313" runat="server" Height="170px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                        
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <div align="center">
                                            <table border="1" class="nav-justified">
                                                <tr>
                                                    <td rowspan="3"><strong>PRESENCIA DE MARCA(S)</strong></td>
                                                    <td class="text-center" style="color: #FFFFFF; background-color: #5D7B9D; width: 592px"><strong>CONDUCTAS</strong></td>
                                                    <td class="text-center" style="color: #FFFFFF; background-color: #5D7B9D"><strong>SI/NO</strong></td>
                                                    <td class="text-center" style="color: #FFFFFF; background-color: #5D7B9D"><strong>EVIDENCIAS</strong><br />
                                                        <h5>(Si marcó “Sí” describir al detalle lo observado)</h5>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td>EL DOCENTE FORMADOR BRINDA INFORMACIÓN INCORRECTA A LOS ESTUDIANTES DURANTE LA SESIÓN OBSERVADA.</td>
                                                    <td>

                                                      
                                                                <asp:DropDownList ID="a14" runat="server" CssClass="formato-control a14jquery" Width="60">
                                                                    <asp:ListItem>SI</asp:ListItem>
                                                                    <asp:ListItem>NO</asp:ListItem>
                                                                </asp:DropDownList>

                                         
                                                    </td>

                                                    <td>
                                                        <asp:TextBox ID="a1414" runat="server" CssClass="formato-control MultiLineTextBox" Height="55px" TextMode="MultiLine" Width="298px"></asp:TextBox>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>EL DOCENTE FALTA EL RESPETO (OFENDE VERBAL O FÍSICAMENTE, HUMILLA O DISCRIMINA) A LOS ESTUDIANTES, O PERMITE FALTAS DE RESPETO ENTRE ELLOS DURANTE LA SESIÓN.
                                                    </td>
                                                    <td>

                                                   
                                                                 <asp:DropDownList ID="a15" runat="server" CssClass="formato-control" Width="60">
                                                            <asp:ListItem>SI</asp:ListItem>
                                                            <asp:ListItem>NO</asp:ListItem>
                                                        </asp:DropDownList>

                                                    

                                                       
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="a1515" runat="server" CssClass="formato-control MultiLineTextBox" Height="55px" TextMode="MultiLine" Width="298px"></asp:TextBox>
                                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator28" ValidationGroup="VG1" runat="server" ControlToValidate="a1515" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>

                            </table>
                        </section>
                    </div>
                </div>
            </div>
                 </div>
        </div>
    </div>

    <br />

    <div class="card">
        <div class="card-header" runat="server" id="pnlListCalificacion">
            <h4 class="mb-0 text-primary">
                Lista de calificaciones</h4>
        </div>

        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12" style="overflow:scroll">
                
                            <asp:GridView ID="gvExportarTodo" runat="server" CssClass="table table-bordered table-hover reporte" DataKeyNames="videoID,id,fechaCreacion" AutoGenerateColumns="False" CellPadding="4" DataSourceID="exportarTodo" ForeColor="#333333" GridLines="None" BorderStyle="Dotted" BorderWidth="1px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                                <Columns>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="btnReporte" runat="server" Text="Ver Reporte" OnClick="btnReporte_Click" CssClass="btn btn-success reporte" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" OnClick="btnSeleccionar_Click" CssClass="btn btn-outline-dark" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center" Visible="False">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="videoID" HeaderText="videoID" SortExpression="videoID" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center" Visible="False">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="docente" HeaderText="docente" SortExpression="docente" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center" Visible="False">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="fechaCreacion" HeaderText="FechaCreacion" SortExpression="fechaCreacion" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="t_nombres" HeaderText="Nombres" SortExpression="t_nombres" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="t_apellidoPaterno" HeaderText="Apellido Paterno" SortExpression="t_apellidoPaterno" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="t_apellidoMaterno" HeaderText="Apellido Materno" SortExpression="t_apellidoMaterno" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:TemplateField HeaderText="video" SortExpression="video">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("video") %>'></asp:TextBox>
                                        </EditItemTemplate>

                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# Bind("video") %>'><%# Eval("video") %></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="evaluador" HeaderText="evaluador" SortExpression="evaluador" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#FFFFCC" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="r1" HeaderText="D1" SortExpression="r1" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="r1Extra" HeaderText="D1 Adicional" SortExpression="r1Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="r2" HeaderText="D2" SortExpression="r2" ItemStyle-BackColor="#CCFFFF">
                                        <ItemStyle BackColor="#CCFFFF" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="r2Extra" HeaderText="D2 Adicional" SortExpression="r2Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>


                                    <asp:BoundField DataField="r3" HeaderText="D3" SortExpression="r3" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="r3Extra" HeaderText="D3 Adicional" SortExpression="r3Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>


                                    <asp:BoundField DataField="r4" HeaderText="D4" SortExpression="r4" ItemStyle-BackColor="#CCFFFF">
                                        <ItemStyle BackColor="#CCFFFF" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="r4Extra" HeaderText="D4 Adicional" SortExpression="r4Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>


                                    <asp:BoundField DataField="r5" HeaderText="D5" SortExpression="r5" ControlStyle-BackColor="#CCFFFF" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#CCFFFF" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="r5Extra" HeaderText="D5 Adicional" SortExpression="r5Extra" ControlStyle-BackColor="#FFFFCC" ItemStyle-BackColor="#CCFFFF" ItemStyle-ForeColor="#003366" ItemStyle-BorderStyle="Dotted" ItemStyle-BorderWidth="1" ItemStyle-HorizontalAlign="Center">
                                        <ControlStyle BackColor="#FFFFCC" />
                                        <ItemStyle BackColor="#CCFFFF" BorderStyle="Dotted" BorderWidth="1px" ForeColor="#003366" HorizontalAlign="Center" />
                                    </asp:BoundField>

                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    NO EXISTEN EVALUACIONES PARA ESTE VIDEO
                                </EmptyDataTemplate>
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
                 
                    </div>
                </div>
            </div>
        </div>
    </div>


    <br />
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="dsvideosCargados" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="sp_SeleccionarVideoxfilmadorX" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ProfileParameter Name="filmador" PropertyName="UserName" Type="String" />
            <asp:QueryStringParameter Name="dni" QueryStringField="p" Type="String" />
            <asp:Parameter Name="evaluador" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

    <asp:SqlDataSource ID="exportarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT evaluacionVideos.id,evaluacionVideos.videoID,evaluacionVideos.fechaCreacion,ficharegistro, evaluacionVideos.a1, evaluacionVideos.a11, evaluacionVideos.a2, evaluacionVideos.a22, evaluacionVideos.a3, evaluacionVideos.a33, evaluacionVideos.r1,evaluacionVideos.r1Extra, evaluacionVideos.a4, evaluacionVideos.a44,
                         evaluacionVideos.a5, evaluacionVideos.a55, evaluacionVideos.r2, evaluacionVideos.r2Extra,evaluacionVideos.a6, evaluacionVideos.a66, evaluacionVideos.a7, evaluacionVideos.a77, evaluacionVideos.a8, evaluacionVideos.a88, evaluacionVideos.r3,evaluacionVideos.r3Extra,
                         evaluacionVideos.a9, evaluacionVideos.a99, evaluacionVideos.a10, evaluacionVideos.a1010, evaluacionVideos.aa11, evaluacionVideos.aa1111, evaluacionVideos.r4,evaluacionVideos.r4Extra, evaluacionVideos.a12, evaluacionVideos.a1212,
                         evaluacionVideos.a13, evaluacionVideos.a1313, evaluacionVideos.r5, evaluacionVideos.r5Extra,evaluacionVideos.a14, evaluacionVideos.a1414, evaluacionVideos.a15, evaluacionVideos.a1515, evaluacionVideos.docente, evaluacionVideos.video,
                         evaluacionVideos.videoID, evaluacionVideos.evaluador, evaluacionVideos.estado, dbo.p_persona.T_ApellidoPaterno, dbo.p_persona.T_ApellidoMaterno, dbo.p_persona.T_Nombres, dbo.p_docente.ID_Docente
                                            FROM            dbo.p_persona INNER JOIN
                         dbo.p_docente ON dbo.p_persona.ID_Persona = dbo.p_docente.ID_Persona INNER JOIN
                         [sigespe_evaluacionFid].[sigespe_evaluacionsa].[evaluacionVideos] ON dbo.p_persona.T_NroDocumento = [sigespe_evaluacionFid].[sigespe_evaluacionsa].[evaluacionVideos].docente
                                
								
								
								
								WHERE        (evaluacionVideos.videoID = @videoID) AND
                                              (evaluacionVideos.evaluador = @evaluador)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblVideoID" Name="videoID" PropertyName="Text" Type="String" />
            <asp:Parameter Name="evaluador" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%--  <!-- Modal -->
    <div class="modal" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center header-color-sesion">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">¿Esta seguro de guardar el registro?</h4>
                </div>
                <div class="modal-body">f
                    <div class="row">
                        <div class="col-md-12">
                            <img src="../../imagenes/check.png" width="140" height="30" class="img-responsive img-Close" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-default" OnClick="btnAceptar_Click" />
                    <a class="btn btn-primary" data-dismiss="modal">Cancelar</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->--%>

    <!-- Modal -->
    <div id="myModal" class="modal" role="dialog">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="form-group">
                    <h5 style="margin-left: 50px">REGISTRO DE OBSERVACIÓN Y CALIFICACIÓN DEL DESEMPEÑO DEL DOCENTE FORMADOR</h5>
                </div>
            </div>
        </div>

        <br />


        <style>
            table {
                border: 1px solid #525252 !important;
            }

            td {
                border: 1px solid #525252 !important;
            }

            .tblEncabezado {
                margin-bottom: -0px !important;
            }

            .tblEncabezadoPrint {
                margin-bottom: -5px !important;
            }

            input[type=text]:focus {
                outline: 2px solid #ffffff; /* oranges! yey */
            }

            input[type=text] {
                border: none; /* Remove default borders */
                padding: 4px 8px;
            }

            .formato-control {
                border: none; /* Remove default borders */
                padding: 4px 8px;
            }

                .formato-control :focus {
                    outline: 2px solid #ffffff; /* oranges! yey */
                }

            input[type=file] {
                border: none !important; /* Remove default borders */
                padding: 4px 8px !important;
            }

            .cssArchivo {
                width: 55px !important;
                height: 50px !important;
            }

            .MultiLineTextBox {
                overflow: auto !important;
                resize: none;
                border: none !important;
                padding: 4px 8px !important;
            }

                .MultiLineTextBox:focus {
                    outline: 2px solid #ffffff; /* oranges! yey */
                }
        </style>


        <div class="row">
            <div class="col-md-12">

                <table>

                    <!--1 col-->
                    <tr>
                        <td style="border: 1px solid #525252;" width="800px">DOCENTE FORMADOR(A) : <%= this.Session["Docente"] %></td>
                    </tr>

                    <!--2 col-->
                    <tr>
                        <td style="border: 1px solid #525252;" width="800px">IESP/REGIÓN/PROVINCIA: <%= this.Session["Region"] %></td>
                    </tr>

                    <!--3 col-->
                    <tr>
                        <td style="border: 1px solid #525252;" width="800px">ESPECIALIDAD O PROGRAMA DE ESTUDIOS: Docencia </td>
                    </tr>

                    <!--4 col-->
                    <tr>
                        <td style="border: 1px solid #525252;" width="800px">FECHA DE EVALUACIÓN: <%= this.Session["FechaEvaluacion"] %></td>
                    </tr>
                </table>
            </div>
        </div>

        <br />
        <br />

        <div class="row">
            <div class="col-md-12">
                <asp:Panel ID="Panel1" runat="server" BorderColor="White" CssClass="table table-bordered table-hover tblEncabezadoPrint">
                    <table style="border: 1px solid #525252;">

                        <tr>
                            <td style="width: 151px; background-color: #5D7B9D; color: #FFFFFF; border: 1px solid #525252" class="text-center"><strong>DESEMPEÑO</strong></td>
                            <td style="width: 261px; background-color: #5D7B9D; color: #FFFFFF; border-bottom: 1px solid #525252" class="text-left"><span style="font-weight: bold">ASPECTOS</span></td>
                            <td style="width: 319px; background-color: #5D7B9D; border-bottom: 1px solid #525252" class="text-left"><b><span style="color: #FFFFFF">CONDUCTAS
                                        <br />
                                OBSERVADAS
                                        <br />
                                (EVIDENCIAS)</span></b></td>
                            <td style="width: 246px; background-color: #5D7B9D; color: #FFFFFF; border-bottom: 1px solid #525252" class="text-left"><strong>CONCLUSIÓN</strong></td>
                            <td style="background-color: #5D7B9D; font-weight: bold; color: #FFFFFF; width: 105px; border-bottom: 1px solid #525252" class="text-left">CALIFICACIÓN</td>
                        </tr>

                
                        <tr>
                            <td style="width: 129px;" rowspan="3">
                                <p style="text-autospace: none; font-size: 11.0pt; font-family: Tahoma, sans-serif; margin-left: 0cm; margin-right: 0cm; margin-top: 0cm; margin-bottom: .0001pt;">
                                    <b><span>PROMUEVE LA PARTICIPACIÓN DE LOS ESTUDIANTES EN LA CONSTRUCCIÓN DE SUS APRENDIZAJES.</span></b>
                                </p>
                            </td>
                            <td><span>Conexiones con las experiencias previas de los estudiantes o con sus necesidades de desempeño profesional.</span></td>

                            <td>
                                <asp:TextBox ID="_a1" runat="server" Height="75px" MaxLength="2000" Width="300px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td style="width: 93px;">
                                <asp:TextBox ID="_a11" runat="server" Height="75px" MaxLength="2000" Width="300px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td class="text-left" rowspan="3">
                                <asp:TextBox ID="_r1" runat="server" CssClass="formato-control" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; height: 22px;">
                                <p class="MsoNormal">
                                    <span>Estrategias que promueven la participación activa de los estudiantes.</span><p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                </p>
                            </td>
                            <td style="width: 173px; height: 22px;">
                                <asp:TextBox ID="_a2" runat="server" Height="75px" MaxLength="2000" Width="300px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="a2" ErrorMessage="* Campo obligatorio" Style="color: #FF0000" ValidationGroup="VG1"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px; height: 22px;">
                                <asp:TextBox ID="_a22" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="a22" ErrorMessage="* Campo obligatorio" Style="color: #FF0000" ValidationGroup="VG1"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>

                            <td style="height: 22px; width: 250px">
                                <p class="MsoNormal">
                                    <span>Mecanismos para asegurar el involucramiento de todos los estudiantes.</span>
                                </p>
                            </td>

                            <td style="height: 22px; width: 173px">
                                <asp:TextBox ID="_a3" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                            </td>

                            <td style="width: 93px; height: 22px">
                                <asp:TextBox ID="_a33" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 129px; background-color: #D9F2FF;"><b><span>PROMUEVE EL PENSAMIENTO CRÍTICO Y/O CREATIVO DE LOS ESTUDIANTES.</span></b></td>
                            <td style="height: 20px; width: 250px; background-color: #D9F2FF;">
                                <p class="MsoNormal">

                                    <span>Estrategias que facilitan el desarrollo del pensamiento crítico o creativo.<p></p>
                                    </span>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                </p>
                            </td>
                            <td style="height: 20px; width: 173px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_a4" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="VG1" runat="server" ControlToValidate="a4" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="height: 20px; width: 93px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_a44" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="VG1" runat="server" ControlToValidate="a44" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td class="text-left" rowspan="2" style="background-color: #D9F2FF">
                                <%--  <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="20pt" Width="115px" BackColor="#FFFFCC" CssClass="formato-control">

                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>I</asp:ListItem>
                                                    <asp:ListItem>II</asp:ListItem>
                                                    <asp:ListItem>III</asp:ListItem>
                                                    <asp:ListItem>IV</asp:ListItem>
                                                </asp:DropDownList>--%>
                                <asp:TextBox ID="_r2" runat="server" CssClass="formato-control" />
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3" style="width: 129px">
                                <p style="text-autospace: none; font-size: 11.0pt; font-family: Tahoma, sans-serif; margin-left: 0cm; margin-right: 0cm; margin-top: 0cm; margin-bottom: .0001pt;">
                                    <b><span lang="ES-CL">FAVORECE LA APROXIMACIÓN Y EL ANÁLISIS  SOBRE LA PRÁCTICA PEDAGÓGICA.<p></p>
                                    </span></b>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                </p>
                            </td>
                            <td style="width: 250px"><span>Oportunidades de aproximación a la práctica pedagógica</span></td>
                            <td style="width: 173px">
                                <asp:TextBox ID="_a6" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="VG1" runat="server" ControlToValidate="a6" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px">
                                <asp:TextBox ID="_a66" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="VG1" runat="server" ControlToValidate="a66" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td class="text-left" rowspan="3">
                                <%-- <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="20pt" Width="115px" BackColor="#FFFFCC" CssClass="formato-control">
                                                    <asp:ListItem Selected="True"> ... </asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>I</asp:ListItem>
                                                    <asp:ListItem>II</asp:ListItem>
                                                    <asp:ListItem>III</asp:ListItem>
                                                    <asp:ListItem>IV</asp:ListItem>
                                                </asp:DropDownList>--%>

                                <asp:TextBox ID="_r3" runat="server" CssClass="formato-control" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; height: 20px;"><span>Análisis de los elementos de la práctica pedagógica.</span></td>
                            <td style="width: 173px; height: 20px;">
                                <asp:TextBox ID="_a7" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="VG1" runat="server" ControlToValidate="a7" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px; height: 20px;">
                                <asp:TextBox ID="_a77" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ValidationGroup="VG1" runat="server" ControlToValidate="a77" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px"><span>Impacto de la práctica pedagógica en el aprendizaje</span></td>
                            <td style="width: 173px">
                                <asp:TextBox ID="_a8" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>

                            </td>
                            <td style="width: 93px">
                                <asp:TextBox ID="_a88" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                               
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3" style="width: 129px; background-color: #D9F2FF;"><b><span>EVALÚA FORMATIVAMENTE LOS APRENDIZAJES DE LOS ESTUDIANTES.</span></b></td>
                            <td style="width: 250px; background-color: #D9F2FF;"><span>Involucra a los estudiantes en el proceso de evaluación de sus aprendizajes.</span></td>
                            <td style="width: 173px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_a9" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" ValidationGroup="VG1" runat="server" ControlToValidate="a9" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_a99" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator18" ValidationGroup="VG1" runat="server" ControlToValidate="a99" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td class="text-left" rowspan="3" style="background-color: #D9F2FF">
                                <%--<asp:DropDownList ID="DropDownList4" runat="server" Font-Size="20pt" Width="115px" BackColor="#FFFFCC" CssClass="formato-control">
                                                    <asp:ListItem Selected="True"> ... </asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>I</asp:ListItem>
                                                    <asp:ListItem>II</asp:ListItem>
                                                    <asp:ListItem>III</asp:ListItem>
                                                    <asp:ListItem>IV</asp:ListItem>
                                                </asp:DropDownList>--%>
                                <asp:TextBox ID="_r4" runat="server" CssClass="formato-control" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; background-color: #D9F2FF;"><span>Recoge evidencias de las actividades que realizan los estudiantes.</span></td>
                            <td style="width: 173px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_a10" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator19" ValidationGroup="VG1" runat="server" ControlToValidate="a10" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_a1010" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator21" ValidationGroup="VG1" runat="server" ControlToValidate="a1010" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; background-color: #D9F2FF;"><span>Brinda retroalimentación formativa a los estudiantes para el logro de los aprendizajes.</span></td>
                            <td style="width: 173px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_aa11" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator20" ValidationGroup="VG1" runat="server" ControlToValidate="aa11" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px; background-color: #D9F2FF;">
                                <asp:TextBox ID="_aa1111" runat="server" Height="75px" Width="300px" MaxLength="2000" BackColor="#DFF4FF" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator22" ValidationGroup="VG1" runat="server" ControlToValidate="aa1111" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="width: 129px"><b><span>FUNDAMENTA LOS APRENDIZAJES Y LA PRÁCTICA PEDAGÓGICA CON FUENTES BIBLIOGRÁFICAS.</span></b></td>
                            <td style="width: 250px"><span>Utiliza fuentes bibliográficas para fundamentar sus explicaciones o estrategias pedagógicas.</span></td>
                            <td style="width: 173px">
                                <asp:TextBox ID="_a12" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator23" ValidationGroup="VG1" runat="server" ControlToValidate="a12" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px">
                                <asp:TextBox ID="_a1212" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator24" ValidationGroup="VG1" runat="server" ControlToValidate="a1212" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td class="text-left" rowspan="2">
                                <%-- <asp:DropDownList ID="DropDownList5" runat="server" Font-Size="20pt" Width="115px" BackColor="#FFFFCC" CssClass="formato-control">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>I</asp:ListItem>
                                                    <asp:ListItem>II</asp:ListItem>
                                                    <asp:ListItem>III</asp:ListItem>
                                                    <asp:ListItem>IV</asp:ListItem>
                                                </asp:DropDownList>--%>
                                <asp:TextBox ID="_r5" runat="server" CssClass="formato-control" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; height: 160px;"><span>Promueve que los estudiantes utilicen fuentes bibliográficas para fundamentar sus respuestas o propuestas pedagógicas.</span></td>
                            <td style="width: 173px; height: 160px;">
                                <asp:TextBox ID="_a13" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator25" ValidationGroup="VG1" runat="server" ControlToValidate="a13" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td style="width: 93px; height: 160px;">
                                <asp:TextBox ID="_a1313" runat="server" Height="75px" Width="300px" MaxLength="2000" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator26" ValidationGroup="VG1" runat="server" ControlToValidate="a1313" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="5">
                                <div align="center">
                                    <table>
                                        <tr>
                                            <td rowspan="3"><strong>PRESENCIA DE MARCA(S)</strong></td>
                                            <td style="color: #FFFFFF; background-color: #5D7B9D"><strong>CONDUCTAS</strong></td>
                                            <td style="color: #FFFFFF; background-color: #5D7B9D"><strong>SI/NO</strong></td>

                                            <td style="color: #FFFFFF; background-color: #5D7B9D"><strong>EVIDENCIAS</strong></td>
                                        </tr>
                                        <tr>
                                            <td>EL DOCENTE FORMADOR BRINDA INFORMACIÓN INCORRECTA A LOS ESTUDIANTES DURANTE LA SESIÓN OBSERVADA.</td>
                                            <td>
                                                <%--<asp:DropDownList ID="DropDownList6" runat="server" CssClass="formato-control" Width="60">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>SI</asp:ListItem>
                                                                    <asp:ListItem>NO</asp:ListItem>
                                                                </asp:DropDownList>--%>

                                                <asp:TextBox ID="_a14" runat="server" CssClass="formato-control" />
                                            </td>

                                            <td>
                                                <asp:TextBox ID="_a1414" runat="server" Height="55px" Width="298px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator27" ValidationGroup="VG1" runat="server" ControlToValidate="a1414" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>EL DOCENTE FALTA EL RESPETO (OFENDE VERBAL O FÍSICAMENTE, HUMILLA O DISCRIMINA) A LOS ESTUDIANTES, O PERMITE FALTAS DE RESPETO ENTRE ELLOS DURANTE LA SESIÓN.</td>
                                            <td>
                                                <%-- <asp:DropDownList ID="DropDownList7" runat="server" CssClass="formato-control" Width="60">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>SI</asp:ListItem>
                                                                    <asp:ListItem>NO</asp:ListItem>
                                                                </asp:DropDownList>--%>
                                                <asp:TextBox ID="_a15" runat="server" CssClass="formato-control" />
                                            </td>

                                            <td>
                                                <asp:TextBox ID="_a1515" runat="server" Height="55px" Width="298px" CssClass="formato-control MultiLineTextBox" TextMode="MultiLine"></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator28" ValidationGroup="VG1" runat="server" ControlToValidate="a1515" ErrorMessage="* Campo obligatorio" Style="color: #FF0000"></asp:RequiredFieldValidator>--%>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>

                </asp:Panel>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <table>
                    <tr>
                        <td style="border: 1px solid #525252;"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <!-- Modal -->

    <br />
    <br />


</asp:Content>
