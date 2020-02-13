<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DEencuestaEstudiante.aspx.cs" Inherits="Evaluacion.WEB.Edigitador.DEencuestaEstudiante" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script>
        StackExchange.ready(function () {

            StackExchange.using("snippets", function () {
                StackExchange.snippets.initSnippetRenderer();
            });


            StackExchange.using("postValidation", function () {
                StackExchange.postValidation.initOnBlurAndSubmit($('#post-form'), 2, 'answer');
            });


            StackExchange.question.init({ showAnswerHelp: true, totalCommentCount: 8, shownCommentCount: 5, highlightColor: '#F4A83D', backgroundColor: '#FFF', questionId: 175656 });

            styleCode();

            StackExchange.realtime.subscribeToQuestion('637', '175656');
            StackExchange.using("gps", function () { StackExchange.gps.trackOutboundClicks('#content', '.post-text'); });

        });
    </script>

        <h2><%--            </ContentTemplate>
        </asp:UpdatePanel>
        <br />--%>Encuesta de Estudiantes</h2>

    
&nbsp;<%--   <asp:Button ID="Button1" runat="server" Text="Siguiente" OnClick="Button1_Click" />--%><%--            </ContentTemplate>
        </asp:UpdatePanel>
        <br />--%><%--      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />--%><asp:FormView ID="FormView1" runat="server"  CellPadding="4" DataKeyNames="id_deEncuesta" DataSourceID="dsEcuesta" ForeColor="#333333" style="margin-right: 1px" OnItemInserted="FormView1_ItemInserted" OnItemInserting="FormView1_ItemInserting" Height="53px">
            <EditItemTemplate>
                id_deEncuesta:
                <asp:Label ID="id_deEncuestaLabel1" runat="server" Text='<%# Eval("id_deEncuesta") %>' />
                <br />
                IA:
                <asp:TextBox ID="IATextBox" runat="server" Text='<%# Bind("IA") %>' />
                <br />
                IB:
                <asp:TextBox ID="IBTextBox" runat="server" Text='<%# Bind("IB") %>' />
                <br />
                IC:
                <asp:TextBox ID="ICTextBox" runat="server" Text='<%# Bind("IC") %>' />
                <br />
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                IE:
                <asp:TextBox ID="IETextBox" runat="server" Text='<%# Bind("IE") %>' />
                <br />
                IF:
                <asp:TextBox ID="IFTextBox" runat="server" Text='<%# Bind("IF") %>' />
                <br />
                II1:
                <asp:TextBox ID="II1TextBox" runat="server" Text='<%# Bind("II1") %>' />
                <br />
                II2:
                <asp:TextBox ID="II2TextBox" runat="server" Text='<%# Bind("II2") %>' />
                <br />
                II3:
                <asp:TextBox ID="II3TextBox" runat="server" Text='<%# Bind("II3") %>' />
                <br />
                II4:
                <asp:TextBox ID="II4TextBox" runat="server" Text='<%# Bind("II4") %>' />
                <br />
                III1:
                <asp:TextBox ID="III1TextBox" runat="server" Text='<%# Bind("III1") %>' />
                <br />
                III2:
                <asp:TextBox ID="III2TextBox" runat="server" Text='<%# Bind("III2") %>' />
                <br />
                III3:
                <asp:TextBox ID="III3TextBox" runat="server" Text='<%# Bind("III3") %>' />
                <br />
                III4:
                <asp:TextBox ID="III4TextBox" runat="server" Text='<%# Bind("III4") %>' />
                <br />
                IV1:
                <asp:TextBox ID="IV1TextBox" runat="server" Text='<%# Bind("IV1") %>' />
                <br />
                IV2:
                <asp:TextBox ID="IV2TextBox" runat="server" Text='<%# Bind("IV2") %>' />
                <br />
                IV3:
                <asp:TextBox ID="IV3TextBox" runat="server" Text='<%# Bind("IV3") %>' />
                <br />
                IV4:
                <asp:TextBox ID="IV4TextBox" runat="server" Text='<%# Bind("IV4") %>' />
                <br />
                IV5:
                <asp:TextBox ID="IV5TextBox" runat="server" Text='<%# Bind("IV5") %>' />
                <br />
                IV6:
                <asp:TextBox ID="IV6TextBox" runat="server" Text='<%# Bind("IV6") %>' />
                <br />
                IV7:
                <asp:TextBox ID="IV7TextBox" runat="server" Text='<%# Bind("IV7") %>' />
                <br />
                IV8:
                <asp:TextBox ID="IV8TextBox" runat="server" Text='<%# Bind("IV8") %>' />
                <br />
                V1:
                <asp:TextBox ID="V1TextBox" runat="server" Text='<%# Bind("V1") %>' />
                <br />
                V2:
                <asp:TextBox ID="V2TextBox" runat="server" Text='<%# Bind("V2") %>' />
                <br />
                V3:
                <asp:TextBox ID="V3TextBox" runat="server" Text='<%# Bind("V3") %>' />
                <br />
                V4:
                <asp:TextBox ID="V4TextBox" runat="server" Text='<%# Bind("V4") %>' />
                <br />
                V5:
                <asp:TextBox ID="V5TextBox" runat="server" Text='<%# Bind("V5") %>' />
                <br />
                V6:
                <asp:TextBox ID="V6TextBox" runat="server" Text='<%# Bind("V6") %>' />
                <br />
                V7:
                <asp:TextBox ID="V7TextBox" runat="server" Text='<%# Bind("V7") %>' />
                <br />
                V8:
                <asp:TextBox ID="V8TextBox" runat="server" Text='<%# Bind("V8") %>' />
                <br />
                V9:
                <asp:TextBox ID="V9TextBox" runat="server" Text='<%# Bind("V9") %>' />
                <br />
                VI1:
                <asp:TextBox ID="VI1TextBox" runat="server" Text='<%# Bind("VI1") %>' />
                <br />
                VI2:
                <asp:TextBox ID="VI2TextBox" runat="server" Text='<%# Bind("VI2") %>' />
                <br />
                VI3:
                <asp:TextBox ID="VI3TextBox" runat="server" Text='<%# Bind("VI3") %>' />
                <br />
                VII1:
                <asp:TextBox ID="VII1TextBox" runat="server" Text='<%# Bind("VII1") %>' />
                <br />
                VII2:
                <asp:TextBox ID="VII2TextBox" runat="server" Text='<%# Bind("VII2") %>' />
                <br />
                VII3:
                <asp:TextBox ID="VII3TextBox" runat="server" Text='<%# Bind("VII3") %>' />
                <br />
                VIII1:
                <asp:TextBox ID="VIII1TextBox" runat="server" Text='<%# Bind("VIII1") %>' />
                <br />
                VIII2:
                <asp:TextBox ID="VIII2TextBox" runat="server" Text='<%# Bind("VIII2") %>' />
                <br />
                VIII3:
                <asp:TextBox ID="VIII3TextBox" runat="server" Text='<%# Bind("VIII3") %>' />
                <br />
                VIII4:
                <asp:TextBox ID="VIII4TextBox" runat="server" Text='<%# Bind("VIII4") %>' />
                <br />
                VIII5:
                <asp:TextBox ID="VIII5TextBox" runat="server" Text='<%# Bind("VIII5") %>' />
                <br />
                IX1:
                <asp:TextBox ID="IX1TextBox" runat="server" Text='<%# Bind("IX1") %>' />
                <br />
                IX2:
                <asp:TextBox ID="IX2TextBox" runat="server" Text='<%# Bind("IX2") %>' />
                <br />
                IX3:
                <asp:TextBox ID="IX3TextBox" runat="server" Text='<%# Bind("IX3") %>' />
                <br />
                IX4:
                <asp:TextBox ID="IX4TextBox" runat="server" Text='<%# Bind("IX4") %>' />
                <br />
                IX5:
                <asp:TextBox ID="IX5TextBox" runat="server" Text='<%# Bind("IX5") %>' />
                <br />
                IX6:
                <asp:TextBox ID="IX6TextBox" runat="server" Text='<%# Bind("IX6") %>' />
                <br />
                IX7:
                <asp:TextBox ID="IX7TextBox" runat="server" Text='<%# Bind("IX7") %>' />
                <br />
                IX8:
                <asp:TextBox ID="IX8TextBox" runat="server" Text='<%# Bind("IX8") %>' />
                <br />
                X1:
                <asp:TextBox ID="X1TextBox" runat="server" Text='<%# Bind("X1") %>' />
                <br />
                X2:
                <asp:TextBox ID="X2TextBox" runat="server" Text='<%# Bind("X2") %>' />
                <br />
                X3:
                <asp:TextBox ID="X3TextBox" runat="server" Text='<%# Bind("X3") %>' />
                <br />
                X4:
                <asp:TextBox ID="X4TextBox" runat="server" Text='<%# Bind("X4") %>' />
                <br />
                XI1:
                <asp:TextBox ID="XI1TextBox" runat="server" Text='<%# Bind("XI1") %>' />
                <br />
                XI2:
                <asp:TextBox ID="XI2TextBox" runat="server" Text='<%# Bind("XI2") %>' />
                <br />
                XII1:
                <asp:TextBox ID="XII1TextBox" runat="server" Text='<%# Bind("XII1") %>' />
                <br />
                XII2:
                <asp:TextBox ID="XII2TextBox" runat="server" Text='<%# Bind("XII2") %>' />
                <br />
                XII3:
                <asp:TextBox ID="XII3TextBox" runat="server" Text='<%# Bind("XII3") %>' />
                <br />
                XIII1:
                <asp:TextBox ID="XIII1TextBox" runat="server" Text='<%# Bind("XIII1") %>' />
                <br />
                XIII2:
                <asp:TextBox ID="XIII2TextBox" runat="server" Text='<%# Bind("XIII2") %>' />
                <br />
                XIII3:
                <asp:TextBox ID="XIII3TextBox" runat="server" Text='<%# Bind("XIII3") %>' />
                <br />
                XIV1:
                <asp:TextBox ID="XIV1TextBox" runat="server" Text='<%# Bind("XIV1") %>' />
                <br />
                XIV2:
                <asp:TextBox ID="XIV2TextBox" runat="server" Text='<%# Bind("XIV2") %>' />
                <br />
                XIV3:
                <asp:TextBox ID="XIV3TextBox" runat="server" Text='<%# Bind("XIV3") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>


                =====================================================================<br />
                <strong>FECHA DE APLICACION DE ENCUESTA: USAR FORMATO (DD/MM/AAAA)
                <asp:TextBox ID="txtFaplicacion" runat="server" Text='<%# Bind("fechaAplicacion") %>' Width="80" BackColor="#CCFFCC" />
                <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" runat="server" BehaviorID="IDTextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="txtFaplicacion" Mask="99/99/9999" MaskType="Date" />
                <br />                           
                           

                <strong>HORA DE APLICACION DE ENCUESTA: USAR FORMATO (HH:MM)
                <asp:TextBox ID="txtxHora" runat="server" Text='<%# Bind("horaAplicacion") %>' Width="50" BackColor="#CCFFC"  />
                <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender2" runat="server" BehaviorID="IDTextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="txtxHora" Mask="99:99" MaskType="Date" />
                <br />
                <strong>CANTIDAD DE ESTUDIANTES LISTA DEL(A) DIRECTOR(A):
                <asp:TextBox ID="txtCantidadEstudiantes" runat="server" Text='<%# Bind("cantidadEstudiantes") %>' Width="25" BackColor="#CCFFC2"  MaxLength="2" />
                <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender3" runat="server" BehaviorID="IBTextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="99" MaskType="Number" TargetControlID="txtCantidadEstudiantes" />
                
                    <br />
                =====================================================================<br />

                <strong>&nbsp;<asp:TextBox ID="txtDnidocente" runat="server" style="background-color: #CCFFFF" Text='<%# Bind("dniDocente") %>' Visible="False" />

                    
                

                <strong>CODIGO ENCUESTA:
              

                     <asp:TextBox ID="txtidEncuesta" runat="server" style="background-color: #CCFFFF" Text='<%# Bind("idEncuesta") %>' Font-Size="XX-Large" Font-Bold="True" Width="124px" />

                    <strong>DIGITADOR:
              
