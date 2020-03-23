<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Reniec_Afiliacion.Admin.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <br />
    <div class="container">

        <div class="row">
             <div class="col-md-12">
                 <div class="form-group">
                     <asp:Label ID="lblMessage" Text="" runat="server" Font-Bold="true"/>
                 </div>
             </div>
        </div>

        <br />
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Usuario</label>
                    <asp:TextBox id="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese usuario"/>
                </div>

                <div class="form-group">
                    <label>Contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Ingrese contrasñea" TextMode="Password"/>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnIngresar" runat="server" CssClass="btn btn-success" Text="Ingresa" OnClick="btnIngresar_Click"/>
                </div>
            </div>
        </div>
    </div>
    <script src="../bootstrap/js/bootstrap.js"></script>

    <script src="../Scripts/jquery-3.3.1.js"></script>
</asp:Content>
