<%@ Page Title="Calificación distinta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalificacionesDistintas.aspx.cs" Inherits="Evaluacion.WEB.EdigitadorAlertas.CalificacionesDistintas" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../Style/CssCalificaciones.css" rel="stylesheet" />

    <br />
    <br />

    <!--prueba-->

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="form-group">
                <h1>Calificaciones distintas</h1>
            </div>
        </div>
    </div>


    <br />

    <div class="row">
        <div class="col-md-6 text-left">
            <div class="form-group">
                <button id="btnExportar" class="btn btn-success btn-sm" onclick="fnExcelReport();">Exportar</button>
            </div>
        </div>
        <div class="col-md-6 text-right">
            <div class="form-group">
                <asp:Button ID="btnUpdate" runat="server" class="btn btn-info btn-sm" Text="Actulizar" Font-Bold="True" Style="font-size: small" OnClick="btnUpdate_Click" Visible="false"/>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <table class="table-bordered table-hover" id="tblCalificacionDistinta">

                <div runat="server" id="tblEncabezado">

                    <!--Encabezado 1-->
                    <div>
                        <tr class="encabezado">

                            <!--columnas-->
                            <td style="width: 50px; height: 40px"></td>
                            <td style="width: 150px"></td>
                            <td style="width: 80px"></td>
                            <td colspan="2" style="width: 200px; font-weight: 700" class="text-white">D1</td>
                            <td colspan="2" style="width: 200px; font-weight: 700" class="text-white">D2</td>
                            <td colspan="2" style="width: 200px; font-weight: 700" class="text-white">D3</td>
                            <td colspan="2" style="width: 200px; font-weight: 700" class="text-white">D4</td>
                            <td colspan="2" style="width: 200px; font-weight: 700" class="text-white">D5</td>
                            <!--columnas-->

                        </tr>
                    </div>

                    <!--Encabezado 1-->

                    <!--Encabezado 2-->
                    <tr>
                        <td class="bg-warning">N°</td>
                        <!--numero-->
                        <td class="bg-warning">Docente</td>
                        <!--docente-->
                        <td class="bg-warning">Sesión</td>
                        <!--sesion-->

                        <th class="bg-warning"></th>
                        <!--D1-->
                        <th class="bg-warning"></th>
                        <!--D1-->

                        <th class="bg-warning"></th>
                        <!--D2-->
                        <th class="bg-warning"></th>
                        <!--D2-->

                        <th class="bg-warning"></th>
                        <!--D3-->
                        <th class="bg-warning"></th>
                        <!--D3-->

                        <th class="bg-warning"></th>
                        <!--D4-->
                        <th class="bg-warning"></th>
                        <!--D4-->

                        <th class="bg-warning"></th>
                        <!--D5-->
                        <th class="bg-warning"></th>
                        <!--D5-->

                    </tr>

                </div>
            </table>
        </div>
    </div>



    <!--prueba-->

    <br />
    <br />

    <script src="../Scripts/jquery-3.3.1.js"></script>

     <script type="text/javascript">

        function fnExcelReport() {
            var tab_text = "<table border='2px'><tr bgcolor='#87AFC6'>";
            var textRange; var j = 0;
            tab = document.getElementById('tblCalificacionDistinta'); // id of table

            for (j = 0 ; j < tab.rows.length ; j++) {
                tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
            }

            tab_text = tab_text + "</table>";
            tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
            tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
            tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

            var ua = window.navigator.userAgent;
            var msie = ua.indexOf("MSIE");

            if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
            {
                txtArea1.document.open("txt/html", "replace");
                txtArea1.document.write(tab_text);
                txtArea1.document.close();
                txtArea1.focus();
                sa = txtArea1.document.execCommand("SaveAs", true, "Say Thanks to Sumit.xls");
            }
            else                 //other browser not tested on IE 11
                sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

            return (sa);
        }
    </script>

</asp:Content>
