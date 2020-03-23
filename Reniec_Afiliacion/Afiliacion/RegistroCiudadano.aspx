<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroCiudadano.aspx.cs" Inherits="Reniec_Afiliacion.Afiliacion.RegistroCiudadano" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--<link href="../Content/bootstrap.min.css" rel="stylesheet" />--%>


    <link href="../Style/CssRegistro.css" rel="stylesheet" />

    <br />
    <br />


    <div class="row">
        <div class="col-md-12 text-center">
            <div class="form-group">
                <label>Consulta Dni</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtDni2" placeholder="Ingrese dni para completar los datos y verificar la existencia del mismo." MaxLength="8" />
            </div>

        </div>
        <div class="col-md-12 text-center">
            <asp:Button Text="Consulta" runat="server" ID="btnConsultaReniec" CssClass="btn btn-success" OnClick="btnConsultaReniec_Click" />
            <asp:Button Text="Limpiar" runat="server" ID="btnLimpiar" CssClass="btn btn-danger" OnClick="btnLimpiar_Click" />
            <asp:Button Text="Registrar" runat="server" ID="btnImprimir" CssClass="btn btn-primary" Enabled="false" OnClick="btnImprimir_Click" />
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblMessage" Text="" runat="server" Font-Bold="true" Font-Size="Large" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>


    <br />

    <div class="row">
        <div class="col-md-9">
            <div class="form-group">
                <h2><strong style="margin-left: 210px">FICHA DE AFILIACIÓN</strong></h2>
            </div>
        </div>
        <div class="col-md-3">
            <div class="input-group">
                <h4><strong>Ficha N°</strong></h4>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtNroFicha" runat="server" CssClass="form-control" Enabled="false" Width="255" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-9 text-center">
            <div class="jumbotron">
                <h1 style="font-size: 45px;">PP000086 - HACER PAÍS</h1>
            </div>
        </div>
        <div class="col-md-3">
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="card">


                        <img class="card-img-top" src="~/Img/Afiliacion/ImagenPredeterminada.png" id="imgUser" runat="server" height="200" width="210" />
                        <asp:FileUpload ID="fileUplodImg" runat="server" CssClass="btn btn-success" Style="display: none;" onchange="ImagePreview(this);" />
                        <input type="button" class="btn btn-primary mt-1" value="Subir foto" onclick="showBrowseDialog()" runat="server" id="btnFile" />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">
            <div class="form-group">

                <h5 style="margin-top: 0px">Alcance de la organización política:<br />
                </h5>

                <div class="input-group">
                    <label>Nacional:</label>
                    <div class="col-md-2">
                        <asp:UpdatePanel runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="drowLisNacional" runat="server" CssClass="form-control" Width="130">
                                    <asp:ListItem Value="1">SI</asp:ListItem>
                                </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <strong>Región( ) </strong>Región: 
                <asp:TextBox ID="txtDesRegion" runat="server" CssClass="form-control" Width="340" placeholder="Ingrese región" Enabled="false" Text="" /><br />
                        <small>(Solo llenar en caso de movimientos regionales)</small>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <h4><strong>FECHA DE AFILIACIÓN:</strong></h4>
            </div>
        </div>

        <div class="col-md-2 text-left">
            <div class="form-group" style="margin-left: -80px; margin-top: -5px">
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtFechaAfiliacion" runat="server" CssClass="form-control" TextMode="Date" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="col-md-2 text-left">
            <h5>(Obligatorio)</h5>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group text-justify">
                <p>
                    Por medio del presente manifiesto mi decisión de <strong>AFILIARME</strong> a la organización política,comprometiéndome a cumplir
                    con su estatuto y demás normas internas.En fe de lo cual firmo el presente documento:
                </p>
            </div>
        </div>
    </div>


    <br />

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <h4><strong>DATOS PERSONALES</strong></h4>
            </div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-4">
            <div class="form-group">
                <label>Apellido Paterno</label>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtApellidoPaterno" runat="server" CssClass="form-control" placeholder="Ingrese apellido Paterno" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label>Apellido Materno</label>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtApellidoMaterno" runat="server" CssClass="form-control" placeholder="Ingrese apellido Materno" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label>Nombres</label>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" placeholder="Ingrese Nombres" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-4">
            <div class="form-group">
                <label>Dni</label>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Ingrese Dni" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label>Fecha de Nacimiento</label>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="cboFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date" />
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div class="col-md-2" style="margin: 0">
                <div class="form-group">
                    <label>Estado Civil</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:DropDownList runat="server" ID="drowListEstadoCivil" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem Value="0" Text="Seleccione" />
                                <asp:ListItem Value="1" Text="Soltero(a)" />
                                <asp:ListItem Value="2" Text="Casado(a)" />
                                <asp:ListItem Value="3" Text="Viudo(a)" />
                                <asp:ListItem Value="4" Text="Divorciado(a)" />
                                <asp:ListItem Value="5" Text="Conviviente(a)" />
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

            <div class="col-md-2">
                <div class="form-group">
                    <label>Sexo</label><br />
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:DropDownList runat="server" ID="drowListSexo" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem Value="0" Text="Seleccione" />
                                <asp:ListItem Value="1" Text="Masculino" />
                                <asp:ListItem Value="2" Text="Femenino" />
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Lugar de Nacimiento</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtLugarNacimiento" runat="server" CssClass="form-control text-ancho" placeholder="Ingrese lugar de nacimiento" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <h4><strong>DOMICILIO ACTUAL</strong></h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Región</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="cboRegion" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="cboRegion_SelectedIndexChanged">
                                <asp:ListItem Value="0">[Seleccionar]</asp:ListItem>
                            </asp:DropDownList>
                            <%--<asp:TextBox ID="txtRegion" runat="server" CssClass="form-control" placeholder="Ingrese region" />--%>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label>Provincia</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <%--<asp:TextBox ID="txtProvincia" runat="server" CssClass="form-control" placeholder="Ingrese provincia" />--%>
                            <asp:DropDownList ID="cboProvincia" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="cboProvincia_SelectedIndexChanged">
                                <asp:ListItem Value="0">[Seleccionar]</asp:ListItem>
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label>Distrito</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <%--<asp:TextBox ID="txtDistrito" runat="server" CssClass="form-control" placeholder="Ingrese distrito" />--%>
                            <asp:DropDownList ID="cboDistrito" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem Value="0">[Seleccionar]</asp:ListItem>
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-10">
                <div class="form-group">
                    <label>Avenida / Calle / Jirón</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtAveCalleJiron" runat="server" CssClass="form-control" placeholder="Ingrese avenida,calle y jirón" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Número</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control" placeholder="Ingrese número" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-10">
                <div class="form-group">
                    <label>Urbanización / Sector / Caserio</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtUrbaSectorCaserio" runat="server" CssClass="form-control" placeholder="Ingrese urbanización,sector y caserio" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Teléfono</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Ingrese teléfono" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Correo electrónico</label>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingrese correo eletrónico" TextMode="Email" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <asp:Button Text="Registrar" runat="server" ID="btnImprimir2" CssClass="btn btn-primary" Enabled="false" OnClick="btnImprimir_Click" />
                </div>
            </div>
        </div>
        
    </div>

    <script src="../bootstrap/js/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>

    <script type="text/javascript">

        function showBrowseDialog() {
            var fileuploadctrl = document.getElementById('<%=fileUplodImg.ClientID%>');
            fileuploadctrl.click();
        }

        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('img').prop('src', e.target.result)
                        .width(255)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
</asp:Content>
