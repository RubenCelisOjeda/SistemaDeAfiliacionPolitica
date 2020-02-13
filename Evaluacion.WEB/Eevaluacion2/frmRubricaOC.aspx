<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRubricaOC.aspx.cs" Inherits="Evaluacion.WEB.Eevaluador.frmRubricaOC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  
   <br />
    <br />
    <br />
    <h3>Rúbrica de Observación de Clases.</h3>
        <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Eevaluacion2/frmRubricaOC.aspx">Rúbrica Observación de Aula </asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">Portafolio</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#">Cuestionario de Estudiantes</asp:HyperLink>
&nbsp;-
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#">Cuestionario de Conocimientos</asp:HyperLink>
      </p>
        <br />
        Es un instrumento que valora .....<br />
        <br />
                <dl>
                    <dd>
                        <pre>&nbsp;&nbsp;&nbsp; I NO LOGRADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	II EN PROCESO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	III LOGRADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	IV DESTACADO </pre>
                    </dd>
        </dl>
        Cada uno de los 6 desempeños evaluados se valoraempleando una rúbrica o pauta. A continuación puede revisar cada una de ellas.<br />
        <br />
                    
                    <asp:Button ID="Button1" runat="server" Text="Desempeño 1" class="btn btn-default" OnClick="Button1_Click"  />
                    
                    

                    <asp:Button ID="Button2" runat="server" Text="Desempeño 2" class="btn btn-default" OnClick="Button2_Click"  />
                   <asp:Button ID="Button3" runat="server" Text="Desempeño 3" class="btn btn-default" OnClick="Button3_Click"  />                
                    <asp:Button ID="Button4" runat="server" Text="Desempeño 4" class="btn btn-default" OnClick="Button4_Click"  />
                    <asp:Button ID="Button5" runat="server" Text="Desempeño 5" class="btn btn-default" OnClick="Button5_Click"  />
                    <asp:Button ID="Button6" runat="server" Text="Desempeño 6" class="btn btn-default" OnClick="Button6_Click"   />
            
            
                               <asp:HyperLink ID="HyperLink4sdsd"  NavigateUrl="~/Eevaluador/frmRubricaOCEvaluador.aspx" class="btn btn-primary btn-lg" runat="server">Evaluar    </asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                
                <div id="sds" class="bg-success">
                        <p class="bg-info" >
                            <strong>Desempeño 01: Evalúa y retroalimenta</strong> <br />
      

                        </p>
                </div>
                <div id="sds1" class="as">
                        <p style="background-color: #F5F5F5" >
                            
                            <strong>Aspectos 1:   ......</strong> <br />
                            <strong>Aspectos 2:   ......</strong> <br />
                            
                        </p>
                </div>                <br /> 
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
            <asp:View ID="View2" runat="server">
                   
                <div id="sds" class="bg-success">
                        <p class="bg-info" >
                            <strong>Desempeño 02: XXXXXXXX</strong></p>
                </div>
                <div id="sds1" class="as">
                        <p style="background-color: #F5F5F5" >
                            
                            <strong>Aspectos 1:   ......</strong> <br />
                            <strong>Aspectos 2:   ......</strong> <br />
                            
                        </p>
                </div>                <br /> 
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
            <asp:View ID="View3" runat="server">
           <div id="sds" class="bg-success">
                        <p class="bg-info" >
                            <strong>Desempeño 03: YYYYYYYY</strong><br />
      

                        </p>
                </div>
                <div id="sds1" class="as">
                        <p style="background-color: #F5F5F5" >
                            
                            <strong>Aspectos 1:   ......</strong> <br />
                            <strong>Aspectos 2:   ......</strong> <br />
                            
                        </p>
                </div>                <br /> 
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
            <asp:View ID="View4" runat="server">
                 <div id="sds" class="bg-success">
                        <p class="bg-info" >
                            <strong>Desempeño 04: </strong> <span style="font-weight: bold">ZZZZZZZZZ</span><br />
      

                        </p>
                </div>
                <div id="sds1" class="as">
                        <p style="background-color: #F5F5F5" >
                            
                            <strong>Aspectos 1:   ......</strong> <br />
                            <strong>Aspectos 2:   ......</strong> <br />
                            
                        </p>
                </div>                <br /> 
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
            <asp:View ID="View5" runat="server">
               <div id="sds" class="bg-success">
                        <p class="bg-info" >
                            <strong>Desempeño 05:&nbsp; XXXXXXXX</strong></p>
                </div>
                <div id="sds1" class="as">
                        <p style="background-color: #F5F5F5" >
                            
                            <strong>Aspectos 1:   ......</strong> <br />
                            <strong>Aspectos 2:   ......</strong> <br />
                            
                        </p>
                </div>                <br /> 
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
            <asp:View ID="View6" runat="server">
               <div id="sds" class="bg-success">
                        <p class="bg-info" >
                            <strong>Desempeño 06: </strong> <span style="font-weight: bold">YYYYYYYY</span><br />
      

                        </p>
                </div>
                <div id="sds1" class="as">
                        <p style="background-color: #F5F5F5" >
                            
                            <strong>Aspectos 1:   ......</strong> <br />
                            <strong>Aspectos 2:   ......</strong> <br />
                            
                        </p>
                </div>                <br /> 
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
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

</asp:Content>
