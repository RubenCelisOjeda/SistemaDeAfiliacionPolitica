<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Reniec_Afiliacion._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <div class="container text-center bg-dark p-3">
        <h1 class="text-white">Bienvenido a <strong class="text-warning">HACER PAÍS</strong> PLATAFORMA DE AFILIACIÓN</h1>
        <br />
        <p><a href="Afiliacion/RegistroCiudadano.aspx" class="btn btn-primary btn-lg">Nuevo Registro </a></p>
    </div>

    <br />

    <div class="container p-0">
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100 h-50" src="Img/HacerPais1.jpg" alt="First slide">
                </div>
            </div>
        </div>
    </div>

    <script src="../bootstrap/js/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    

</asp:Content>
