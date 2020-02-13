<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DEdatosGenerales.aspx.cs" Inherits="Evaluacion.WEB.Edigitador.DEdatosGenerales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <h2>ENCUESTA: Datos Generales de aplicación </h2>
       
       
  
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="id_deEncuestaDirfector" DataSourceID="cdDAtosgenerales" ForeColor="#333333">
               <%-- <EditItemTemplate>
                    id_deEncuestaDirfector:
                    <asp:Label ID="id_deEncuestaDirfectorLabel1" runat="server" Text='<%# Eval("id_deEncuestaDirfector") %>' />
                    <br />
                    CodigoEncuesta:
                    <asp:TextBox ID="CodigoEncuestaTextBox" runat="server" Text='<%# Bind("CodigoEncuesta") %>' />
                    <br />
                    I1:
                    <asp:TextBox ID="I1TextBox" runat="server" Text='<%# Bind("I1") %>' />
                    <br />
                    I2:
                    <asp:TextBox ID="I2TextBox" runat="server" Text='<%# Bind("I2") %>' />
                    <br />
                    I3:
                    <asp:TextBox ID="I3TextBox" runat="server" Text='<%# Bind("I3") %>' />
                    <br />
                    II41:
                    <asp:TextBox ID="II41TextBox" runat="server" Text='<%# Bind("II41") %>' />
                    <br />
                    II42:
                    <asp:TextBox ID="II42TextBox" runat="server" Text='<%# Bind("II42") %>' />
                    <br />
                    II43:
                    <asp:TextBox ID="II43TextBox" runat="server" Text='<%# Bind("II43") %>' />
                    <br />
                    II44:
                    <asp:TextBox ID="II44TextBox" runat="server" Text='<%# Bind("II44") %>' />
                    <br />
                    II45:
                    <asp:TextBox ID="II45TextBox" runat="server" Text='<%# Bind("II45") %>' />
                    <br />
                    II46:
                    <asp:TextBox ID="II46TextBox" runat="server" Text='<%# Bind("II46") %>' />
                    <br />
                    II51:
                    <asp:TextBox ID="II51TextBox" runat="server" Text='<%# Bind("II51") %>' />
                    <br />
                    II52:
                    <asp:TextBox ID="II52TextBox" runat="server" Text='<%# Bind("II52") %>' />
                    <br />
                    II53:
                    <asp:TextBox ID="II53TextBox" runat="server" Text='<%# Bind("II53") %>' />
                    <br />
                    II54:
                    <asp:TextBox ID="II54TextBox" runat="server" Text='<%# Bind("II54") %>' />
                    <br />
                    II55:
                    <asp:TextBox ID="II55TextBox" runat="server" Text='<%# Bind("II55") %>' />
                    <br />
                    II56:
                    <asp:TextBox ID="II56TextBox" runat="server" Text='<%# Bind("II56") %>' />
                    <br />
                    II6:
                    <asp:TextBox ID="II6TextBox" runat="server" Text='<%# Bind("II6") %>' />
                    <br />
                    II7:
                    <asp:TextBox ID="II7TextBox" runat="server" Text='<%# Bind("II7") %>' />
                    <br />
                    III8:
                    <asp:TextBox ID="III8TextBox" runat="server" Text='<%# Bind("III8") %>' />
                    <br />
                    III9:
                    <asp:TextBox ID="III9TextBox" runat="server" Text='<%# Bind("III9") %>' />
                    <br />
                    III10:
                    <asp:TextBox ID="III10TextBox" runat="server" Text='<%# Bind("III10") %>' />
                    <br />
                    III11a:
                    <asp:TextBox ID="III11aTextBox" runat="server" Text='<%# Bind("III11a") %>' />
                    <br />
                    III11b:
                    <asp:TextBox ID="III11bTextBox" runat="server" Text='<%# Bind("III11b") %>' />
                    <br />
                    III12a:
                    <asp:TextBox ID="III12aTextBox" runat="server" Text='<%# Bind("III12a") %>' />
                    <br />
                    III12b:
                    <asp:TextBox ID="III12bTextBox" runat="server" Text='<%# Bind("III12b") %>' />
                    <br />
                    III13a:
                    <asp:TextBox ID="III13aTextBox" runat="server" Text='<%# Bind("III13a") %>' />
                    <br />
                    III13b:
                    <asp:TextBox ID="III13bTextBox" runat="server" Text='<%# Bind("III13b") %>' />
                    <br />
                    III14:
                    <asp:TextBox ID="III14TextBox" runat="server" Text='<%# Bind("III14") %>' />
                    <br />
                    IV15:
                    <asp:TextBox ID="IV15TextBox" runat="server" Text='<%# Bind("IV15") %>' />
                    <br />
                    IV16:
                    <asp:TextBox ID="IV16TextBox" runat="server" Text='<%# Bind("IV16") %>' />
                    <br />
                    V17:
                    <asp:TextBox ID="V17TextBox" runat="server" Text='<%# Bind("V17") %>' />
                    <br />
                    V18:
                    <asp:TextBox ID="V18TextBox" runat="server" Text='<%# Bind("V18") %>' />
                    <br />
                    V19:
                    <asp:TextBox ID="V19TextBox" runat="server" Text='<%# Bind("V19") %>' />
                    <br />
                    VI20:
                    <asp:TextBox ID="VI20TextBox" runat="server" Text='<%# Bind("VI20") %>' />
                    <br />
                    VI21:
                    <asp:TextBox ID="VI21TextBox" runat="server" Text='<%# Bind("VI21") %>' />
                    <br />
                    VI22:
                    <asp:TextBox ID="VI22TextBox" runat="server" Text='<%# Bind("VI22") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>--%>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    CodigoEncuesta:
                    <asp:TextBox ID="CodigoEncuestaTextBox" runat="server" Text='<%# Bind("CodigoEncuesta") %>' MaxLength="6" BackColor="#CCFFFF" Font-Size="XX-Large" Font-Bold="True" Width="124px" />


                    



                    <ajaxToolkit:MaskedEditExtender ID="txtidEncuesta_MaskedEditExtender" runat="server" MaskType="Number" Mask="999999" MessageValidatorTip="true"
                    BehaviorID="txtidEncuesta_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="CodigoEncuestaTextBox" />
                
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
                    <br />
                    <strong>


                    <br />
                    DATOS A SASER RESPONDIDOS POR EL DIRECTOR DEL IESP<br />
                    <br />
                    I. DATOS GENERALES DEL IESP<br /></strong>
                    <br />
                    1:
                    <%--<asp:TextBox ID="I1TextBox" runat="server" Text='<%# Bind("I1") %>' Width="400px" />--%>
                             <asp:DropDownList ID="DropDownList5" runat="server" SelectedValue='<%# Bind("I1") %>'>
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
                    <br />
                    2:
                    <%--<asp:TextBox ID="I2TextBox" runat="server" Text='<%# Bind("I2") %>' Width="400px" />--%>

                             <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("I2") %>'>
                                      <asp:ListItem>CUSCO</asp:ListItem>
                                        <asp:ListItem>JUNIN</asp:ListItem>
                                        <asp:ListItem>LA LIBERTAD</asp:ListItem>
                                        <asp:ListItem>LAMBAYEQUE</asp:ListItem>
                                        <asp:ListItem>LIMA METROPOLITANA</asp:ListItem>
                   
                              </asp:DropDownList>




                    <br />
                    3:
                    <asp:TextBox ID="I3TextBox" runat="server" Text='<%# Bind("I3") %>' Width="96px" Height="17px" />
                    <ajaxToolkit:MaskedEditExtender ID="I3TextBox_MaskedEditExtender" runat="server" BehaviorID="I3TextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="9999" TargetControlID="I3TextBox" />
                    <br />
                    <br />
                    <strong>II. </strong>S<span style="font-weight: bold">OBRE LA INFRAESTRUCTURA Y SERVICIOS DEL IESP</span><br />
                    <br />
                    <table class="nav-justified">
                        <tr>
                            <td>4.1: </td>
                            <td>
                                <%--<asp:TextBox ID="II41TextBox" runat="server" Text='<%# Bind("II41") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox3"   Checked='<%# Bind("II41") %>'  Runat="Server"/>--%>

                                  <asp:DropDownList ID="DropDownList46" runat="server" SelectedValue='<%# Bind("II41") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>

                            </td>
                            <td>4.2: </td>
                            <td style="width: 279px">
                                <%--<asp:TextBox ID="II42TextBox" runat="server" Text='<%# Bind("II42") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox1"   Checked='<%# Bind("II42") %>'  Runat="Server"/>--%>

                                  <asp:DropDownList ID="DropDownList11" runat="server" SelectedValue='<%# Bind("II42") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>

                            </td>
                            <td>4.3: </td>
                            <td>
                                <%--<asp:TextBox ID="II43TextBox" runat="server" Text='<%# Bind("II43") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox2"   Checked='<%# Bind("II43") %>'  Runat="Server"/>--%>

                                 <asp:DropDownList ID="DropDownList12" runat="server" SelectedValue='<%# Bind("II43") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>4.4: </td>
                            <td>
                                <%--<asp:TextBox ID="II44TextBox" runat="server" Text='<%# Bind("II44") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox4"   Checked='<%# Bind("II44") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList13" runat="server" SelectedValue='<%# Bind("II44") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                            <td>4.5: </td>
                            <td style="width: 279px">
                                <%--<asp:TextBox ID="II45TextBox" runat="server" Text='<%# Bind("II45") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox5"   Checked='<%# Bind("III4") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList14" runat="server" SelectedValue='<%# Bind("II45") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                            <td>4.6: </td>
                            <td>
                                <%--<asp:TextBox ID="II46TextBox" runat="server" Text='<%# Bind("II46") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox6"   Checked='<%# Bind("II46") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList15" runat="server" SelectedValue='<%# Bind("II46") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 279px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 279px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>5.1: </td>
            <td>
                                <%--<asp:TextBox ID="II51TextBox" runat="server" Text='<%# Bind("II51") %>' MaxLength="1" />--%>

                                <%--<asp:CheckBox ID="CheckBox7"   Checked='<%# Bind("II51") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList16" runat="server" SelectedValue='<%# Bind("II51") %>'>
                                     <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                     <asp:ListItem>SI</asp:ListItem>
                                     <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>5.2: </td>
            <td style="width: 279px">
                                <%--<asp:TextBox ID="II52TextBox" runat="server" Text='<%# Bind("II52") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox8"   Checked='<%# Bind("II52") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList17" runat="server" SelectedValue='<%# Bind("II52") %>'>
                                     <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                     <asp:ListItem>SI</asp:ListItem>
                                     <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>5.3:
                </td>
            <td>
                                <%--<asp:TextBox ID="II53TextBox" runat="server" Text='<%# Bind("II53") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox9"   Checked='<%# Bind("II53") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList18" runat="server" SelectedValue='<%# Bind("II53") %>'>
                                     <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                     <asp:ListItem>SI</asp:ListItem>
                                     <asp:ListItem>NO</asp:ListItem>
                                </asp:DropDownList>
                                 </td>
                        </tr>
                        <tr>
                            <td style="height: 25px">5.4: </td>
                            <td style="height: 25px">
                                <%--<asp:TextBox ID="II54TextBox" runat="server" Text='<%# Bind("II54") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox10"   Checked='<%# Bind("II54") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList19" runat="server" SelectedValue='<%# Bind("II54") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                            <td style="height: 25px">5.5: </td>
                            <td style="width: 279px; height: 25px">
                                <%--<asp:TextBox ID="II55TextBox" runat="server" Text='<%# Bind("II55") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox11"   Checked='<%# Bind("II55") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList20" runat="server" SelectedValue='<%# Bind("II55") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                            <td style="height: 25px">5.6:</td>
                            <td style="height: 25px">
                                <%--<asp:TextBox ID="II56TextBox" runat="server" Text='<%# Bind("II56") %>' MaxLength="1" />--%>
                                <%--<asp:CheckBox ID="CheckBox12"   Checked='<%# Bind("II56") %>'  Runat="Server"/>--%>
                                 <asp:DropDownList ID="DropDownList21" runat="server" SelectedValue='<%# Bind("II56") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 279px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 279px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>6: </td>
                            <td>
                                <%--<asp:TextBox ID="II6TextBox" runat="server" Text='<%# Bind("II6") %>' MaxLength="1" />--%>


                                      <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("II6") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                        <asp:ListItem>NO HAY AGUA DISPONIBLE</asp:ListItem>
                                    
                   
                              </asp:DropDownList>


                            </td>
                            <td>7: </td>
                            <td style="width: 279px">
                                <%--<asp:TextBox ID="II7TextBox" runat="server" Text='<%# Bind("II7") %>' MaxLength="1" />--%>

                                <%--<asp:CheckBox ID="CheckBox13"   Checked='<%# Bind("II7") %>'  Runat="Server"/>--%>

                                 <asp:DropDownList ID="DropDownList22" runat="server" SelectedValue='<%# Bind("II7") %>'>
                                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>SI</asp:ListItem>
                                        <asp:ListItem>NO</asp:ListItem>
                                    </asp:DropDownList>

                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 279px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 279px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 279px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <strong>DATOS A SER RESPONDIDOS  POR EL DOCENTE EVALUADO<br />
                    <br />
                    III&nbsp; DATOS GENERALES SOBRE EL DOCENTE EVALUADO<br />
                    <table class="nav-justified">
                        <tr>
                            <td>8: </td>
                            <td>
                                <%--<asp:TextBox ID="III8TextBox" runat="server" Height="16px" Text='<%# Bind("III8") %>' Width="271px" />--%>

                                
                             <asp:DropDownList ID="DropDownList6" runat="server" SelectedValue='<%# Bind("III8") %>'>
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


                            </td>
                            <td>9:</td>
                            <td>
                                <asp:TextBox ID="III9TextBox" runat="server" Text='<%# Bind("III9") %>' MaxLength="2" />
                                <ajaxToolkit:MaskedEditExtender ID="III9TextBox_MaskedEditExtender" runat="server" BehaviorID="III9TextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="99" TargetControlID="III9TextBox" />
                            </td>
                        </tr>
                        <tr>
                            <td>10: </td>
                            <td>
                                <%--<asp:TextBox ID="III10TextBox" runat="server" Text='<%# Bind("III10") %>' />--%>

                                     <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("III10") %>'>
                                         <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>H</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <%--<asp:TextBox ID="III11aTextBox" runat="server" Text='<%# Bind("III11a") %>' MaxLength="1" />--%>

                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px"><strong>11: </strong> </td>
                            <td style="height: 20px">
                                <strong>
                                <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("III11a") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>PRE GRADO</asp:ListItem>
                                    <asp:ListItem>MASTER</asp:ListItem>
                                    <asp:ListItem>DOCTOR</asp:ListItem>
                                </asp:DropDownList>
                                </strong>
                            </td>
                            <td style="height: 20px"><strong>11.1: Estudios de Posgrado en:</strong></td>
                            <td style="height: 20px">
                                <strong>
                                <asp:TextBox ID="III11bTextBox" runat="server" Text='<%# Bind("III11b") %>' />
                                </strong>


                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong>12: </strong></td>
                            <td><strong>
                                <asp:DropDownList ID="DropDownList7" runat="server" SelectedValue='<%# Bind("III12a") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                    <asp:ListItem>Otro</asp:ListItem>
                                    <asp:ListItem>Inicial</asp:ListItem>
                                    <asp:ListItem>Primaria</asp:ListItem>
                                    <asp:ListItem>Secundaria</asp:ListItem>
                                </asp:DropDownList>
                                </strong></td>
                            <td><strong>12 (otro): </strong></td>
                            <td><%--<asp:TextBox ID="III12aTextBox" runat="server" Text='<%# Bind("III12a") %>' MaxLength="1" />--%><strong>
                                <asp:TextBox ID="III12bTextBox" runat="server" Text='<%# Bind("III12b") %>' />
                                </strong></td>
                        </tr>
                        <tr>
                            <td><strong>13 (especialidad): </strong> </td>
                            <td>
                                <strong>
                                <asp:TextBox ID="III13aTextBox" runat="server" Text='<%# Bind("III13a") %>' />
                                </strong>
                            </td>
                            <td><strong>13(No corresponde): </strong> </td>
                            <td>
                                <strong>
                                <%--<asp:TextBox ID="III13bTextBox" runat="server" MaxLength="1" Text='<%# Bind("III13b") %>' />--%>

                                     <asp:CheckBox ID="CheckBox37"   Checked='<%# Bind("III13b") %>'  Runat="Server"/>

                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>14: </strong> </td>
                            <td>
                                <strong>
                                <asp:TextBox ID="III14TextBox" runat="server" MaxLength="2" Text='<%# Bind("III14") %>' />
                                <ajaxToolkit:MaskedEditExtender ID="III14TextBox_MaskedEditExtender" runat="server" BehaviorID="III14TextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="99" TargetControlID="III14TextBox" />
                                </strong>
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4"><strong>IV. SOBRE EL CURSO QUE ENSEÑA EL DOCENTE A LOS ESTUDIANTES ENCUESTADOS</strong></td>
                        </tr>
                        <tr>
                            <td><strong>15: </strong></td>
                            <td><strong>
                                <asp:TextBox ID="IV15TextBox" runat="server" Text='<%# Bind("IV15") %>' />
                                </strong></td>
                            <td><strong>16:</strong></td>
                            <td><strong>
                                <asp:TextBox ID="IV16TextBox" runat="server" MaxLength="2" Text='<%# Bind("IV16") %>' />
                                <ajaxToolkit:MaskedEditExtender ID="IV16TextBox_MaskedEditExtender" runat="server" BehaviorID="IV16TextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="IV16TextBox" Mask="99" />
                                </strong></td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    DATOS A SER RESPONDIDOS POR EL APLICADOR<br />
                    <br />
                    V SOBRE LA INFRAESTRUCTURA Y SERVICIOS DEL AULA&nbsp; DONDE LOS ESTUDIANTES ENCUESTADOS RECIBEN CLASE CON EL DOCENTE EVALUADO<br /></strong>&nbsp;<br />&nbsp;<br />17:
                    <%--<asp:TextBox ID="V17TextBox" runat="server" Text='<%# Bind("V17") %>' MaxLength="1" />--%>

                               <asp:DropDownList ID="DropDownList8" runat="server" SelectedValue='<%# Bind("V17") %>'>
                                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                         <asp:ListItem>Si</asp:ListItem>
                                         <asp:ListItem>No</asp:ListItem>
                                
                                </asp:DropDownList>

                    <br />
                    18:
                    <%--<asp:TextBox ID="V18TextBox" runat="server" Text='<%# Bind("V18") %>' MaxLength="1" />--%>

                    <asp:DropDownList ID="DropDownList9" runat="server" SelectedValue='<%# Bind("V18") %>'>
                        <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>


                        <asp:ListItem>Completos</asp:ListItem>
                                         <asp:ListItem>Con roturas</asp:ListItem>
                                         <asp:ListItem>Sin vidrios</asp:ListItem>
                                
                                </asp:DropDownList>
                    <br />
                    19:
                    <%--<asp:TextBox ID="V19TextBox" runat="server" Text='<%# Bind("V19") %>' MaxLength="1" />--%>


                                    <asp:DropDownList ID="DropDownList10" runat="server" SelectedValue='<%# Bind("V19") %>'>
                    <asp:ListItem>VACIO</asp:ListItem>
                                    <asp:ListItem>DOBLE MARCA</asp:ListItem>

                                        <asp:ListItem>Existente (madera, cemento, loceta, u otros)</asp:ListItem>
                                         <asp:ListItem>Inexistente - Tierra</asp:ListItem>
                                     
                                
                                </asp:DropDownList>

                    <br />
                    <br />
                    <strong>
                    <br />
                    VI SOBRE LA APLICACION DEL CUESTIONARIO PARA ESTUDIANTES
                    <br />
                    </strong>
                    <br />
                    20: En el formato: (dia/mes/año)
                    <asp:TextBox ID="VI20TextBox" runat="server" Text='<%# Bind("VI20") %>' />
                    <ajaxToolkit:MaskedEditExtender ID="IBTextBox_MaskedEditExtender" runat="server" BehaviorID="IBTextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="99/99/9999" MaskType="Date" TargetControlID="VI20TextBox" />
                    <br />
                    21: (En 24 horas   ejm   20:52)
                    <asp:TextBox ID="VI21TextBox" runat="server" Text='<%# Bind("VI21") %>' />
                    <br />
                    22: (en minutos)
                    <asp:TextBox ID="VI22TextBox" runat="server" Text='<%# Bind("VI22") %>' />
                    <ajaxToolkit:MaskedEditExtender ID="VI22TextBox_MaskedEditExtender" runat="server" BehaviorID="VI22TextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="VI22TextBox" Mask="99" />
                    <br />
                    23: (en minutos)
                    <asp:TextBox ID="VI23TextBox" runat="server" Text='<%# Bind("VI23") %>' />
                    <ajaxToolkit:MaskedEditExtender ID="VI23TextBox_MaskedEditExtender" runat="server" BehaviorID="VI23TextBox_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="VI23TextBox"  Mask="99" />
                    <br />

                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar"  class="btn btn-primary btn-lg"/>
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" class="btn btn-primary btn-lg"/>
                </InsertItemTemplate>
                <ItemTemplate>
                  <%--  id_deEncuestaDirfector:
                    <asp:Label ID="id_deEncuestaDirfectorLabel" runat="server" Text='<%# Eval("id_deEncuestaDirfector") %>' />
                    <br />
                    CodigoEncuesta:
                    <asp:Label ID="CodigoEncuestaLabel" runat="server" Text='<%# Bind("CodigoEncuesta") %>' />
                    <br />
                    I1:
                    <asp:Label ID="I1Label" runat="server" Text='<%# Bind("I1") %>' />
                    <br />
                    I2:
                    <asp:Label ID="I2Label" runat="server" Text='<%# Bind("I2") %>' />
                    <br />
                    I3:
                    <asp:Label ID="I3Label" runat="server" Text='<%# Bind("I3") %>' />
                    <br />
                    II41:
                    <asp:Label ID="II41Label" runat="server" Text='<%# Bind("II41") %>' />
                    <br />
                    II42:
                    <asp:Label ID="II42Label" runat="server" Text='<%# Bind("II42") %>' />
                    <br />
                    II43:
                    <asp:Label ID="II43Label" runat="server" Text='<%# Bind("II43") %>' />
                    <br />
                    II44:
                    <asp:Label ID="II44Label" runat="server" Text='<%# Bind("II44") %>' />
                    <br />
                    II45:
                    <asp:Label ID="II45Label" runat="server" Text='<%# Bind("II45") %>' />
                    <br />
                    II46:
                    <asp:Label ID="II46Label" runat="server" Text='<%# Bind("II46") %>' />
                    <br />
                    II51:
                    <asp:Label ID="II51Label" runat="server" Text='<%# Bind("II51") %>' />
                    <br />
                    II52:
                    <asp:Label ID="II52Label" runat="server" Text='<%# Bind("II52") %>' />
                    <br />
                    II53:
                    <asp:Label ID="II53Label" runat="server" Text='<%# Bind("II53") %>' />
                    <br />
                    II54:
                    <asp:Label ID="II54Label" runat="server" Text='<%# Bind("II54") %>' />
                    <br />
                    II55:
                    <asp:Label ID="II55Label" runat="server" Text='<%# Bind("II55") %>' />
                    <br />
                    II56:
                    <asp:Label ID="II56Label" runat="server" Text='<%# Bind("II56") %>' />
                    <br />
                    II6:
                    <asp:Label ID="II6Label" runat="server" Text='<%# Bind("II6") %>' />
                    <br />
                    II7:
                    <asp:Label ID="II7Label" runat="server" Text='<%# Bind("II7") %>' />
                    <br />
                    III8:
                    <asp:Label ID="III8Label" runat="server" Text='<%# Bind("III8") %>' />
                    <br />
                    III9:
                    <asp:Label ID="III9Label" runat="server" Text='<%# Bind("III9") %>' />
                    <br />
                    III10:
                    <asp:Label ID="III10Label" runat="server" Text='<%# Bind("III10") %>' />
                    <br />
                    III11a:
                    <asp:Label ID="III11aLabel" runat="server" Text='<%# Bind("III11a") %>' />
                    <br />
                    III11b:
                    <asp:Label ID="III11bLabel" runat="server" Text='<%# Bind("III11b") %>' />
                    <br />
                    III12a:
                    <asp:Label ID="III12aLabel" runat="server" Text='<%# Bind("III12a") %>' />
                    <br />
                    III12b:
                    <asp:Label ID="III12bLabel" runat="server" Text='<%# Bind("III12b") %>' />
                    <br />
                    III13a:
                    <asp:Label ID="III13aLabel" runat="server" Text='<%# Bind("III13a") %>' />
                    <br />
                    III13b:
                    <asp:Label ID="III13bLabel" runat="server" Text='<%# Bind("III13b") %>' />
                    <br />
                    III14:
                    <asp:Label ID="III14Label" runat="server" Text='<%# Bind("III14") %>' />
                    <br />
                    IV15:
                    <asp:Label ID="IV15Label" runat="server" Text='<%# Bind("IV15") %>' />
                    <br />
                    IV16:
                    <asp:Label ID="IV16Label" runat="server" Text='<%# Bind("IV16") %>' />
                    <br />
                    V17:
                    <asp:Label ID="V17Label" runat="server" Text='<%# Bind("V17") %>' />
                    <br />
                    V18:
                    <asp:Label ID="V18Label" runat="server" Text='<%# Bind("V18") %>' />
                    <br />
                    V19:
                    <asp:Label ID="V19Label" runat="server" Text='<%# Bind("V19") %>' />
                    <br />
                    VI20:
                    <asp:Label ID="VI20Label" runat="server" Text='<%# Bind("VI20") %>' />
                    <br />
                    VI21:
                    <asp:Label ID="VI21Label" runat="server" Text='<%# Bind("VI21") %>' />
                    <br />
                    VI22:
                    <asp:Label ID="VI22Label" runat="server" Text='<%# Bind("VI22") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />--%>
                  <%--  &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />--%>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nueva Encuesta"  Font-Size="Large" class="btn btn-primary btn-lg"  />
                </ItemTemplate>
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:FormView>
    <asp:SqlDataSource ID="cdDAtosgenerales" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [DEencuestasDirector] WHERE [id_deEncuestaDirfector] = @id_deEncuestaDirfector" 
        InsertCommand="INSERT INTO [DEencuestasDirector] ([CodigoEncuesta],idDigitador, [I1], [I2], [I3], [II41], [II42], [II43], [II44], [II45], [II46], [II51], [II52], [II53], [II54], [II55], [II56], [II6], [II7], [III8], [III9], [III10], [III11a], [III11b], [III12a], [III12b], [III13a], [III13b], [III14], [IV15], [IV16], [V17], [V18], [V19], [VI20], [VI21], [VI22], [VI23]) VALUES (@CodigoEncuesta,@idDigitador, @I1, @I2, @I3, @II41, @II42, @II43, @II44, @II45, @II46, @II51, @II52, @II53, @II54, @II55, @II56, @II6, @II7, @III8, @III9, @III10, @III11a, @III11b, @III12a, @III12b, @III13a, @III13b, @III14, @IV15, @IV16, @V17, @V18, @V19, @VI20, @VI21, @VI22, @VI23)" SelectCommand="SELECT * FROM [DEencuestasDirector]" UpdateCommand="UPDATE [DEencuestasDirector] SET [CodigoEncuesta] = @CodigoEncuesta, [I1] = @I1, [I2] = @I2, [I3] = @I3, [II41] = @II41, [II42] = @II42, [II43] = @II43, [II44] = @II44, [II45] = @II45, [II46] = @II46, [II51] = @II51, [II52] = @II52, [II53] = @II53, [II54] = @II54, [II55] = @II55, [II56] = @II56, [II6] = @II6, [II7] = @II7, [III8] = @III8, [III9] = @III9, [III10] = @III10, [III11a] = @III11a, [III11b] = @III11b, [III12a] = @III12a, [III12b] = @III12b, [III13a] = @III13a, [III13b] = @III13b, [III14] = @III14, [IV15] = @IV15, [IV16] = @IV16, [V17] = @V17, [V18] = @V18, [V19] = @V19, [VI20] = @VI20, [VI21] = @VI21, [VI22] = @VI22 WHERE [id_deEncuestaDirfector] = @id_deEncuestaDirfector">
        <DeleteParameters>
            <asp:Parameter Name="id_deEncuestaDirfector" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            
            <asp:Parameter Name="CodigoEncuesta" Type="String" />
            <asp:Parameter Name="idDigitador" Type="String" />
            <asp:Parameter Name="I1" Type="String" />
            <asp:Parameter Name="I2" Type="String" />
            <asp:Parameter Name="I3" Type="String" />
            <asp:Parameter Name="II41" Type="String" />
            <asp:Parameter Name="II42" Type="String" />
            <asp:Parameter Name="II43" Type="String" />
            <asp:Parameter Name="II44" Type="String" />
            <asp:Parameter Name="II45" Type="String" />
            <asp:Parameter Name="II46" Type="String" />
            <asp:Parameter Name="II51" Type="String" />
            <asp:Parameter Name="II52" Type="String" />
            <asp:Parameter Name="II53" Type="String" />
            <asp:Parameter Name="II54" Type="String" />
            <asp:Parameter Name="II55" Type="String" />
            <asp:Parameter Name="II56" Type="String" />
            <asp:Parameter Name="II6" Type="String" />
            <asp:Parameter Name="II7" Type="String" />
            <asp:Parameter Name="III8" Type="String" />
            <asp:Parameter Name="III9" Type="String" />
            <asp:Parameter Name="III10" Type="String" />
            <asp:Parameter Name="III11a" Type="String" />
            <asp:Parameter Name="III11b" Type="String" />
            <asp:Parameter Name="III12a" Type="String" />
            <asp:Parameter Name="III12b" Type="String" />
            <asp:Parameter Name="III13a" Type="String" />
            <asp:Parameter Name="III13b" Type="String" />
            <asp:Parameter Name="III14" Type="String" />
            <asp:Parameter Name="IV15" Type="String" />
            <asp:Parameter Name="IV16" Type="String" />
            <asp:Parameter Name="V17" Type="String" />
            <asp:Parameter Name="V18" Type="String" />
            <asp:Parameter Name="V19" Type="String" />
            <asp:Parameter Name="VI20" Type="String" />
            <asp:Parameter Name="VI21" Type="String" />
            <asp:Parameter Name="VI22" Type="String" />
            <asp:Parameter Name="VI23" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CodigoEncuesta" Type="String" />
            <asp:Parameter Name="I1" Type="String" />
            <asp:Parameter Name="I2" Type="String" />
            <asp:Parameter Name="I3" Type="String" />
            <asp:Parameter Name="II41" Type="String" />
            <asp:Parameter Name="II42" Type="String" />
            <asp:Parameter Name="II43" Type="String" />
            <asp:Parameter Name="II44" Type="String" />
            <asp:Parameter Name="II45" Type="String" />
            <asp:Parameter Name="II46" Type="String" />
            <asp:Parameter Name="II51" Type="String" />
            <asp:Parameter Name="II52" Type="String" />
            <asp:Parameter Name="II53" Type="String" />
            <asp:Parameter Name="II54" Type="String" />
            <asp:Parameter Name="II55" Type="String" />
            <asp:Parameter Name="II56" Type="String" />
            <asp:Parameter Name="II6" Type="String" />
            <asp:Parameter Name="II7" Type="String" />
            <asp:Parameter Name="III8" Type="String" />
            <asp:Parameter Name="III9" Type="String" />
            <asp:Parameter Name="III10" Type="String" />
            <asp:Parameter Name="III11a" Type="String" />
            <asp:Parameter Name="III11b" Type="String" />
            <asp:Parameter Name="III12a" Type="String" />
            <asp:Parameter Name="III12b" Type="String" />
            <asp:Parameter Name="III13a" Type="String" />
            <asp:Parameter Name="III13b" Type="String" />
            <asp:Parameter Name="III14" Type="String" />
            <asp:Parameter Name="IV15" Type="String" />
            <asp:Parameter Name="IV16" Type="String" />
            <asp:Parameter Name="V17" Type="String" />
            <asp:Parameter Name="V18" Type="String" />
            <asp:Parameter Name="V19" Type="String" />
            <asp:Parameter Name="VI20" Type="String" />
            <asp:Parameter Name="VI21" Type="String" />
            <asp:Parameter Name="VI22" Type="String" />
            <asp:Parameter Name="id_deEncuestaDirfector" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <b> RELACIÓN DE ENCUESTAS INGRESADAS</b>
    
    <asp:Panel ID="Panel1" runat="server" Height="700px" ScrollBars="Vertical">

       
    <asp:GridView ID="GridView1" runat="server"  Font-Size="XX-Small" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_deEncuestaDirfector" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id_deEncuestaDirfector" HeaderText="id_deEncuestaDirfector" InsertVisible="False" ReadOnly="True" SortExpression="id_deEncuestaDirfector" />
            <asp:BoundField DataField="CodigoEncuesta" HeaderText="CodigoEncuesta" SortExpression="CodigoEncuesta" />
            <asp:BoundField DataField="idDigitador" HeaderText="idDigitador" SortExpression="idDigitador" />
            <asp:BoundField DataField="I1" HeaderText="I1" SortExpression="I1" />
            <asp:BoundField DataField="I2" HeaderText="I2" SortExpression="I2" />
            <asp:BoundField DataField="I3" HeaderText="I3" SortExpression="I3" />
            <asp:BoundField DataField="II41" HeaderText="II41" SortExpression="II41" />
            <asp:BoundField DataField="II42" HeaderText="II42" SortExpression="II42" />
            <asp:BoundField DataField="II43" HeaderText="II43" SortExpression="II43" />
            <asp:BoundField DataField="II44" HeaderText="II44" SortExpression="II44" />
            <asp:BoundField DataField="II45" HeaderText="II45" SortExpression="II45" />
            <asp:BoundField DataField="II46" HeaderText="II46" SortExpression="II46" />
            <asp:BoundField DataField="II51" HeaderText="II51" SortExpression="II51" />
            <asp:BoundField DataField="II52" HeaderText="II52" SortExpression="II52" />
            <asp:BoundField DataField="II53" HeaderText="II53" SortExpression="II53" />
            <asp:BoundField DataField="II54" HeaderText="II54" SortExpression="II54" />
            <asp:BoundField DataField="II55" HeaderText="II55" SortExpression="II55" />
            <asp:BoundField DataField="II56" HeaderText="II56" SortExpression="II56" />
            <asp:BoundField DataField="II6" HeaderText="II6" SortExpression="II6" />
            <asp:BoundField DataField="II7" HeaderText="II7" SortExpression="II7" />
            <asp:BoundField DataField="III8" HeaderText="III8" SortExpression="III8" />
            <asp:BoundField DataField="III9" HeaderText="III9" SortExpression="III9" />
            <asp:BoundField DataField="III10" HeaderText="III10" SortExpression="III10" />
            <asp:BoundField DataField="III11a" HeaderText="III11a" SortExpression="III11a" />
            <asp:BoundField DataField="III11b" HeaderText="III11b" SortExpression="III11b" />
            <asp:BoundField DataField="III12a" HeaderText="III12a" SortExpression="III12a" />
            <asp:BoundField DataField="III12b" HeaderText="III12b" SortExpression="III12b" />
            <asp:BoundField DataField="III13a" HeaderText="III13a" SortExpression="III13a" />
            <asp:BoundField DataField="III13b" HeaderText="III13b" SortExpression="III13b" />
            <asp:BoundField DataField="III14" HeaderText="III14" SortExpression="III14" />
            <asp:BoundField DataField="IV15" HeaderText="IV15" SortExpression="IV15" />
            <asp:BoundField DataField="IV16" HeaderText="IV16" SortExpression="IV16" />
            <asp:BoundField DataField="V17" HeaderText="V17" SortExpression="V17" />
            <asp:BoundField DataField="V18" HeaderText="V18" SortExpression="V18" />
            <asp:BoundField DataField="V19" HeaderText="V19" SortExpression="V19" />
            <asp:BoundField DataField="VI20" HeaderText="VI20" SortExpression="VI20" />
            <asp:BoundField DataField="VI21" HeaderText="VI21" SortExpression="VI21" />
            <asp:BoundField DataField="VI22" HeaderText="VI22" SortExpression="VI22" />
            <asp:BoundField DataField="VI23" HeaderText="VI23" SortExpression="VI23" />
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
        SelectCommand="SELECT * FROM [DEencuestasDirector] where estado = 1"></asp:SqlDataSource>
        </asp:Panel>
    
            
        <br />
    </asp:Content>