<%--                        <%=/* System.Web.Security.Membership.GetUser().UserName */%>--%>

                     <%--<asp:TextBox ID="txtDigitadorCodigo" runat="server" style="background-color: #CCFFFF"  Text='<%# Bind("idDigitador" ) %>' />--%>
                              
                          
                        <%--<asp:TextBox ID="TextBox1" runat="server" style="background-color: #CCFFFF" Text='<%# Bind(<%= System.Web.Security.Membership.GetUser().UserName.ToString(); %> ) %>' />--%>


                    
                        
                     
                        <asp:DropDownList ID="DropDownList58" runat="server" SelectedValue='<%# Bind("idDigitador") %>'>
                                
                                  <asp:ListItem>-- DIGITACIÓN DE PRUEBA --</asp:ListItem>      
                                  <asp:ListItem>DIGITADOR 01</asp:ListItem>
                                  <asp:ListItem>DIGITADOR 02</asp:ListItem>
                                  <asp:ListItem>DIGITADOR 01</asp:ListItem>
                                  <asp:ListItem>DIGITADOR 03</asp:ListItem>
                                  <asp:ListItem>DIGITADOR 04</asp:ListItem>
                                  <asp:ListItem>DIGITADOR 05</asp:ListItem>
                                  <asp:ListItem>DIGITADOR 06</asp:ListItem>
                                  <asp:ListItem>DIGITADOR 07</asp:ListItem>

                      
                            

                            </asp:DropDownList>


                <ajaxToolkit:MaskedEditExtender ID="txtidEncuesta_MaskedEditExtender" runat="server" MaskType="Number" Mask="999999" MessageValidatorTip="true"
                    BehaviorID="txtidEncuesta_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="txtidEncuesta" />

                <br />
                <br />
                I. DATOS PERSONALES<br />
                <table class="nav-justified">
                    <tr>
                        <td><strong>A:</strong></td>
                        <td><strong>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("IA") %>'>
                                <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                <asp:ListItem>M</asp:ListItem>
                                <asp:ListItem>H</asp:ListItem>
                            </asp:DropDownList>
                            </strong></td>
                        <td><strong>B:</strong></td>
                        <td style="margin-left: 120px"><strong>
                            <asp:TextBox ID="IBTextBox" runat="server" Text='<%# Bind("IB") %>' MaxLength="2" />
                            <ajaxToolkit:MaskedEditExtender ID="IBTextBox_MaskedEditExtender" runat="server" BehaviorID="IBTextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="99" MaskType="Number" TargetControlID="IBTextBox" />
                            </strong></td>
                        <td><strong>C:</strong></td>
                        <td><strong>
                            <asp:TextBox ID="ICTextBox" runat="server" Text='<%# Bind("IC") %>' />
                            
                            </strong></td>
                        <td><strong>D: (Fecha MM/YYYY)</strong></td>
                        <td><strong>
                            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                            
                            <ajaxToolkit:MaskedEditExtender ID="XCCE" runat="server" BehaviorID="IDTextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="IDTextBox" Mask="99/9999" MaskType="Date" />
                            
                            </strong></td>
                        <td><strong>&nbsp; E:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IETextBox" runat="server" Text='<%# Bind("IE") %>' MaxLength="4" />--%>

                                 <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("IE") %>'>
                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>


                                     <asp:ListItem>I</asp:ListItem>
                                    <asp:ListItem>II</asp:ListItem>
                                    <asp:ListItem>III</asp:ListItem>
                                    <asp:ListItem>IV</asp:ListItem>
                                    <asp:ListItem>V</asp:ListItem>
                                    <asp:ListItem>VI</asp:ListItem>
                                    <asp:ListItem>VII</asp:ListItem>
                                    <asp:ListItem>VIII</asp:ListItem>
                                    <asp:ListItem>IX</asp:ListItem>
                                    <asp:ListItem>X</asp:ListItem>
                                     

                            </asp:DropDownList>



                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>F:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IFTextBox" runat="server" Text='<%# Bind("IF") %>' MaxLength="4" />--%>



                                     <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("IF") %>'>
                                                         <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>


                                         <asp:ListItem>80 -100%</asp:ListItem>
                                    <asp:ListItem>60 -79%</asp:ListItem>
                                    <asp:ListItem>40 - 59%</asp:ListItem>
                                    <asp:ListItem>Menos del 40%</asp:ListItem>
                               
                            </asp:DropDownList>

                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>II. DATOS SOBRE EL CURSO E INSTITUCIÓN</strong></td>
                    </tr>
                    <tr>
                        <td style="height: 20px"><strong>2.1:</strong></td>
                        <td style="height: 20px; margin-left: 40px;"><strong>
                            <%--<asp:TextBox ID="II1TextBox" runat="server" Text='<%# Bind("II1") %>' />--%>

                     <asp:DropDownList ID="DropDownList5" runat="server" SelectedValue='<%# Bind("II1") %>'>
                                  <asp:ListItem>ACOMAYO</asp:ListItem>
                                    <asp:ListItem>CACHICADAN</asp:ListItem>
                                    <asp:ListItem>EMILIA BARCIA BONIFFATTI</asp:ListItem>
                                    <asp:ListItem>GUSTAVO ALLENDE LLAVERIA</asp:ListItem>
                                    <asp:ListItem>INDOAMÉRICA</asp:ListItem>
                                    <asp:ListItem>MANUEL GONZALES PRADA</asp:ListItem>
                                    <asp:ListItem>MONSEÑOR FRANCISCO GONZALES BURGA</asp:ListItem>
                                    <asp:ListItem>MONTERRICO</asp:ListItem>
                                    <asp:ListItem>POMACANCHI</asp:ListItem>
                                    <asp:ListItem>TAYABAMBA</asp:ListItem>
                                    <asp:ListItem>TEODORO PEÑALOZA</asp:ListItem>
                                    <asp:ListItem>VIRGEN DEL CARMEN</asp:ListItem>
                          </asp:DropDownList>






                            </strong></td>
                        <td style="height: 20px"><strong>2.2:</strong></td>
                        <td style="height: 20px"><strong>
                            <asp:TextBox ID="II2TextBox" runat="server" Text='<%# Bind("II2") %>' />
                            
                        
                        
                        
                        </strong></td>
                        <td style="height: 20px"><strong>2.3:</strong></td>
                        <td style="height: 20px"><strong>
                            <%--<asp:TextBox ID="II3TextBox" runat="server" Text='<%# Bind("II3") %>' />--%>


                         <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("II3") %>'>
                                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>



                                    <asp:ListItem>Formación general</asp:ListItem>
                                    <asp:ListItem>Formación específica</asp:ListItem>
                                    <asp:ListItem>Formación en la práctica e investigación</asp:ListItem>
                                    <asp:ListItem>Electivo/Opcional</asp:ListItem>
                                    <asp:ListItem>Obligatorio</asp:ListItem>
                          </asp:DropDownList>



                            </strong></td>
                        <td style="height: 20px"><strong>2.4:</strong></td>
                        <td style="height: 20px"><strong>
                            <%--<asp:TextBox ID="II4TextBox" runat="server" Text='<%# Bind("II4") %>' />--%>


                            
                         <asp:DropDownList ID="DropDownList6" runat="server" SelectedValue='<%# Bind("II4") %>'>
                             <asp:ListItem>ADELAIDA LLOCLLI QUISPE 	</asp:ListItem>
