<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="controlpanel.aspx.cs" Inherits="Evaluacion.WEB.EAdmin.controlpanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <link href="../Style/CssControlPanel.css" rel="stylesheet" />
    <br />

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="form-group">
                <h2>PANEL DE CONTROL DEL ADMINISTRADOR</h2>
            </div>
        </div>
    </div>

    <br />
    <br />
    
    <div class="row">
        <div class="col-md-4 text-center">
            <div class="form-group">
                <a type="button" class="btn btn-primary"  id="NewButton" href="/EdigitadorAlertas/Alertas.aspx">
                    Reporte de Evaluaciones <%--<span class="badge badge-light">0</span>--%>
                </a>
            </div>
        </div>
        <div class="col-md-4 text-center">
            <div class="form-group">
                 <a type="button" class="btn btn-primary"  id="NewButton0" href="/EdigitadorListado/Default.aspx">
                    Reporte de Digitacion <%--<span class="badge badge-light">0</span>--%>
                </a>
            </div>
        </div>
        <div class="col-md-4 text-center">
            <div class="form-group">
                <a type="button" class="btn btn-primary" id="NewButton1" href="RegistrarUsuario.aspx" >
                    Crear Usuarios <%--<span class="badge badge-light">0</span>--%>
                </a>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-4 text-center">
            <div class="form-group">
                <a type ="button" class="btn btn-danger" id="btnEvaluacionDistinta" href="../EdigitadorAlertas/CalificacionesDistintas.aspx" title="Cantidad de evaluciones distintas">
                    Evaluaciones distintas <%--<span class="badge badge-light" runat="server" id="countCalificacion"></span>--%>
                </a>
            </div>
        </div>

        <%--<div class="col-md-4 text-center">
            <div class="form-group">
                <a type ="button" class="btn btn-danger" id="btnEvaluacionFinalizada" href="../EdigitadorAlertas/CalificacionFinalizada.aspx" title="Cantidad de evaluciones distintas">
                    Evaluaciones finalizadas <span class="badge badge-light" runat="server" id="countFinalizada"></span>
                </a>
            </div>
        </div>--%>
    </div>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
