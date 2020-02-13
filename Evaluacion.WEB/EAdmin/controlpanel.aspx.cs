using Evaluacion.BOL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.EAdmin
{
    public partial class controlpanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.GetCalificacionDistinta();
            //this.GetEvaluacionFinalizada();
        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("~/EdigitadorAlertas/Alertas.aspx");
        }

        protected void NewButton0_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("~/EdigitadorListado/Default.aspx");
        }

        protected void NewButton1_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("RegistrarUsuario.aspx");
        }

        private void GetCalificacionDistinta()
        {
            int contadorEvaluacion = 0;
            int contadorReporte = 0;
            int contadorRow = 0;
            int autoIncremento = 0;

            DataTable dtCalificacionReporte = new DataTable();

            dtCalificacionReporte.Columns.Add("Numero");
            dtCalificacionReporte.Columns.Add("Docente");
            dtCalificacionReporte.Columns.Add("Sesion");


            //D1
            dtCalificacionReporte.Columns.Add("Evaluador1");
            dtCalificacionReporte.Columns.Add("Evaluador2");

            //D1
            dtCalificacionReporte.Columns.Add("O1_D1");
            dtCalificacionReporte.Columns.Add("O2_D1");

            //D2
            dtCalificacionReporte.Columns.Add("O1_D2");
            dtCalificacionReporte.Columns.Add("O2_D2");

            //D3
            dtCalificacionReporte.Columns.Add("O1_D3");
            dtCalificacionReporte.Columns.Add("O2_D3");

            //D4
            dtCalificacionReporte.Columns.Add("O1_D4");
            dtCalificacionReporte.Columns.Add("O2_D4");

            //D5
            dtCalificacionReporte.Columns.Add("O1_D5");
            dtCalificacionReporte.Columns.Add("O2_D5");

            DataTable dtCalificacion = null;
            DataRow row = null;
            dtCalificacion = EvaluacionVideos.GetCalifcacionDistinta();

            Calificacion calificacion = new Calificacion();
            Calificacion calificacion2 = new Calificacion();

            foreach (DataRow item in dtCalificacion.Rows)
            {
                contadorEvaluacion++;

                if (contadorEvaluacion == 1)
                {
                    calificacion.IdEvaluacion = Convert.ToInt32(item["id"].ToString());
                    calificacion.IdVideo = item["videoID"].ToString();
                    calificacion.Docente = item["Docente"].ToString();
                    calificacion.Sesion = item["Sesion"].ToString();
                    calificacion.Evaluador = item["Evaluador"].ToString();
                    calificacion.D1 = item["r1"].ToString();
                    calificacion.D2 = item["r2"].ToString();
                    calificacion.D3 = item["r3"].ToString();
                    calificacion.D4 = item["r4"].ToString();
                    calificacion.D5 = item["r5"].ToString();
                }
                else
                {
                    calificacion2.IdEvaluacion = Convert.ToInt32(item["id"].ToString());
                    calificacion2.IdVideo = item["videoID"].ToString();
                    calificacion2.Docente = item["Docente"].ToString();
                    calificacion2.Sesion = item["Sesion"].ToString();
                    calificacion2.Evaluador = item["Evaluador"].ToString();
                    calificacion2.D1 = item["r1"].ToString();
                    calificacion2.D2 = item["r2"].ToString();
                    calificacion2.D3 = item["r3"].ToString();
                    calificacion2.D4 = item["r4"].ToString();
                    calificacion2.D5 = item["r5"].ToString();
                }

                if (contadorEvaluacion == 2)
                {
                    //valida la primera evaluacion de ambas calificaciones Evaluador1 - Evaluador2
                    if (calificacion.IdVideo == calificacion2.IdVideo)
                    {
                        if (calificacion.D1 != calificacion2.D1)
                        {
                            contadorReporte++;
                            contadorRow++;
                            contadorEvaluacion = 0;
                        }
                        else if (calificacion.D2 != calificacion2.D2)
                        {
                            contadorReporte++;
                            contadorRow++;
                            contadorEvaluacion = 0;
                        }
                        else if (calificacion.D3 != calificacion2.D3)
                        {
                            contadorReporte++;
                            contadorRow++;
                            contadorEvaluacion = 0;
                        }
                        else if (calificacion.D4 != calificacion2.D4)
                        {
                            contadorReporte++;
                            contadorRow++;
                            contadorEvaluacion = 0;
                        }
                        else if (calificacion.D5 != calificacion2.D5)
                        {
                            contadorReporte++;
                            contadorRow++;
                            contadorEvaluacion = 0;
                        }
                        else
                        {
                            contadorEvaluacion = 0;
                        }
                    }
                    else
                    {
                        contadorEvaluacion = 0;
                    }
                }
                
                if (contadorReporte != 0)
                {
                    row = dtCalificacionReporte.NewRow();
                    autoIncremento++;

                    int e = dtCalificacionReporte.Rows.Count;

                    row["Numero"] = autoIncremento.ToString();
                    row["Docente"] = calificacion.Docente;
                    row["Sesion"] = calificacion.Sesion;


                    row["Evaluador1"] = calificacion.Evaluador;
                    row["Evaluador2"] = calificacion2.Evaluador;

                    //D1 
                    //EJEMPLO O1 = CALIFICACION 1 - O2 = CALIFICACION 2
                    row["O1_D1"] = calificacion.D1;
                    row["O2_D1"] = calificacion2.D1;


                    //D2
                    row["O1_D2"] = calificacion.D2;
                    row["O2_D2"] = calificacion2.D2;

                    //D3
                    row["O1_D3"] = calificacion.D3;
                    row["O2_D3"] = calificacion2.D3;

                    //D4
                    row["O1_D4"] = calificacion.D4;
                    row["O2_D4"] = calificacion2.D4;

                    //D5
                    row["O1_D5"] = calificacion.D5;
                    row["O2_D5"] = calificacion2.D5;

                    dtCalificacionReporte.Rows.Add(row);

                    contadorReporte = 0;
                }

                
            }

            DataTable dtUnica = null;
            //DataRow rows = dtCalificacionReporte.NewRow();
            dtUnica = EvaluacionVideos.GetCalifcacionUnica();

            //row = dtCalificacion.NewRow();

            foreach (DataRow rowUnica in dtUnica.Rows)
            {
                contadorRow++;
                autoIncremento++;
                row = dtCalificacionReporte.NewRow();

                row["Numero"] = autoIncremento.ToString();
                row["Docente"] = rowUnica["Docente"].ToString();
                row["Sesion"] = rowUnica["Sesion"].ToString();


                row["Evaluador1"] = rowUnica["evaluador"].ToString();
                row["Evaluador2"] = "";

                //D1 
                //EJEMPLO O1 = CALIFICACION 1 - O2 = CALIFICACION 2
                row["O1_D1"] = rowUnica["r1"].ToString();
                row["O2_D1"] = "";


                //D2
                row["O1_D2"] = rowUnica["r2"].ToString();
                row["O2_D2"] = "";

                //D3
                row["O1_D3"] = rowUnica["r3"].ToString();
                row["O2_D3"] = "";

                //D4
                row["O1_D4"] = rowUnica["r4"].ToString();
                row["O2_D4"] = "";

                //D5
                row["O1_D5"] = rowUnica["r5"].ToString();
                row["O2_D5"] = "";

                dtCalificacionReporte.Rows.Add(row);
                contadorReporte = 0;
                
            }
          

            MetGlo.dtCalificacion = dtCalificacionReporte;
            //this.countCalificacion.InnerText = contadorRow.ToString();
        }

        private void GetEvaluacionFinalizada()
        {
            DataTable dtEvaluacionFinalizada = null;
            dtEvaluacionFinalizada = EvaluacionVideos.GetEvaluacionFinalizada(1);

            //this.countFinalizada.InnerText = dtEvaluacionFinalizada.Rows.Count.ToString();
        }
    }
}