<asp:ListItem>ALEXANDER SERRANO ULLOA	</asp:ListItem>
<asp:ListItem>ALMONACID ROJAS MILAGROS OLENCA	</asp:ListItem>
<asp:ListItem>ALVARADO  ALVARADO  INGRID KARUMI	</asp:ListItem>
<asp:ListItem>ASLLA PALOMINO EDITH	</asp:ListItem>
<asp:ListItem>BALDEÓN USQUIANO JUDY ANGELA	</asp:ListItem>
<asp:ListItem>BONILLA MESONES  ARACELY DEL ROSARIO	</asp:ListItem>
<asp:ListItem>BRICEÑO BAZURTO JOSE FRANCISCO	</asp:ListItem>
<asp:ListItem>CALDERON CARLOS FRANCISCO ARTEMIO	</asp:ListItem>
<asp:ListItem>CARLOS REYES SEBASTIÁN 	</asp:ListItem>
<asp:ListItem>CARMONA RÍOS YOLANDA	</asp:ListItem>
<asp:ListItem>CCORAHUA MERMA NELLY SOLEDAD	</asp:ListItem>
<asp:ListItem>CÉSAR ULLOA PARRAVICINI 	</asp:ListItem>
<asp:ListItem>CHUQUE  MALASPINA  RENEE REBECA	</asp:ListItem>
<asp:ListItem>CLAUDET MARROQUÍN VIOLETA GEORGINA	</asp:ListItem>
<asp:ListItem>CUEVA CORONEL CARMEN CECILIA	</asp:ListItem>
<asp:ListItem>CUNO CUNO MARIO GIL	</asp:ListItem>
<asp:ListItem>DE FREITAS CHACON  LAURA MARICIELA	</asp:ListItem>
<asp:ListItem>DIANA NOLIS GUZMAN	</asp:ListItem>
<asp:ListItem>ECHEGARAY MARCHAN BENNY JAVIER	</asp:ListItem>
<asp:ListItem>EDULIN QUISPE COTO	</asp:ListItem>
<asp:ListItem>ESPINOZA LOPEZ KEVIN VLADIMIR	</asp:ListItem>
<asp:ListItem>FERNÁNDEZ SALVATIERRA LIZ KATHERIN</asp:ListItem>
<asp:ListItem>FLORES PIMENTEL ELIZABETH</asp:ListItem>
<asp:ListItem>GIL ALVITEZ JOSÉ JAIME</asp:ListItem>
<asp:ListItem>JHONATAN LLOCLLE HUANCA	</asp:ListItem>
<asp:ListItem>LABRA CHINO ZENOBIO</asp:ListItem>
<asp:ListItem>LEÓN RAMÍREZ  Agustina</asp:ListItem>
<asp:ListItem>LIMAILLA GUTARRA Elizabeth Edith</asp:ListItem>
<asp:ListItem>LÓPEZ DOMINGUEZ AMBROCIO</asp:ListItem>
<asp:ListItem>MANSILLA NUNURA SANTIAGO</asp:ListItem>
<asp:ListItem>MARGARITA SALDAÑA SAENZ</asp:ListItem>
<asp:ListItem>MARIA LUCRECIA ÁVILA GROSMAN</asp:ListItem>
<asp:ListItem>MARIELA DEL PILAR SERRANO ESTRELLA</asp:ListItem>
<asp:ListItem>MATEO PACHERREZ LUIS FERNANDO</asp:ListItem>
<asp:ListItem>MEZA SALVATIERRA YULIHANY YANETT</asp:ListItem>
<asp:ListItem>MORALES RAMOS ELIANA GINA</asp:ListItem>
<asp:ListItem>NORIEGA CABRERA Adelaida Julieta</asp:ListItem>
<asp:ListItem>ÑAUPARI TAQUIRI CESAR FERNANDO</asp:ListItem>
<asp:ListItem>ORBEGOSO RODRÍGUEZ María Eugenia</asp:ListItem>
<asp:ListItem>ORÉ ARRIOLA DONY PAULA</asp:ListItem>
<asp:ListItem>OSORIO CHAPARRO KARY</asp:ListItem>
<asp:ListItem>PALPAN CHAVEZ ELVIRA NATALY</asp:ListItem>
<asp:ListItem>PANTA FERNANDEZ JULISSA</asp:ListItem>
<asp:ListItem>PAUCCA GONZÁLES NELSON</asp:ListItem>
<asp:ListItem>PEREZ MURGA FREDY RONALD</asp:ListItem>
<asp:ListItem>PITA  CHAPILLIQUÉN FANNY ELIZABETH</asp:ListItem>
<asp:ListItem>QUISPE CASTAÑEDA IVÁN ENRIQUE</asp:ListItem>
<asp:ListItem>QUISPE TURUCO MAXIMO</asp:ListItem>
<asp:ListItem>RAMIREZ NORIEGA LUIS NELSON</asp:ListItem>
<asp:ListItem>ROJAS HORNA LUIS ENRIQUE</asp:ListItem>
<asp:ListItem>ROXANA RIVERA  BAYONA</asp:ListItem>
<asp:ListItem>SALDAÑA DÁVALOS YOVANY ESMERALDA</asp:ListItem>
<asp:ListItem>SANCHEZ DOMINGUEZ ANKI INKIL</asp:ListItem>
<asp:ListItem>SANDOVAL QUEREBALU LUZ MAGALI</asp:ListItem>
<asp:ListItem>TUNQUE CHOQUE DANIEL</asp:ListItem>
<asp:ListItem>VALDIVIA VIEIRA LUZ FABIANA</asp:ListItem>
<asp:ListItem>VARGAS MACHUCA ACEVEDO Enrique Fernando	</asp:ListItem>
<asp:ListItem>VILCA  CAHUANA   WILBER  ABAD</asp:ListItem>
<asp:ListItem>YURIVILCA RICALDE CECIL PAUL</asp:ListItem>

                          </asp:DropDownList>






                            </strong></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>III. APRECIACIÓN GENERAL</strong></td>
                    </tr>
                    <tr>
                        <td><strong>3.1:</strong></td>
                        <td><strong>
