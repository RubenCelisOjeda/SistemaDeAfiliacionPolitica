using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.EdigitadorAlertas
{
    public partial class CalificacionesDistintas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.GetCalificacionesDistintas();
        }

        private void GetCalificacionesDistintas()
        {
            StringBuilder html = new StringBuilder();

            DataTable dtCalificacion = new DataTable();
            dtCalificacion = MetGlo.dtCalificacion;

            string _O1_D1 = ""; string _O2_D1 = "";
            string _O1_D2 = ""; string _O2_D2 = "";
            string _O1_D3 = ""; string _O2_D3 = ""; 
            string _O2_D4 = ""; string _O1_D4 = "";
            string _O1_D5 = ""; string _O2_D5 = "";

            foreach (DataRow item in dtCalificacion.Rows)
            {
                string enumeracion = item["Numero"].ToString();
                string docente = item["Docente"].ToString();
                string sesion = item["Sesion"].ToString();


                string evaluador1 = item["Evaluador1"].ToString();
                string evaluador2 = item["Evaluador2"].ToString();

                

                string O1_D1 = item["O1_D1"].ToString();
                string O2_D1 = item["O2_D1"].ToString();
                if (string.IsNullOrEmpty(O1_D1)) O1_D1 = "Sin Nota";
                if (string.IsNullOrEmpty(O2_D1)) O2_D1 = "Sin Nota";

                string O1_D2 = item["O1_D2"].ToString();
                string O2_D2 = item["O2_D2"].ToString();
                if (string.IsNullOrEmpty(O1_D2)) O1_D2 = "Sin Nota";
                if (string.IsNullOrEmpty(O2_D2)) O2_D2 = "Sin Nota";

                string O1_D3 = item["O1_D3"].ToString();
                string O2_D3 = item["O2_D3"].ToString();
                if (string.IsNullOrEmpty(O1_D3)) O1_D3 = "Sin Nota";
                if (string.IsNullOrEmpty(O2_D3)) O2_D3 = "Sin Nota";

                string O1_D4 = item["O1_D4"].ToString();
                string O2_D4 = item["O2_D4"].ToString();
                if (string.IsNullOrEmpty(O1_D4)) O1_D4 = "Sin Nota";
                if (string.IsNullOrEmpty(O2_D4)) O2_D4 = "Sin Nota";

                string O1_D5 = item["O1_D5"].ToString();
                string O2_D5 = item["O2_D5"].ToString();
                if (string.IsNullOrEmpty(O1_D5)) O1_D5 = "Sin Nota";
                if (string.IsNullOrEmpty(O2_D5)) O2_D5 = "Sin Nota";

                if (O1_D1 != O2_D1)
                {
                    _O1_D1 = "'background-color:#f43030'";
                    _O2_D1 = "'background-color:#f43030'";
                }
                else
                {
                    _O1_D1 = "'background-color:#258231'";
                    _O2_D1 = "'background-color:#258231'";
                }

                if (O1_D2 != O2_D2)
                {
                    _O1_D2 = "'background-color:#f43030'";
                    _O2_D2 = "'background-color:#f43030'";
                }
                else
                {
                    _O1_D2 = "'background-color:#258231'";
                    _O2_D2 = "'background-color:#258231'";
                }

                if (O1_D3 != O2_D3)
                {
                    _O1_D3 = "'background-color:#f43030'";
                    _O2_D3 = "'background-color:#f43030'";
                }
                else
                {
                    _O1_D3 = "'background-color:#258231'";
                    _O2_D3 = "'background-color:#258231'";
                }

                if (O1_D4 != O2_D4)
                {
                    _O1_D4 = "'background-color:#f43030'";
                    _O2_D4 = "'background-color:#f43030'";
                }
                else
                {
                    _O1_D4 = "'background-color:#258231'";
                    _O2_D4 = "'background-color:#258231'";
                }

                if (O1_D5 != O2_D5)
                {
                    _O1_D5 = "'background-color:#f43030'";
                    _O2_D5 = "'background-color:#f43030'";
                }
                else
                {
                    _O1_D5 = "'background-color:#258231'";
                    _O2_D5 = "'background-color:#258231'";
                }

                if (O1_D1 == "Sin Nota")
                {
                    _O1_D1 = "'background-color:white'";
                    _O2_D1 = "'background-color:white'";
                }
                if (O2_D1 == "Sin Nota")
                {
                    _O2_D1 = "'background-color:white'";
                    _O1_D1 = "'background-color:white'";
                }

                if (O1_D2 == "Sin Nota")
                {
                    _O1_D2 = "'background-color:white'";
                    _O2_D2 = "'background-color:white'";
                }
                if (O2_D2 == "Sin Nota")
                {
                    _O1_D2 = "'background-color:white'";
                    _O2_D2 = "'background-color:white'";
                }

                if (O1_D3 == "Sin Nota")
                {
                    _O1_D3 = "'background-color:white'";
                    _O2_D3 = "'background-color:white'";
                }
                if (O2_D3 == "Sin Nota")
                {
                    _O1_D3 = "'background-color:white'";
                    _O2_D3 = "'background-color:white'";
                }

                if (O1_D4 == "Sin Nota")
                {
                    _O1_D4 = "'background-color:white'";
                    _O2_D4 = "'background-color:white'";
                }
                if (O2_D4 == "Sin Nota")
                {
                    _O1_D4 = "'background-color:white'";
                    _O2_D4 = "'background-color:white'";
                }

                if (O1_D5 == "Sin Nota")
                {
                    _O1_D5 = "'background-color:white'";
                    _O2_D5 = "'background-color:white'";
                }
                if (O2_D5 == "Sin Nota")
                {
                    _O1_D5 = "'background-color:white'";
                    _O2_D5 = "'background-color:white'";
                }

                HtmlElement trHtml = new HtmlElement();

                trHtml.InnerHtml =

                    "<tr style = 'height:50px;'>" +
                        "<td>" + enumeracion + "</td>" +
                        "<td>" + docente + "</td>" +
                        "<td>" + sesion + "</td>" +

                        "<th  style = " + _O1_D1 + "><a class = 'text-dark'>(" + evaluador1 + ")</a><br/>" + O1_D1 + "</th>" +
                        "<th  style = " + _O2_D1 + "><a class = 'text-dark'>(" + evaluador2 + ")</a><br/>" + O2_D1 + " </th>" +

                        "<th  style = " + _O1_D2 + "><a class = 'text-dark'>(" + evaluador1 + ")</a><br/>" + O1_D2 + " </th>" +
                        "<th  style = " + _O2_D2 + "><a class = 'text-dark'>(" + evaluador2 + ")</a><br/>" + O2_D2 + "</th>" +

                        "<th  style = " + _O1_D3 + "><a class = 'text-dark'>(" + evaluador1 + ")</a><br/>" + O1_D3 + "</th>" +
                        "<th  style = " + _O2_D3 + "><a class = 'text-dark'>(" + evaluador2 + ")</a><br/>" + O2_D3 + "</th>" +

                        "<th  style = " + _O1_D4 + "><a class = 'text-dark'>(" + evaluador1 + ")</a><br/>" + O1_D4 + "</th>" +
                        "<th  style = " + _O2_D4 + "><a class = 'text-dark'>(" + evaluador2 + ")</a><br/>" + O2_D4 + "</th>" +

                        "<th  style = " + _O1_D5 + "><a class = 'text-dark'>(" + evaluador1 + ")</a><br/>" + O1_D5 + "</th>" +
                        "<th  style = " + _O2_D5 + "><a class = 'text-dark'>(" + evaluador2 + ")</a><br/>" + O2_D5 + "</th>" +
                    "</tr>";
         

                this.tblEncabezado.Controls.Add(trHtml);
            }
        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            //this.RemoveRows();

            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            //sb.Append(@"$('.remover').remove();");
            sb.Append(@"$('table > tbody > tr').remove();");
            sb.Append(@"</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());

            //this.GetCalificacionesDistintas();
        }
    }
}