<%--                            <asp:TextBox ID="III1TextBox" runat="server" Text='<%# Bind("III1") %>' MaxLength="1" />--%>
                            
                             <%--<asp:CheckBox ID="edit_chkBox"   Checked='<%# Bind("III1") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList7" runat="server" SelectedValue='<%# Bind("III1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                             </asp:DropDownList>


                            <%--hola--%>

                            </strong></td>
                        <td><strong>3.2:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="III2TextBox" runat="server" Text='<%# Bind("III2") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox1"   Checked='<%# Bind("III2") %>'  Runat="Server"/>--%>


                                <asp:DropDownList ID="DropDownList8" runat="server" SelectedValue='<%# Bind("III2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                             </asp:DropDownList>

                            </strong></td>
                        <td><strong>3.3:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="III3TextBox" runat="server" Text='<%# Bind("III3") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox2"   Checked='<%# Bind("III3") %>'  Runat="Server"/>--%>


                            
                                <asp:DropDownList ID="DropDownList9" runat="server" SelectedValue='<%# Bind("III3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>


                        <td><strong>3.4:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="III4TextBox" runat="server" Text='<%# Bind("III4") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox3"   Checked='<%# Bind("III4") %>'  Runat="Server"/>--%>

                            <asp:DropDownList ID="DropDownList10" runat="server" SelectedValue='<%# Bind("III4") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>

                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>IV. CUMPLIMIENTO Y USO DEL TIEMPO</strong></td>
                    </tr>
                    <tr>
                        <td><strong>4.1:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IV1TextBox" runat="server" Text='<%# Bind("IV1") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox4"   Checked='<%# Bind("IV1") %>'  Runat="Server"/>--%>

                            
                            <asp:DropDownList ID="DropDownList11" runat="server" SelectedValue='<%# Bind("IV1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>

                                </asp:DropDownList>

                            </strong></td>
                        <td><strong>4.2:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IV2TextBox" runat="server" Text='<%# Bind("IV2") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox5"   Checked='<%# Bind("IV2") %>'  Runat="Server"/>--%>

                                  
                            <asp:DropDownList ID="DropDownList12" runat="server" SelectedValue='<%# Bind("IV2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>

                            </strong></td>
                        <td><strong>4.3:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IV3TextBox" runat="server" Text='<%# Bind("IV3") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox6"   Checked='<%# Bind("IV3") %>'  Runat="Server"/>--%>

                                <asp:DropDownList ID="DropDownList13" runat="server" SelectedValue='<%# Bind("IV3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>

                            </strong></td>
                        <td><strong>4.4:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IV4TextBox" runat="server" Text='<%# Bind("IV4") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox7"   Checked='<%# Bind("IV4") %>'  Runat="Server"/>--%>
                               <asp:DropDownList ID="DropDownList14" runat="server" SelectedValue='<%# Bind("IV4") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>

                            </strong></td>
                        <td><strong>4.5:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IV5TextBox" runat="server" Text='<%# Bind("IV5") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox8"   Checked='<%# Bind("IV5") %>'  Runat="Server"/>--%>
                               <asp:DropDownList ID="DropDownList15" runat="server" SelectedValue='<%# Bind("IV5") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="height: 22px"><strong>4.6:</strong></td>
                        <td style="height: 22px"><strong>
                            <%--<asp:TextBox ID="IV6TextBox" runat="server" Text='<%# Bind("IV6") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox9"   Checked='<%# Bind("IV6") %>'  Runat="Server"/>--%>
                               <asp:DropDownList ID="DropDownList16" runat="server" SelectedValue='<%# Bind("IV6") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td style="height: 22px"><strong>4.7:</strong></td>
                        <td style="height: 22px"><strong>
                            <%--<asp:TextBox ID="IV7TextBox" runat="server" Text='<%# Bind("IV7") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox10"   Checked='<%# Bind("IV7") %>'  Runat="Server"/>--%>
                               <asp:DropDownList ID="DropDownList17" runat="server" SelectedValue='<%# Bind("IV7") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td style="height: 22px"><strong>4.8:</strong></td>
                        <td style="height: 22px"><strong>
                            <%--<asp:TextBox ID="IV8TextBox" runat="server" Text='<%# Bind("IV8") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox11"   Checked='<%# Bind("IV8") %>'  Runat="Server"/>--%>
                               <asp:DropDownList ID="DropDownList18" runat="server" SelectedValue='<%# Bind("IV8") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                        <td style="height: 22px"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>V. METODOLOGÍA DEL CURSO</strong></td>
                    </tr>
                    <tr>
                        <td>5.1:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V1TextBox" runat="server" Text='<%# Bind("V1") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox12"   Checked='<%# Bind("V1") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList19" runat="server" SelectedValue='<%# Bind("V1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>5.2:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V2TextBox" runat="server" Text='<%# Bind("V2") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox13"   Checked='<%# Bind("V2") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList20" runat="server" SelectedValue='<%# Bind("V2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>5.3:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V3TextBox" runat="server" Text='<%# Bind("V3") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox14"   Checked='<%# Bind("V3") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList21" runat="server" SelectedValue='<%# Bind("V3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>5.4:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V4TextBox" runat="server" Text='<%# Bind("V4") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox15"   Checked='<%# Bind("V4") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList22" runat="server" SelectedValue='<%# Bind("V4") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>5.5:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V5TextBox" runat="server" Text='<%# Bind("V5") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox16"   Checked='<%# Bind("V5") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList23" runat="server" SelectedValue='<%# Bind("V5") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>5.6:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V6TextBox" runat="server" Text='<%# Bind("V6") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox17"   Checked='<%# Bind("V6") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList24" runat="server" SelectedValue='<%# Bind("V6") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>5.7:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V7TextBox" runat="server" Text='<%# Bind("V7") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox18"   Checked='<%# Bind("V7") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList25" runat="server" SelectedValue='<%# Bind("V7") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>5.8:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V8TextBox" runat="server" Text='<%# Bind("V8") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox19"   Checked='<%# Bind("V8") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList26" runat="server" SelectedValue='<%# Bind("V8") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>5.9:</td>
                        <td><strong>
                            <%--<asp:TextBox ID="V9TextBox" runat="server" Text='<%# Bind("V9") %>' MaxLength="1" />--%>
                                  <%--<asp:CheckBox ID="CheckBox20"   Checked='<%# Bind("V9") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList27" runat="server" SelectedValue='<%# Bind("V9") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>VI. FORMACIÓN PARA LA PRÁCTICA</strong></td>
                    </tr>
                    <tr>
                        <td><strong>6.1:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="VI1TextBox" runat="server" Text='<%# Bind("VI1") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox21"   Checked='<%# Bind("VI1") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList28" runat="server" SelectedValue='<%# Bind("VI1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>6.2:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="VI2TextBox" runat="server" Text='<%# Bind("VI2") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox22"   Checked='<%# Bind("VI2") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList29" runat="server" SelectedValue='<%# Bind("VI2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>6.3: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="VI3TextBox" runat="server" Text='<%# Bind("VI3") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox23"   Checked='<%# Bind("VI3") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList30" runat="server" SelectedValue='<%# Bind("VI3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>VII. COMPROMISO CON EL APRENDIZAJE</strong></td>
                    </tr>
                    <tr>
                        <td><strong>7.1:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="VII1TextBox" runat="server" Text='<%# Bind("VII1") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox24"   Checked='<%# Bind("VII1") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList31" runat="server" SelectedValue='<%# Bind("VII1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>

                            </strong></td>
                        <td><strong>7.2:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="VII2TextBox" runat="server" Text='<%# Bind("VII2") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox25"   Checked='<%# Bind("VII2") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList32" runat="server" SelectedValue='<%# Bind("VII2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>&nbsp;7.3: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="VII3TextBox" runat="server" Text='<%# Bind("VII3") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox26"   Checked='<%# Bind("VII3") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList33" runat="server" SelectedValue='<%# Bind("VII3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>VIII. CLIMA DE CLASE</strong></td>
                    </tr>
                    <tr>
                        <td style="height: 25px"><strong>
                            <br />
                            8.1: &nbsp;&nbsp;</strong></td>
                        <td style="height: 25px"><strong>
                            <%--<asp:TextBox ID="VIII1TextBox" runat="server" Text='<%# Bind("VIII1") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox27"   Checked='<%# Bind("VIII1") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList34" runat="server" SelectedValue='<%# Bind("VIII1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            
                            </strong></td>
                        <td style="height: 25px"><strong>8.2: </strong></td>
                        <td style="height: 25px"><strong>
                            <%--<asp:TextBox ID="VIII2TextBox" runat="server" Text='<%# Bind("VIII2") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox28"   Checked='<%# Bind("VIII2") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList35" runat="server" SelectedValue='<%# Bind("VIII2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td style="height: 25px"><strong>8.3:</strong></td>
                        <td style="height: 25px"><strong>
                            <%--<asp:TextBox ID="VIII3TextBox" runat="server" Text='<%# Bind("VIII3") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox29"   Checked='<%# Bind("VIII3") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList36" runat="server" SelectedValue='<%# Bind("VIII3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td style="height: 25px"><strong>8.4:</strong></td>
                        <td style="height: 25px"><strong>
                            <%--<asp:TextBox ID="VIII4TextBox" runat="server" Text='<%# Bind("VIII4") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox30"   Checked='<%# Bind("VIII4") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList37" runat="server" SelectedValue='<%# Bind("VIII4") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td style="height: 25px"><strong>8.5:</strong></td>
                        <td style="height: 25px"><strong>
                            <%--<asp:TextBox ID="VIII5TextBox" runat="server" Text='<%# Bind("VIII5") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox31"   Checked='<%# Bind("VIII5") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList38" runat="server" SelectedValue='<%# Bind("VIII5") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>IX. PRÁCTICAS DE EVALUACIÓN</strong></td>
                    </tr>
                    <tr>
                        <td><strong>9.1:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX1TextBox" runat="server" Text='<%# Bind("IX1") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox32"   Checked='<%# Bind("IX1") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList39" runat="server" SelectedValue='<%# Bind("IX1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>9.2: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX2TextBox" runat="server" Text='<%# Bind("IX2") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox33"   Checked='<%# Bind("IX2") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList40" runat="server" SelectedValue='<%# Bind("IX2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>9.3: &nbsp;</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX3TextBox" runat="server" Text='<%# Bind("IX3") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox34"   Checked='<%# Bind("IX3") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList41" runat="server" SelectedValue='<%# Bind("IX3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>&nbsp;9.4: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX4TextBox" runat="server" Text='<%# Bind("IX4") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox35"   Checked='<%# Bind("IX4") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList42" runat="server" SelectedValue='<%# Bind("IX4") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>&nbsp;9.5: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX5TextBox" runat="server" Text='<%# Bind("IX5") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox36"   Checked='<%# Bind("IX5") %>'  Runat="Server"/>--%>
                              <asp:DropDownList ID="DropDownList43" runat="server" SelectedValue='<%# Bind("IX5") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>9.6:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX6TextBox" runat="server" Text='<%# Bind("IX6") %>' MaxLength="1" />--%>
                             <%--<asp:CheckBox ID="CheckBox37"   Checked='<%# Bind("IX6") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList44" runat="server" SelectedValue='<%# Bind("IX6") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>&nbsp;9.7:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX7TextBox" runat="server" Text='<%# Bind("IX7") %>' MaxLength="1" />--%>
                               <%--<asp:CheckBox ID="CheckBox38"   Checked='<%# Bind("IX7") %>'  Runat="Server"/>--%> 
                              <asp:DropDownList ID="DropDownList45" runat="server" SelectedValue='<%# Bind("IX7") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>9.8: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="IX8TextBox" runat="server" Text='<%# Bind("IX8") %>' MaxLength="1" />--%>
                               <%--<asp:CheckBox ID="CheckBox39"   Checked='<%# Bind("IX8") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList46" runat="server" SelectedValue='<%# Bind("IX8") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>X. REFLEXIÓN Y FLEXIBILIDAD DEL PROFESOR</strong></td>
                    </tr>
                    <tr>
                        <td><strong>10.1: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="X1TextBox" runat="server" Text='<%# Bind("X1") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox40"   Checked='<%# Bind("X1") %>'  Runat="Server"/>--%>


                              <asp:DropDownList ID="DropDownList47" runat="server" SelectedValue='<%# Bind("X1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>10.2:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="X2TextBox" runat="server" Text='<%# Bind("X2") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox41"   Checked='<%# Bind("X2") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList48" runat="server" SelectedValue='<%# Bind("X2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>10.3:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="X3TextBox" runat="server" Text='<%# Bind("X3") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox42"   Checked='<%# Bind("X3") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList49" runat="server" SelectedValue='<%# Bind("X3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>10.4: &nbsp;</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="X4TextBox" runat="server" Text='<%# Bind("X4") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox43"   Checked='<%# Bind("X4") %>'  Runat="Server"/>--%>


                              <asp:DropDownList ID="DropDownList50" runat="server" SelectedValue='<%# Bind("X4") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>XI. COORDINACIÓN DE LOS CURSOS</strong></td>
                    </tr>
                    <tr>
                        <td><strong>11.1: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="XI1TextBox" runat="server" Text='<%# Bind("XI1") %>' MaxLength="1" />--%>

                             <%--<asp:CheckBox ID="CheckBox44"   Checked='<%# Bind("XI1") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList51" runat="server" SelectedValue='<%# Bind("XI1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>

                            </strong></td>
                        <td><strong>11.2: &nbsp;</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="XI2TextBox" runat="server" Text='<%# Bind("XI2") %>' MaxLength="1" />--%>

                             <%--<asp:CheckBox ID="CheckBox45"   Checked='<%# Bind("XI2") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList52" runat="server" SelectedValue='<%# Bind("XI2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>

                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>XII. RIGOR ACADÉMICO</strong></td>
                    </tr>
                    <tr>
                        <td><strong>12.1: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="XII1TextBox" runat="server" Text='<%# Bind("XII1") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox46"   Checked='<%# Bind("XII1") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList53" runat="server" SelectedValue='<%# Bind("XII1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>12.2:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="XII2TextBox" runat="server" Text='<%# Bind("XII2") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox47"   Checked='<%# Bind("XII2") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList54" runat="server" SelectedValue='<%# Bind("XII2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>12.3: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="XII3TextBox" runat="server" Text='<%# Bind("XII3") %>' MaxLength="1" />--%>
                            <%--<asp:CheckBox ID="CheckBox48"   Checked='<%# Bind("XII3") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList55" runat="server" SelectedValue='<%# Bind("XII3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                  <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>XIII. NOTAS EN EL CURSO</strong></td>
                    </tr>
                    <tr>
                        <td><strong>13.1:</strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="XIII1TextBox" runat="server" Text='<%# Bind("XIII1") %>' MaxLength="1" />--%>

                             <%--<asp:CheckBox ID="CheckBox49"   Checked='<%# Bind("XIII1") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList56" runat="server" SelectedValue='<%# Bind("XIII1") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>0-5</asp:ListItem>
                                    <asp:ListItem>5-10</asp:ListItem>
                                    <asp:ListItem>10-15</asp:ListItem>
                                    <asp:ListItem>15-17</asp:ListItem>
                                  <asp:ListItem>18-20</asp:ListItem>
                                </asp:DropDownList>

                            </strong></td>
                        <td><strong>13.2: </strong></td>
                        <td><strong>
                            <%--<asp:TextBox ID="XIII2TextBox" runat="server" Text='<%# Bind("XIII2") %>' MaxLength="1" />--%>

                             <%--<asp:CheckBox ID="CheckBox50"   Checked='<%# Bind("XIII2") %>'  Runat="Server"/>--%>

                              <asp:DropDownList ID="DropDownList57" runat="server" SelectedValue='<%# Bind("XIII2") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>Menor a la que merezco</asp:ListItem>
                                    <asp:ListItem>La que merezco</asp:ListItem>
                                    <asp:ListItem>Más alta de la que merezco</asp:ListItem>
                                  
                                </asp:DropDownList>
                            </strong></td>
                        <td><strong>13.3:</strong></td>
                        <td colspan="3"><strong>
                            Digitar opciones con coma &quot;,&quot;, ejm: A,C
                            <asp:TextBox ID="XIII3TextBox" runat="server" Text='<%# Bind("XIII3") %>' />

                            <%--<asp:DropDownList ID="DropDownList58" runat="server" SelectedValue='<%# Bind("XIII3") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>Mi esfuerzo</asp:ListItem>
                                    <asp:ListItem>Si le agrado o no al profesor</asp:ListItem>
                                    <asp:ListItem>Mis habilidades como estudiante</asp:ListItem>
                                    <asp:ListItem>El ánimo del profesor al momento de calificar</asp:ListItem>
                                  
                                </asp:DropDownList>--%>
                                


                            </strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="10"><strong>XIV. REFLEXIÓN FINAL</strong></td>
                    </tr>
                    <tr>
                        <td><strong>1:</strong></td>
                        <td colspan="9"><strong>
                            <asp:TextBox ID="XIV1TextBox" runat="server" Height="75px" Text='<%# Bind("XIV1") %>' TextMode="MultiLine" Width="600px" />
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>2: </strong></td>
                        <td colspan="9"><strong>
                            <asp:TextBox ID="XIV2TextBox" runat="server" Height="75px" Text='<%# Bind("XIV2") %>' TextMode="MultiLine" Width="600px" />
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>3:</strong></td>
                        <td colspan="9"><strong>
                            <asp:TextBox ID="XIV3TextBox" runat="server" Height="75px" Text='<%# Bind("XIV3") %>' TextMode="MultiLine" Width="600px" />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>14.2</td>
                        <td><strong><%--<asp:TextBox ID="TextBox1" runat="server" Height="75px" Text='<%# Bind("XIV22") %>' TextMode="MultiLine" Width="600px" />--%>


                            <asp:DropDownList ID="DropDownList60" runat="server" SelectedValue='<%# Bind("XIV22") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>Menos de 1 hora</asp:ListItem>
                                    <asp:ListItem>1-3 horas</asp:ListItem>
                                    <asp:ListItem>4-6 horas</asp:ListItem>
                                    <asp:ListItem>7-9 horas</asp:ListItem>
                                <asp:ListItem>10 horas</asp:ListItem>
                                  
                                </asp:DropDownList>
                            


                            </strong></td>
                        <td>&nbsp;</td>
                        <td>
                             &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><strong>14.3</strong></td>
                        <td>
                             <%--<asp:TextBox ID="TXTXIV3" runat="server" Height="75px" Text='<%# Bind("XIV33") %>' TextMode="MultiLine" Width="600px" />--%>


                                 <asp:DropDownList ID="DropDownList59" runat="server" SelectedValue='<%# Bind("XIV33") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>Insatisfecho</asp:ListItem>
                                    <asp:ListItem>Un poco satisfechor</asp:ListItem>
                                    <asp:ListItem>Moderadamente satisfecho</asp:ListItem>
                                    <asp:ListItem>Muy satisfecho</asp:ListItem>
                                  
                                </asp:DropDownList>
                            
                            </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 20px"><strong>14.4</strong></td>
                        <td style="height: 20px"><strong>
                            <asp:TextBox ID="TXTXIV4" runat="server" Height="75px" Text='<%# Bind("XIV44") %>' TextMode="MultiLine" Width="600px" />

                            

                            </strong></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                        <td style="height: 20px"></td>
                    </tr>
                </table>
                <br /></strong>
                <br />
                <br />
                <br />
                <br />
                &nbsp;<br />&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar"  onsubmit="return checkSubmit();" class="btn btn-primary btn-lg" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" class="btn btn-primary  btn-lg" />
            </InsertItemTemplate>
            <ItemTemplate>
              <%--  id_deEncuesta:
                <asp:Label ID="id_deEncuestaLabel" runat="server" Text='<%# Eval("id_deEncuesta") %>' />
                <br />
                <br class="Apple-interchange-newline" />
                <table id="MainContent_FormView1" cellpadding="4" cellspacing="0" style="box-sizing: border-box; border-collapse: collapse; border-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <tbody style="box-sizing: border-box;">
                        <tr style="box-sizing: border-box; color: rgb(51, 51, 51); background-color: rgb(255, 251, 214);">
                            <td style="box-sizing: border-box; padding: 0px;"><strong style="box-sizing: border-box; font-weight: bold;">I. DATOS PERSONALES</strong></td>
                        </tr>
                    </tbody>
                </table>
                IA:
                <asp:Label ID="IALabel" runat="server" Text='<%# Bind("IA") %>' />
                &nbsp; IB:
                <asp:Label ID="IBLabel" runat="server" Text='<%# Bind("IB") %>' />
                &nbsp;IC:
                <asp:Label ID="ICLabel" runat="server" Text='<%# Bind("IC") %>' />
                &nbsp;ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Bind("ID") %>' />
                &nbsp;IE:
                <asp:Label ID="IELabel" runat="server" Text='<%# Bind("IE") %>' />
                &nbsp; IF:
                <asp:Label ID="IFLabel" runat="server" Text='<%# Bind("IF") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">II. DATOS SOBRE EL CURSO E INSTITUCIÓN<br /></strong>
                <br />
                II1:
                <asp:Label ID="II1Label" runat="server" Text='<%# Bind("II1") %>' />
                &nbsp; II2:
                <asp:Label ID="II2Label" runat="server" Text='<%# Bind("II2") %>' />
                &nbsp; II3:
                <asp:Label ID="II3Label" runat="server" Text='<%# Bind("II3") %>' />
                &nbsp; II4:
                <asp:Label ID="II4Label" runat="server" Text='<%# Bind("II4") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">III. APRECIACIÓN GENERAL</strong><br />III1:
                <asp:Label ID="III1Label" runat="server" Text='<%# Bind("III1") %>' />
                &nbsp;III2:
                <asp:Label ID="III2Label" runat="server" Text='<%# Bind("III2") %>' />
                &nbsp;III3:
                <asp:Label ID="III3Label" runat="server" Text='<%# Bind("III3") %>' />
                &nbsp;III4:
                <asp:Label ID="III4Label" runat="server" Text='<%# Bind("III4") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">IV. CUMPLIMIENTO Y USO DEL TIEMPO</strong><br />IV1:
                <asp:Label ID="IV1Label" runat="server" Text='<%# Bind("IV1") %>' />
                &nbsp;IV2:
                <asp:Label ID="IV2Label" runat="server" Text='<%# Bind("IV2") %>' />
                &nbsp;IV3:
                <asp:Label ID="IV3Label" runat="server" Text='<%# Bind("IV3") %>' />
                &nbsp;IV4:
                <asp:Label ID="IV4Label" runat="server" Text='<%# Bind("IV4") %>' />
                &nbsp;IV5:
                <asp:Label ID="IV5Label" runat="server" Text='<%# Bind("IV5") %>' />
                <br />
                IV6:
                <asp:Label ID="IV6Label" runat="server" Text='<%# Bind("IV6") %>' />
                &nbsp;IV7:
                <asp:Label ID="IV7Label" runat="server" Text='<%# Bind("IV7") %>' />
                &nbsp;IV8:
                <asp:Label ID="IV8Label" runat="server" Text='<%# Bind("IV8") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">V. METODOLOGÍA DEL CURSO<br /></strong>
                <br />
                V1:
                <asp:Label ID="V1Label" runat="server" Text='<%# Bind("V1") %>' />
                &nbsp;V2:
                <asp:Label ID="V2Label" runat="server" Text='<%# Bind("V2") %>' />
                &nbsp;V3:
                <asp:Label ID="V3Label" runat="server" Text='<%# Bind("V3") %>' />
                &nbsp;V4:
                <asp:Label ID="V4Label" runat="server" Text='<%# Bind("V4") %>' />
                &nbsp;V5:
                <asp:Label ID="V5Label" runat="server" Text='<%# Bind("V5") %>' />
                <br />
                V6:
                <asp:Label ID="V6Label" runat="server" Text='<%# Bind("V6") %>' />
                &nbsp;V7:
                <asp:Label ID="V7Label" runat="server" Text='<%# Bind("V7") %>' />
                &nbsp;V8:
                <asp:Label ID="V8Label" runat="server" Text='<%# Bind("V8") %>' />
                &nbsp;V9:
                <asp:Label ID="V9Label" runat="server" Text='<%# Bind("V9") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">VI. FORMACIÓN PARA LA PRÁCTICA<br />
                <br />
                </strong>1:
                <asp:Label ID="VI1Label" runat="server" Text='<%# Bind("VI1") %>' />
                &nbsp; VI2:
                <asp:Label ID="VI2Label" runat="server" Text='<%# Bind("VI2") %>' />
                &nbsp;VI3:
                <asp:Label ID="VI3Label" runat="server" Text='<%# Bind("VI3") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">VII. COMPROMISO CON EL APRENDIZAJE<br />
                <br />
                </strong>VII1:
                <asp:Label ID="VII1Label" runat="server" Text='<%# Bind("VII1") %>' />
                &nbsp;VII2:
                <asp:Label ID="VII2Label" runat="server" Text='<%# Bind("VII2") %>' />
                &nbsp;VII3:
                <asp:Label ID="VII3Label" runat="server" Text='<%# Bind("VII3") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">VIII. CLIMA DE CLASE</strong><br />VIII1:
                <asp:Label ID="VIII1Label" runat="server" Text='<%# Bind("VIII1") %>' />
                &nbsp;VIII2:
                <asp:Label ID="VIII2Label" runat="server" Text='<%# Bind("VIII2") %>' />
                &nbsp;VIII3:
                <asp:Label ID="VIII3Label" runat="server" Text='<%# Bind("VIII3") %>' />
                &nbsp;VIII4:
                <asp:Label ID="VIII4Label" runat="server" Text='<%# Bind("VIII4") %>' />
                <br />
                VIII5:
                <asp:Label ID="VIII5Label" runat="server" Text='<%# Bind("VIII5") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">IX. PRÁCTICAS DE EVALUACIÓN<br /></strong>
                <br />
                IX1:
                <asp:Label ID="IX1Label" runat="server" Text='<%# Bind("IX1") %>' />
                &nbsp;IX2:
                <asp:Label ID="IX2Label" runat="server" Text='<%# Bind("IX2") %>' />
                &nbsp;IX3:
                <asp:Label ID="IX3Label" runat="server" Text='<%# Bind("IX3") %>' />
                &nbsp;IX4:
                <asp:Label ID="IX4Label" runat="server" Text='<%# Bind("IX4") %>' />
                &nbsp;IX5:
                <asp:Label ID="IX5Label" runat="server" Text='<%# Bind("IX5") %>' />
                <br />
                IX6:
                <asp:Label ID="IX6Label" runat="server" Text='<%# Bind("IX6") %>' />
                &nbsp;IX7:
                <asp:Label ID="IX7Label" runat="server" Text='<%# Bind("IX7") %>' />
                &nbsp;IX8:
                <asp:Label ID="IX8Label" runat="server" Text='<%# Bind("IX8") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">X. REFLEXIÓN Y FLEXIBILIDAD DEL PROFESOR</strong><br />X1:
                <asp:Label ID="X1Label" runat="server" Text='<%# Bind("X1") %>' />
                &nbsp;X2:
                <asp:Label ID="X2Label" runat="server" Text='<%# Bind("X2") %>' />
                &nbsp;X3:
                <asp:Label ID="X3Label" runat="server" Text='<%# Bind("X3") %>' />
                &nbsp;X4:
                <asp:Label ID="X4Label" runat="server" Text='<%# Bind("X4") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">XI. COORDINACIÓN DE LOS CURSOS</strong><br />XI1:
                <asp:Label ID="XI1Label" runat="server" Text='<%# Bind("XI1") %>' />
                &nbsp;XI2:
                <asp:Label ID="XI2Label" runat="server" Text='<%# Bind("XI2") %>' />
                &nbsp;<br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">XII. RIGOR ACADÉMICO</strong><br />XII1:
                <asp:Label ID="XII1Label" runat="server" Text='<%# Bind("XII1") %>' />
                &nbsp;XII2:
                <asp:Label ID="XII2Label" runat="server" Text='<%# Bind("XII2") %>' />
                &nbsp;XII3:
                <asp:Label ID="XII3Label" runat="server" Text='<%# Bind("XII3") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">XIII. NOTAS EN EL CURSO</strong><br />XIII1:
                <asp:Label ID="XIII1Label" runat="server" Text='<%# Bind("XIII1") %>' />
                &nbsp;XIII2:
                <asp:Label ID="XIII2Label" runat="server" Text='<%# Bind("XIII2") %>' />
                &nbsp;XIII3:
                <asp:Label ID="XIII3Label" runat="server" Text='<%# Bind("XIII3") %>' />
                <br />
                <br />
                <strong style="box-sizing: border-box; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 214); text-decoration-style: initial; text-decoration-color: initial;">XIV. REFLEXIÓN FINAL</strong><br />XIV1:
                <asp:Label ID="XIV1Label" runat="server" Text='<%# Bind("XIV1") %>' />
                &nbsp;XIV2:
                <asp:Label ID="XIV2Label" runat="server" Text='<%# Bind("XIV2") %>' />
                &nbsp;XIV3:
                <asp:Label ID="XIV3Label" runat="server" Text='<%# Bind("XIV3") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />--%>
                <%--<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />--%>
               <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo Registro" class="btn btn-primary btn-lg"/>


                <%--<asp:HyperLink ID="HyperLink1"  NavigateUrl="~/frmNormativas.aspx" class="btn btn-primary btn-lg" runat="server">Normativas</asp:HyperLink>--%>


            </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:FormView>
<asp:SqlDataSource ID="dsEcuesta" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [DEencuestas] WHERE [id_deEncuesta] = @original_id_deEncuesta" 
    InsertCommand="INSERT INTO [DEencuestas] (fechaAplicacion, horaAplicacion,cantidadEstudiantes, idDigitador, [dniDocente],[idEncuesta], [IA], [IB], [IC], [ID], [IE], [IF], [II1], [II2], [II3], [II4], [III1], [III2], [III3], [III4], [IV1], [IV2], [IV3], [IV4], [IV5], [IV6], [IV7], [IV8], [V1], [V2], [V3], [V4], [V5], [V6], [V7], [V8], [V9], [VI1], [VI2], [VI3], [VII1], [VII2], [VII3], [VIII1], [VIII2], [VIII3], [VIII4], [VIII5], [IX1], [IX2], [IX3], [IX4], [IX5], [IX6], [IX7], [IX8], [X1], [X2], [X3], [X4], [XI1], [XI2], [XII1], [XII2], [XII3], [XIII1], [XIII2], [XIII3], [XIV1], [XIV2], [XIV3], [XIV22], [XIV33], [XIV44], estado ) VALUES (@fechaAplicacion, @horaAplicacion,@cantidadEstudiantes,@idDigitador, @dniDocente,@idEncuesta, @IA, @IB, @IC, @ID, @IE, @IF, @II1, @II2, @II3, @II4, @III1, @III2, @III3, @III4, @IV1, @IV2, @IV3, @IV4, @IV5, @IV6, @IV7, @IV8, @V1, @V2, @V3, @V4, @V5, @V6, @V7, @V8, @V9, @VI1, @VI2, @VI3, @VII1, @VII2, @VII3, @VIII1, @VIII2, @VIII3, @VIII4, @VIII5, @IX1, @IX2, @IX3, @IX4, @IX5, @IX6, @IX7, @IX8, @X1, @X2, @X3, @X4, @XI1, @XI2, @XII1, @XII2, @XII3, @XIII1, @XIII2, @XIII3, @XIV1, @XIV2, @XIV3, @XIV22, @XIV33,@XIV44,1 )" OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [DEencuestas]  where estado= 1" 
    UpdateCommand="UPDATE [DEencuestas] SET [dniDocente] = @dniDocente, [IA] = @IA, [IB] = @IB, [IC] = @IC, [ID] = @ID, [IE] = @IE, [IF] = @IF, [II1] = @II1, [II2] = @II2, [II3] = @II3, [II4] = @II4, [III1] = @III1, [III2] = @III2, [III3] = @III3, [III4] = @III4, [IV1] = @IV1, [IV2] = @IV2, [IV3] = @IV3, [IV4] = @IV4, [IV5] = @IV5, [IV6] = @IV6, [IV7] = @IV7, [IV8] = @IV8, [V1] = @V1, [V2] = @V2, [V3] = @V3, [V4] = @V4, [V5] = @V5, [V6] = @V6, [V7] = @V7, [V8] = @V8, [V9] = @V9, [VI1] = @VI1, [VI2] = @VI2, [VI3] = @VI3, [VII1] = @VII1, [VII2] = @VII2, [VII3] = @VII3, [VIII1] = @VIII1, [VIII2] = @VIII2, [VIII3] = @VIII3, [VIII4] = @VIII4, [VIII5] = @VIII5, [IX1] = @IX1, [IX2] = @IX2, [IX3] = @IX3, [IX4] = @IX4, [IX5] = @IX5, [IX6] = @IX6, [IX7] = @IX7, [IX8] = @IX8, [X1] = @X1, [X2] = @X2, [X3] = @X3, [X4] = @X4, [XI1] = @XI1, [XI2] = @XI2, [XII1] = @XII1, [XII2] = @XII2, [XII3] = @XII3, [XIII1] = @XIII1, [XIII2] = @XIII2, [XIII3] = @XIII3, [XIV1] = @XIV1, [XIV2] = @XIV2, [XIV3] = @XIV3 WHERE [id_deEncuesta] = @original_id_deEncuesta">
    <DeleteParameters>
        <asp:Parameter Name="original_id_deEncuesta" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        
        <asp:Parameter Name="fechaAplicacion" Type="String" />
        <asp:Parameter Name="horaAplicacion" Type="String" />
        <asp:Parameter Name="cantidadEstudiantes" Type="String" />
        
        
        <asp:Parameter Name="idDigitador" Type="String" />
        <asp:Parameter Name="dniDocente" Type="String" />
        <asp:Parameter Name="idEncuesta" Type="String" />

        <asp:Parameter Name="IA" Type="String" />
        <asp:Parameter Name="IB" Type="String" />
        <asp:Parameter Name="IC" Type="String" />
        <asp:Parameter DbType="Date" Name="ID" />
        <asp:Parameter Name="IE" Type="String" />
        <asp:Parameter Name="IF" Type="String" />
        <asp:Parameter Name="II1" Type="String" />
        <asp:Parameter Name="II2" Type="String" />
        <asp:Parameter Name="II3" Type="String" />
        <asp:Parameter Name="II4" Type="String" />
        <asp:Parameter Name="III1" Type="String" />
        <asp:Parameter Name="III2" Type="String" />
        <asp:Parameter Name="III3" Type="String" />
        <asp:Parameter Name="III4" Type="String" />
        <asp:Parameter Name="IV1" Type="String" />
        <asp:Parameter Name="IV2" Type="String" />
        <asp:Parameter Name="IV3" Type="String" />
        <asp:Parameter Name="IV4" Type="String" />
        <asp:Parameter Name="IV5" Type="String" />
        <asp:Parameter Name="IV6" Type="String" />
        <asp:Parameter Name="IV7" Type="String" />
        <asp:Parameter Name="IV8" Type="String" />
        <asp:Parameter Name="V1" Type="String" />
        <asp:Parameter Name="V2" Type="String" />
        <asp:Parameter Name="V3" Type="String" />
        <asp:Parameter Name="V4" Type="String" />
        <asp:Parameter Name="V5" Type="String" />
        <asp:Parameter Name="V6" Type="String" />
        <asp:Parameter Name="V7" Type="String" />
        <asp:Parameter Name="V8" Type="String" />
        <asp:Parameter Name="V9" Type="String" />
        <asp:Parameter Name="VI1" Type="String" />
        <asp:Parameter Name="VI2" Type="String" />
        <asp:Parameter Name="VI3" Type="String" />
        <asp:Parameter Name="VII1" Type="String" />
        <asp:Parameter Name="VII2" Type="String" />
        <asp:Parameter Name="VII3" Type="String" />
        <asp:Parameter Name="VIII1" Type="String" />
        <asp:Parameter Name="VIII2" Type="String" />
        <asp:Parameter Name="VIII3" Type="String" />
        <asp:Parameter Name="VIII4" Type="String" />
        <asp:Parameter Name="VIII5" Type="String" />
        <asp:Parameter Name="IX1" Type="String" />
        <asp:Parameter Name="IX2" Type="String" />
        <asp:Parameter Name="IX3" Type="String" />
        <asp:Parameter Name="IX4" Type="String" />
        <asp:Parameter Name="IX5" Type="String" />
        <asp:Parameter Name="IX6" Type="String" />
        <asp:Parameter Name="IX7" Type="String" />
        <asp:Parameter Name="IX8" Type="String" />
        <asp:Parameter Name="X1" Type="String" />
        <asp:Parameter Name="X2" Type="String" />
        <asp:Parameter Name="X3" Type="String" />
        <asp:Parameter Name="X4" Type="String" />
        <asp:Parameter Name="XI1" Type="String" />
        <asp:Parameter Name="XI2" Type="String" />
        <asp:Parameter Name="XII1" Type="String" />
        <asp:Parameter Name="XII2" Type="String" />
        <asp:Parameter Name="XII3" Type="String" />
        <asp:Parameter Name="XIII1" Type="String" />
        <asp:Parameter Name="XIII2" Type="String" />
        <asp:Parameter Name="XIII3" Type="String" />
        <asp:Parameter Name="XIV1" Type="String" />
        <asp:Parameter Name="XIV2" Type="String" />
        <asp:Parameter Name="XIV3" Type="String" />
        <asp:Parameter Name="XIV22" Type="String" />
        <asp:Parameter Name="XIV33" Type="String" />
        <asp:Parameter Name="XIV44" Type="String" />
        

        

        
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
    SelectCommand="SELECT * FROM [DEencuestas] WHERE ([dniDocente] = @dniDocente)  and estadoi=1">
    <SelectParameters>
        <asp:QueryStringParameter Name="dniDocente" QueryStringField="d" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
        <br />

        
   <b> RELACIÓN DE ENCUESTAS INGRESADAS</b>
        
    

    <asp:Panel ID="Panel1" runat="server" Height="700px" ScrollBars="Vertical">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_deEncuesta" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Font-Size="XX-Small">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_deEncuesta" HeaderText="id_deEncuesta" InsertVisible="False" ReadOnly="True" SortExpression="id_deEncuesta" />
                <asp:BoundField DataField="dniDocente" HeaderText="dniDocente" SortExpression="dniDocente" />
                <asp:BoundField DataField="idEncuesta" HeaderText="idEncuesta" SortExpression="idEncuesta" />
                <asp:BoundField DataField="idDigitador" HeaderText="idDigitador" SortExpression="idDigitador" />
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
                <asp:BoundField DataField="XIV22" HeaderText="XIV22" SortExpression="XIV22" />
                <asp:BoundField DataField="XIV33" HeaderText="XIV33" SortExpression="XIV33" />
                <asp:TemplateField HeaderText="XIV44" SortExpression="XIV44">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("XIV44") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%--<asp:Label ID="Label1" runat="server" Text='<%# Bind("XIV44") %>'></asp:Label>--%>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("XIV44") %>' ></asp:TextBox>

                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [DEencuestas] WHERE ESTADO=1"></asp:SqlDataSource>
        </asp:Panel>
</asp:Content>
