using System;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Text;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Evaluacion.BOL;
using System.Drawing;
using System.Data;
using Evaluacion.WEB.Reports.FileReportViewer;

namespace Evaluacion.WEB.Eevaluador
{
    public partial class frmRubricaOCEvaluadorEvaluacion : System.Web.UI.Page
    {

        string pDocente, isep, pEvaluador;
        string user = Membership.GetUser().ToString();

        ////////////////////////////////////////////////////////////////////////////////////////////////////
        /// Function:   Page_Load
        ///
        /// Summary:    Event handler. Called by Page for load events.
        ///
        /// Author: JOSUAREZ
        ///
        /// Date:   23/12/2019
        ///
        /// Parameters:
        /// sender -    Source of the event. 
        /// e -         Event information. 
        ////////////////////////////////////////////////////////////////////////////////////////////////////

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {
                throw;
            }

            if (!IsPostBack)
            {
                this.Button1.Visible = false;
                this.PanelEncabezado.Visible = false;

                this.btnEvaluar.Visible = false;
                this.btnFinalizar.Visible = false;
                this.pnlResumen.Visible = false;
                this.pnlCalificar.Visible = false;
                this.pnlListCalificacion.Visible = false;
            }
            else
            {
                this.PanelEncabezado.Visible = true;
            }

            pDocente = this.Request.QueryString["p"].ToString();
            isep = this.Request.QueryString["i"].ToString();
            pEvaluador = Membership.GetUser().UserName.ToString();

            dsvideosCargados.SelectParameters["evaluador"].DefaultValue = user;
        }

        private void GetDetailsVideo(int id)
        {
            DataTable dtVideo = new DataTable();
            dtVideo = EvaluacionVideos.GetDetailsVideo(id);

            if (dtVideo.Rows.Count > 0)
            {
                this._a1.Text = dtVideo.Rows[0]["a1"].ToString();
                this._a11.Text = dtVideo.Rows[0]["a11"].ToString();
                this._a2.Text = dtVideo.Rows[0]["a2"].ToString();
                this._a22.Text = dtVideo.Rows[0]["a22"].ToString();
                this._a3.Text = dtVideo.Rows[0]["a3"].ToString();
                this._a33.Text = dtVideo.Rows[0]["a33"].ToString();
                this._r1.Text = dtVideo.Rows[0]["r1"].ToString();
                this._a4.Text = dtVideo.Rows[0]["a4"].ToString();
                this._a44.Text = dtVideo.Rows[0]["a44"].ToString();
                this._r2.Text = dtVideo.Rows[0]["r2"].ToString();
                this._a6.Text = dtVideo.Rows[0]["a6"].ToString();
                this._a66.Text = dtVideo.Rows[0]["a66"].ToString();
                this._a7.Text = dtVideo.Rows[0]["a7"].ToString();
                this._a77.Text = dtVideo.Rows[0]["a77"].ToString();
                this._a8.Text = dtVideo.Rows[0]["a8"].ToString();
                this._a88.Text = dtVideo.Rows[0]["a88"].ToString();
                this._r3.Text = dtVideo.Rows[0]["r3"].ToString();
                this._a9.Text = dtVideo.Rows[0]["a9"].ToString();
                this._a99.Text = dtVideo.Rows[0]["a99"].ToString();
                this._a10.Text = dtVideo.Rows[0]["a10"].ToString();
                this._a1010.Text = dtVideo.Rows[0]["a1010"].ToString();
                this._aa11.Text = dtVideo.Rows[0]["aa11"].ToString();
                this._aa1111.Text = dtVideo.Rows[0]["aa1111"].ToString();
                this._r4.Text = dtVideo.Rows[0]["r4"].ToString();
                this._a12.Text = dtVideo.Rows[0]["a12"].ToString();
                this._a1212.Text = dtVideo.Rows[0]["a1212"].ToString();
                this._a13.Text = dtVideo.Rows[0]["a13"].ToString();
                this._a1313.Text = dtVideo.Rows[0]["a1313"].ToString();
                this._r5.Text = dtVideo.Rows[0]["r5"].ToString();
                this._a14.Text = dtVideo.Rows[0]["a14"].ToString();
                this._a1414.Text = dtVideo.Rows[0]["a1414"].ToString();
                this._a15.Text = dtVideo.Rows[0]["a15"].ToString();
                this._a1515.Text = dtVideo.Rows[0]["a1515"].ToString();
            }
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            DataTable dtVideo = new DataTable();
            dtVideo = EvaluacionVideos.GetVideo(lblVideoID.Text, user);

            if (dtVideo.Rows.Count > 0)
            {
                a1.Text = dtVideo.Rows[0]["a1"].ToString();
                a11.Text = dtVideo.Rows[0]["a11"].ToString();
                a2.Text = dtVideo.Rows[0]["a2"].ToString();
                a22.Text = dtVideo.Rows[0]["a22"].ToString();
                a3.Text = dtVideo.Rows[0]["a3"].ToString();
                a33.Text = dtVideo.Rows[0]["a33"].ToString();
                r1.SelectedValue = dtVideo.Rows[0]["r1"].ToString();
                r1_copy.SelectedValue = dtVideo.Rows[0]["r1Extra"].ToString();
                a4.Text = dtVideo.Rows[0]["a4"].ToString();
                a44.Text = dtVideo.Rows[0]["a44"].ToString();
                r2.SelectedValue = dtVideo.Rows[0]["r2"].ToString();
                r2_copy.SelectedValue = dtVideo.Rows[0]["r2Extra"].ToString();
                a6.Text = dtVideo.Rows[0]["a6"].ToString();
                a66.Text = dtVideo.Rows[0]["a66"].ToString();
                a7.Text = dtVideo.Rows[0]["a7"].ToString();
                a77.Text = dtVideo.Rows[0]["a77"].ToString();
                a8.Text = dtVideo.Rows[0]["a8"].ToString();
                a88.Text = dtVideo.Rows[0]["a88"].ToString();
                r3.SelectedValue = dtVideo.Rows[0]["r3"].ToString();
                r3_copy.SelectedValue = dtVideo.Rows[0]["r3Extra"].ToString();
                a9.Text = dtVideo.Rows[0]["a9"].ToString();
                a99.Text = dtVideo.Rows[0]["a99"].ToString();
                a10.Text = dtVideo.Rows[0]["a10"].ToString();
                a1010.Text = dtVideo.Rows[0]["a1010"].ToString();
                aa11.Text = dtVideo.Rows[0]["aa11"].ToString();
                aa1111.Text = dtVideo.Rows[0]["aa1111"].ToString();
                r4.SelectedValue = dtVideo.Rows[0]["r4"].ToString();
                r4_copy.SelectedValue = dtVideo.Rows[0]["r4Extra"].ToString();
                a12.Text = dtVideo.Rows[0]["a12"].ToString();
                a1212.Text = dtVideo.Rows[0]["a1212"].ToString();
                a13.Text = dtVideo.Rows[0]["a13"].ToString();
                a1313.Text = dtVideo.Rows[0]["a1313"].ToString();
                r5.SelectedValue = dtVideo.Rows[0]["r5"].ToString();
                r5_copy.SelectedValue = dtVideo.Rows[0]["r5Extra"].ToString();
                a14.SelectedValue = dtVideo.Rows[0]["a14"].ToString();
                a1414.Text = dtVideo.Rows[0]["a1414"].ToString();
                a15.SelectedValue = dtVideo.Rows[0]["a15"].ToString();
                a1515.Text = dtVideo.Rows[0]["a1515"].ToString();
            }
        }


        protected void btnReporte_Click(object sender, EventArgs e)
        {
            //int id = 0;
            //int idVideo = 0;
            //Button btnSelect = sender as Button;
            //GridViewRow gvr = btnSelect.NamingContainer as GridViewRow;

            //id = Convert.ToInt32(this.gvExportarTodo.DataKeys[gvr.RowIndex]["id"].ToString());
            //idVideo = Convert.ToInt32(this.gvExportarTodo.DataKeys[gvr.RowIndex]["videoID"].ToString());
            //this.Session["FechaEvaluacion"] = this.gvExportarTodo.DataKeys[gvr.RowIndex]["fechaCreacion"].ToString();
            //this.GetDetailsVideo(id);

            
            this.Response.Redirect("/Reports/PageReportViewer/RptEvaluacionVideos.aspx?p=" + this.lblVideoID.Text);
           
           
            //StringBuilder sb = new StringBuilder();
            //sb.Append(@"<script language='javascript'>");

            //sb.Append(@" var print = window.open(this);");
            //sb.Append(@" var id = document.getElementById('myModal');");
            //sb.Append(@" print.document.write(id.innerHTML.replace('Imprimir ahora'));");
            //sb.Append(@" print.document.close();");
            //sb.Append(@" print.print();");
            //sb.Append(@" pri.close();");

            //sb.Append(@"</script>");
            //ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());



        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Data" + DateTime.Now + ".xls";

            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gvExportarTodo.GridLines = GridLines.Both;
            gvExportarTodo.HeaderStyle.Font.Bold = true;
            gvExportarTodo.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }


        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }

        void limpiarCampos()
        {
            //prueba ruben
            //txtficharegistro.Text = "";
            a1.Text = "";
            a11.Text = "";
            a2.Text = "";
            a22.Text = "";
            a3.Text = "";
            a33.Text = "";

            a4.Text = "";
            a44.Text = "";

            a6.Text = "";
            a66.Text = "";
            a7.Text = "";
            a77.Text = "";
            a8.Text = "";
            a88.Text = "";

            a9.Text = "";
            a99.Text = "";
            a10.Text = "";
            a1010.Text = "";
            aa11.Text = "";
            aa1111.Text = "";

            a12.Text = "";
            a1212.Text = "";
            a13.Text = "";
            a1313.Text = "";


            a1414.Text = "";

            a1515.Text = "";

            this.r1.SelectedValue = "";
            this.r2.SelectedValue = "";
            this.r3.SelectedValue = "";
            this.r4.SelectedValue = "";
            this.r5.SelectedValue = "";
            //this.a14.SelectedValue = "";
            //this.a15.SelectedValue = "";
        }

        void bloquearCampos()
        {

            //txtficharegistro.Text = "";
            a1.Enabled = false;
            a11.Enabled = false;
            a2.Enabled = false;
            a22.Enabled = false;
            a3.Enabled = false;
            a33.Enabled = false;

            a4.Enabled = false;
            a44.Enabled = false;

            a6.Enabled = false;
            a66.Enabled = false;
            a7.Enabled = false;
            a77.Enabled = false;
            a8.Enabled = false;
            a88.Enabled = false;

            a9.Enabled = false;
            a99.Enabled = false;
            a10.Enabled = false;
            a1010.Enabled = false;
            aa11.Enabled = false;
            aa1111.Enabled = false;

            a12.Enabled = false;
            a1212.Enabled = false;
            a13.Enabled = false;
            a1313.Enabled = false;

            a14.Enabled = false;
            a15.Enabled = false;
            a1414.Enabled = false;

            a1515.Enabled = false;
        }
        void desbloquearCampos()
        {
            //txtficharegistro.Text = "";
            a1.Enabled = true;
            a11.Enabled = true;
            a2.Enabled = true;
            a22.Enabled = true;
            a3.Enabled = true;
            a33.Enabled = true;

            a4.Enabled = true;
            a44.Enabled = true;
            a6.Enabled = true;
            a66.Enabled = true;
            a7.Enabled = true;
            a77.Enabled = true;
            a8.Enabled = true;
            a88.Enabled = true;

            a9.Enabled = true;
            a99.Enabled = true;
            a10.Enabled = true;
            a1010.Enabled = true;
            aa11.Enabled = true;
            aa1111.Enabled = true;
            a12.Enabled = true;
            a1212.Enabled = true;
            a13.Enabled = true;
            a1313.Enabled = true;
            a1414.Enabled = true;
            a1515.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            Page page = new Page();
            HtmlForm form = new HtmlForm();
            gvExportarTodo.EnableViewState = false;
            page.EnableEventValidation = false;
            page.DesignerInitialize();
            page.Controls.Add(form);
            form.Controls.Add(gvExportarTodo);
            page.RenderControl(htw);
            Response.Clear();
            Response.Buffer = true;
            //Response.ContentType = "application/vnd.ms-excel";
            this.Response.ContentType = "text/plain";
            Response.AddHeader("Content-Disposition", "attachment;filename=data.xls");
            Response.Charset = "UTF-8";
            Response.ContentEncoding = Encoding.Default;
            Response.Write(sb.ToString());
            Response.End();

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string r1Extra = "";
            string r2Extra = "";
            string r3Extra = "";
            string r4Extra = "";
            string r5Extra = "";

            if (this.Session["extra"].ToString() == "si")
            {
                r1Extra = this.r1_copy.SelectedValue.ToString();
                r2Extra = this.r2_copy.SelectedValue.ToString();
                r3Extra = this.r3_copy.SelectedValue.ToString();
                r4Extra = this.r4_copy.SelectedValue.ToString();
                r5Extra = this.r1_copy.SelectedValue.ToString();
            }
            else
            {
                r1Extra = "";
                r2Extra = "";
                r3Extra = "";
                r4Extra = "";
                r5Extra = "";
            }

            try
            {
                EvaluacionVideos.actualizar(

                  Server.HtmlEncode(""),
                    a1.Text,
                    a11.Text,
                    a2.Text,
                    a22.Text,
                    a3.Text,
                    a33.Text,
                    r1.SelectedValue.ToString(),
                    r1Extra,
                    a4.Text,
                    a44.Text,
                    "",
                    "",
                    r2.SelectedValue.ToString(),
                    r2Extra,
                    a6.Text,
                    a66.Text,
                    a7.Text,
                    a77.Text,
                    a8.Text,
                    a88.Text,
                    r3.SelectedItem.Value.ToString(),
                    r3Extra,
                    a9.Text,
                    a99.Text,
                    a10.Text,
                    a1010.Text,
                    aa11.Text,
                    aa1111.Text,
                    r4.SelectedValue.ToString(),
                    r4Extra,
                    a12.Text,
                    a1212.Text,
                    a13.Text,
                    a1313.Text,
                    r5.SelectedItem.Value.ToString(),
                    r5Extra,
                    a14.SelectedItem.Value.ToString(),
                    a1414.Text,
                    a15.SelectedItem.Value.ToString(),
                    a1515.Text,
                    Request.QueryString["p"],
                    lblUrl.Text,
                    lblVideoID.Text,
                    pEvaluador,
                    0
                                   );

                dsvideosCargados.DataBind();
                dsPersona.DataBind();
                exportarTodo.DataBind();
                GridView1.DataBind();
                gvExportarTodo.DataBind();
                lblEstado.Text = "EVALUACIÓN ACTUALIZADA: " + DateTime.Now.ToString();
            }
            catch (Exception EX)
            {
                lblEstado.Text = "ERROR EN EVALUACION!";
            }
        }

       
        private void Add()
        {
            object EnvaluacionVideos = new EvaluacionVideos();
            EvaluacionVideos.Insertar(
                "",
                a1.Text,
                a11.Text,
                a2.Text,
                a22.Text,
                a3.Text,
                a33.Text,
                r1.SelectedValue.ToString(),
                this.r1_copy.SelectedValue.ToString(),
                a4.Text,
                a44.Text,
                "",
                "",
                r2.SelectedValue.ToString(),
                this.r2_copy.SelectedValue.ToString(),
                a6.Text,
                a66.Text,
                a7.Text,
                a77.Text,
                a8.Text,
                a88.Text,
                r3.SelectedItem.Value.ToString(),
                this.r3_copy.SelectedValue.ToString(),
                a9.Text,
                a99.Text,
                a10.Text,
                a1010.Text,
                aa11.Text,
                aa1111.Text,
                r4.SelectedValue.ToString(),
                this.r4_copy.SelectedValue.ToString(),
                a12.Text,
                a1212.Text,
                a13.Text,
                a1313.Text,
                r5.SelectedItem.Value.ToString(),
                this.r5_copy.SelectedValue.ToString(),
                a14.SelectedItem.Value.ToString(),
                a1414.Text,
                a15.SelectedItem.Value.ToString(),
                a1515.Text,
                Request.QueryString["p"],
                lblUrl.Text,
                lblVideoID.Text,
                pEvaluador
            );
        }

        private void Update()
        {
            string r1Extra = "";
            string r2Extra = "";
            string r3Extra = "";
            string r4Extra = "";
            string r5Extra = "";


            if (!String.IsNullOrEmpty(lblVideoID.Text))
            {
                this.Session["videoId"] = lblVideoID.Text;
            }

            EvaluacionVideos.actualizarTerminar(

                "",
                a1.Text,
                a11.Text,
                a2.Text,
                a22.Text,
                a3.Text,
                a33.Text,
                r1.SelectedValue.ToString(),
                 r1_copy.SelectedValue.ToString(),
                a4.Text,
                a44.Text,
                "",
                "",
                r2.SelectedValue.ToString(),
                 r2_copy.SelectedValue.ToString(),
                a6.Text,
                a66.Text,
                a7.Text,
                a77.Text,
                a8.Text,
                a88.Text,
                r3.SelectedItem.Value.ToString(),
                r3_copy.SelectedValue.ToString(),
                a9.Text,
                a99.Text,
                a10.Text,
                a1010.Text,
                aa11.Text,
                aa1111.Text,
                r4.SelectedValue.ToString(),
                r4_copy.SelectedValue.ToString(),
                a12.Text,
                a1212.Text,
                a13.Text,
                a1313.Text,
                r5.SelectedItem.Value.ToString(),
                 r5_copy.SelectedValue.ToString(),
                a14.SelectedItem.Value.ToString(),
                a1414.Text,
                a15.SelectedItem.Value.ToString(),
                a1515.Text,
                Request.QueryString["p"],
                lblUrl.Text,
                lblVideoID.Text,
                pEvaluador
               );
        }

        private bool ValidarTextos()
        {
            bool IsValid = false;
            if (string.IsNullOrEmpty(this.a1.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a11.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a2.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a22.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a3.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a33.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.r1.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a4.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a44.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.r2.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a6.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a66.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a7.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a77.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a8.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a88.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.r3.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a9.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a99.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a10.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a1010.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.aa11.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.aa1111.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.r4.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a12.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a1212.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a13.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.a1313.Text)) IsValid = true;
            else if (string.IsNullOrEmpty(this.r5.Text)) IsValid = true;
            //else if (string.IsNullOrEmpty(this.a14.Text)) IsValid = true;
            //else if (string.IsNullOrEmpty(this.a1414.Text)) IsValid = true;
            //else if (string.IsNullOrEmpty(this.a15.Text)) IsValid = true;
            //else if (string.IsNullOrEmpty(this.a1515.Text)) IsValid = true;
            else IsValid = false;
            this.pnlResumen.Visible = true;
            this.pnlCalificar.Visible = true;
            this.pnlListCalificacion.Visible = true;

            return IsValid;
        }

        private void FinalizarNotaAdicional()
        {
            EvaluacionVideos.actualizarTerminarNotaAdicional(

               "",
               a1.Text,
               a11.Text,
               a2.Text,
               a22.Text,
               a3.Text,
               a33.Text,
               r1.SelectedValue.ToString(),
               r1_copy.SelectedValue.ToString(),
               a4.Text,
               a44.Text,
               "",
               "",
               r2.SelectedValue.ToString(),
                r2_copy.SelectedValue.ToString(),
               a6.Text,
               a66.Text,
               a7.Text,
               a77.Text,
               a8.Text,
               a88.Text,
               r3.SelectedItem.Value.ToString(),
               r3_copy.SelectedValue.ToString(),
               a9.Text,
               a99.Text,
               a10.Text,
               a1010.Text,
               aa11.Text,
               aa1111.Text,
               r4.SelectedValue.ToString(),
               r4_copy.SelectedValue.ToString(),
               a12.Text,
               a1212.Text,
               a13.Text,
               a1313.Text,
               r5.SelectedItem.Value.ToString(),
                r5_copy.SelectedValue.ToString(),
               a14.SelectedItem.Value.ToString(),
               a1414.Text,
               a15.SelectedItem.Value.ToString(),
               a1515.Text,
               Request.QueryString["p"],
               lblUrl.Text,
               lblVideoID.Text,
               pEvaluador,
               2
              );
        }

        private bool ValidarCalifacionAdcional()
        {
            bool IsValid = false;

            if (!string.IsNullOrEmpty(this.r1_copy.SelectedValue) ||
                !string.IsNullOrEmpty(this.r2_copy.SelectedValue) ||
                !string.IsNullOrEmpty(this.r3_copy.SelectedValue) ||
                !string.IsNullOrEmpty(this.r4_copy.SelectedValue) ||
                !string.IsNullOrEmpty(this.r5_copy.SelectedValue))

                IsValid = false;

            else
            {
                IsValid = true;
            }

            return IsValid;
        }

        protected void btnAceptarFinalizar_Click(object sender, EventArgs e)
        {
            int avance = 0;

            if (this.ValidarCalifacionAdcional() == true && this.Session["notaAdicional"].ToString() == "si")
            {
                this.lblEstado.Text = "Debe completar todos los campos de notas adicionales";
                this.lblEstado.ForeColor = Color.Red;
                return;
            }
            else if(this.ValidarCalifacionAdcional() == false && this.Session["notaAdicional"].ToString() == "si")
            {
                this.FinalizarNotaAdicional();
                this.btnEvaluar.Visible = false;
                this.btnFinalizar.Visible = false;

                this.btnCancelar.Visible = false;
                this.btnNuevo.Visible = true;
                this.btnAddCalificacion.Visible = false;

                //this.limpiarCampos();
                this.lblEstadoEvaluaciones.Text = "Nueva evaluación";
               
                this.lblEstadoEvaluaciones.ForeColor = Color.Green;


                this.lblEstado.Text = "Evaluación guardar con nota adicional";
                this.lblEstado.ForeColor = Color.Green;

                this.r1_copy.Enabled = false;
                this.r2_copy.Enabled = false;
                this.r3_copy.Enabled = false;
                this.r4_copy.Enabled = false;
                this.r5_copy.Enabled = false;
                this.bloquearCampos();
                return;
            }
           

            try
            {
                if (this.ValidarTextos() == true)
                {
                    this.lblEstado.Text = "Debe completar todos los campos";
                    this.lblEstado.ForeColor = Color.Red;
                }
                else if (this.ValidarTextos() == false)
                {

                    if (this.a14.SelectedItem.ToString() == "NO")
                    {
                        this.a1414.Text = "";
                    }
                    if (this.a15.SelectedItem.ToString() == "NO")
                    {
                        this.a1515.Text = "";
                    }

                    if (this.a14.SelectedValue.ToString() == "SI" && string.IsNullOrEmpty(this.a1414.Text))
                    {
                        this.lblEstado.Text = "Ingrese texto";
                        this.lblEstado.ForeColor = Color.Red;
                        this.a1414.Focus();
                        return;
                    }
                    else if (this.a15.SelectedValue.ToString() == "SI" && string.IsNullOrEmpty(this.a1515.Text))
                    {
                        this.lblEstado.Text = "Ingrese texto";
                        this.lblEstado.ForeColor = Color.Red;
                        this.a1515.Focus();
                        return;
                    }

                    try
                    {
                         avance = EvaluacionVideos.ValidarEstadoVideo(Convert.ToInt32(this.Session["videoId"]));
                    }
                    catch (Exception)
                    {
                        avance = 0;
                    }

                    if (avance == 0)
                    {
                        this.Add();
                        this.Update();
                    }

                    if(avance == 2 || avance == 3)
                    {
                        this.Update();
                    }

                    //actulizar reportes
                    this.dsvideosCargados.DataBind();
                    this.dsPersona.DataBind();
                    this.exportarTodo.DataBind();
                    this.GridView1.DataBind();
                    this.gvExportarTodo.DataBind();

                    this.lblEstado.Text = "EVALUACIÓN FINALIZADA: " + DateTime.Now.ToString();

                    this.r1.Enabled = false;
                    this.r2.Enabled = false;
                    this.r3.Enabled = false;
                    this.r4.Enabled = false;
                    this.r5.Enabled = false;
                    

                    DataTable estadoEvaluado = EvaluacionVideos.BuscarEstadoEvaluacion(lblVideoID.Text,user);

                    this.lblEstadoEvaluaciones.Text = "";
                    this.btnEvaluar.Visible = false;
                    this.btnFinalizar.Visible = false;
                    this.btnAddCalificacion.Visible = true;

                    this.lblEstado.ForeColor = Color.Green;
                    DataTable dtVideoFinalizar = new DataTable();
                    dtVideoFinalizar = EvaluacionVideos.GetVideo(this.Session["videoId"].ToString(), user);


                    if (dtVideoFinalizar.Rows.Count > 0)
                    {
                        a1.Text = dtVideoFinalizar.Rows[0]["a1"].ToString();
                        a11.Text = dtVideoFinalizar.Rows[0]["a11"].ToString();
                        a2.Text = dtVideoFinalizar.Rows[0]["a2"].ToString();
                        a22.Text = dtVideoFinalizar.Rows[0]["a22"].ToString();
                        a3.Text = dtVideoFinalizar.Rows[0]["a3"].ToString();
                        a33.Text = dtVideoFinalizar.Rows[0]["a33"].ToString();
                        r1.SelectedValue = dtVideoFinalizar.Rows[0]["r1"].ToString();
                        a4.Text = dtVideoFinalizar.Rows[0]["a4"].ToString();
                        a44.Text = dtVideoFinalizar.Rows[0]["a44"].ToString();
                        r2.SelectedValue = dtVideoFinalizar.Rows[0]["r2"].ToString();
                        a6.Text = dtVideoFinalizar.Rows[0]["a6"].ToString();
                        a66.Text = dtVideoFinalizar.Rows[0]["a66"].ToString();
                        a7.Text = dtVideoFinalizar.Rows[0]["a7"].ToString();
                        a77.Text = dtVideoFinalizar.Rows[0]["a77"].ToString();
                        a8.Text = dtVideoFinalizar.Rows[0]["a8"].ToString();
                        a88.Text = dtVideoFinalizar.Rows[0]["a88"].ToString();
                        r3.SelectedValue = dtVideoFinalizar.Rows[0]["r3"].ToString();
                        a9.Text = dtVideoFinalizar.Rows[0]["a9"].ToString();
                        a99.Text = dtVideoFinalizar.Rows[0]["a99"].ToString();
                        a10.Text = dtVideoFinalizar.Rows[0]["a10"].ToString();
                        a1010.Text = dtVideoFinalizar.Rows[0]["a1010"].ToString();
                        aa11.Text = dtVideoFinalizar.Rows[0]["aa11"].ToString();
                        aa1111.Text = dtVideoFinalizar.Rows[0]["aa1111"].ToString();
                        r4.SelectedValue = dtVideoFinalizar.Rows[0]["r4"].ToString();
                        a12.Text = dtVideoFinalizar.Rows[0]["a12"].ToString();
                        a1212.Text = dtVideoFinalizar.Rows[0]["a1212"].ToString();
                        a13.Text = dtVideoFinalizar.Rows[0]["a13"].ToString();
                        a1313.Text = dtVideoFinalizar.Rows[0]["a1313"].ToString();
                        r5.SelectedValue = dtVideoFinalizar.Rows[0]["r5"].ToString();
                        a14.SelectedValue = dtVideoFinalizar.Rows[0]["a14"].ToString();
                        a1414.Text = dtVideoFinalizar.Rows[0]["a1414"].ToString();
                        a15.SelectedValue = dtVideoFinalizar.Rows[0]["a15"].ToString();
                        a1515.Text = dtVideoFinalizar.Rows[0]["a1515"].ToString();
                    }

                    this.bloquearCampos();
                    this.btnNuevo.Visible = true;
                }
                else
                {
                    if (!String.IsNullOrEmpty(lblVideoID.Text))
                    {
                        this.Session["videoId"] = lblVideoID.Text;
                    }
                    EvaluacionVideos.actualizarTerminar(

                        "",
                        a1.Text,
                        a11.Text,
                        a2.Text,
                        a22.Text,
                        a3.Text,
                        a33.Text,
                        r1.SelectedValue.ToString(),
                        r1_copy.SelectedValue.ToString(),
                        a4.Text,
                        a44.Text,
                        "",
                        "",
                        r2.SelectedValue.ToString(),
                         r2_copy.SelectedValue.ToString(),
                        a6.Text,
                        a66.Text,
                        a7.Text,
                        a77.Text,
                        a8.Text,
                        a88.Text,
                        r3.SelectedItem.Value.ToString(),
                         r3_copy.SelectedValue.ToString(),
                        a9.Text,
                        a99.Text,
                        a10.Text,
                        a1010.Text,
                        aa11.Text,
                        aa1111.Text,
                        r4.SelectedValue.ToString(),
                         r4_copy.SelectedValue.ToString(),
                        a12.Text,
                        a1212.Text,
                        a13.Text,
                        a1313.Text,
                        r5.SelectedItem.Value.ToString(),
                        r5_copy.SelectedValue.ToString(),
                        a14.SelectedItem.Value.ToString(),
                        a1414.Text,
                        a15.SelectedItem.Value.ToString(),
                        a1515.Text,
                        Request.QueryString["p"],
                        lblUrl.Text,
                        lblVideoID.Text,
                        pEvaluador
                       );


                    dsvideosCargados.DataBind();
                    dsPersona.DataBind();
                    exportarTodo.DataBind();
                    GridView1.DataBind();
                    gvExportarTodo.DataBind();

                    lblEstado.Text = "EVALUACIÓN FINALIZADA: " + DateTime.Now.ToString();

                    DataTable estadoEvaluado = EvaluacionVideos.BuscarEstadoEvaluacion(lblVideoID.Text, user);
                    this.lblEstadoEvaluaciones.Text = "";

                    this.r1.Enabled = false;
                    this.r2.Enabled = false;
                    this.r3.Enabled = false;
                    this.r4.Enabled = false;
                    this.r5.Enabled = false;
                    this.btnAddCalificacion.Visible = true;


                    //this.txtficharegistro.Visible = true;
                    //this.lblFichaRegistro.Visible = false;
                    this.PanelEncabezado.Visible = false;
                    this.btnEvaluar.Visible = false;
                    this.btnFinalizar.Visible = false;
                 
                    this.lblEstado.ForeColor = Color.Green;
                    DataTable dtVideoFinalizar = new DataTable();
                    dtVideoFinalizar = EvaluacionVideos.GetVideo(this.Session["videoId"].ToString(), user);

                    if (dtVideoFinalizar.Rows.Count > 0)
                    {
                        a1.Text = dtVideoFinalizar.Rows[0]["a1"].ToString();
                        a11.Text = dtVideoFinalizar.Rows[0]["a11"].ToString();
                        a2.Text = dtVideoFinalizar.Rows[0]["a2"].ToString();
                        a22.Text = dtVideoFinalizar.Rows[0]["a22"].ToString();
                        a3.Text = dtVideoFinalizar.Rows[0]["a3"].ToString();
                        a33.Text = dtVideoFinalizar.Rows[0]["a33"].ToString();
                        r1.SelectedValue = dtVideoFinalizar.Rows[0]["r1"].ToString();
                        a4.Text = dtVideoFinalizar.Rows[0]["a4"].ToString();
                        a44.Text = dtVideoFinalizar.Rows[0]["a44"].ToString();
                        r2.SelectedValue = dtVideoFinalizar.Rows[0]["r2"].ToString();
                        a6.Text = dtVideoFinalizar.Rows[0]["a6"].ToString();
                        a66.Text = dtVideoFinalizar.Rows[0]["a66"].ToString();
                        a7.Text = dtVideoFinalizar.Rows[0]["a7"].ToString();
                        a77.Text = dtVideoFinalizar.Rows[0]["a77"].ToString();
                        a8.Text = dtVideoFinalizar.Rows[0]["a8"].ToString();
                        a88.Text = dtVideoFinalizar.Rows[0]["a88"].ToString();
                        r3.SelectedValue = dtVideoFinalizar.Rows[0]["r3"].ToString();
                        //txtficharegistro.Text = dtVideoFinalizar.Rows[0]["ficharegistro"].ToString();
                        a9.Text = dtVideoFinalizar.Rows[0]["a9"].ToString();
                        a99.Text = dtVideoFinalizar.Rows[0]["a99"].ToString();
                        a10.Text = dtVideoFinalizar.Rows[0]["a10"].ToString();
                        a1010.Text = dtVideoFinalizar.Rows[0]["a1010"].ToString();
                        aa11.Text = dtVideoFinalizar.Rows[0]["aa11"].ToString();
                        aa1111.Text = dtVideoFinalizar.Rows[0]["aa1111"].ToString();
                        r4.SelectedValue = dtVideoFinalizar.Rows[0]["r4"].ToString();
                        a12.Text = dtVideoFinalizar.Rows[0]["a12"].ToString();
                        a1212.Text = dtVideoFinalizar.Rows[0]["a1212"].ToString();
                        a13.Text = dtVideoFinalizar.Rows[0]["a13"].ToString();
                        a1313.Text = dtVideoFinalizar.Rows[0]["a1313"].ToString();
                        r5.SelectedValue = dtVideoFinalizar.Rows[0]["r5"].ToString();
                        a14.SelectedValue = dtVideoFinalizar.Rows[0]["a14"].ToString();
                        a1414.Text = dtVideoFinalizar.Rows[0]["a1414"].ToString();
                        a15.SelectedValue = dtVideoFinalizar.Rows[0]["a15"].ToString();
                        a1515.Text = dtVideoFinalizar.Rows[0]["a1515"].ToString();
                    }

                    this.bloquearCampos();
                    this.btnNuevo.Visible = true;
                }
            }
            catch (Exception EX)
            {
                lblEstado.Text = "ERROR EN EVALUACION!";
            }

            this.btnCancelar.Visible = false;
        }

        protected void btnExportarFichaRegistro_Click(object sender, EventArgs e)
        {

            //TEXT
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.doc");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-word ";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("" + Server.HtmlDecode("") + "");
            Response.Output.Write(sb.ToString());
            Response.Flush();
            Response.End();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            this.desbloquearCampos();
            this.limpiarCampos();
            this.btnEvaluar.Visible = true;
            this.btnFinalizar.Visible = true;
            this.Session["videoId"] = null;
            this.lblEstadoEvaluaciones.Text = "Nuevo video para evaluar";
            this.lblEstado.Text = "";
            this.lblEstadoEvaluaciones.ForeColor = Color.Green;
            this.btnNuevo.Visible = false;
            this.btnCancelar.Visible = true;


            this.Session["notaAdicional"] = "no";
            this.Session["videoIdCancelar"] = lblVideoID.Text;
            this.r1.Enabled = true;
            this.r2.Enabled = true;
            this.r3.Enabled = true;
            this.r4.Enabled = true;
            this.r5.Enabled = true;
            

            this.encabezado.Visible = false;
            this.fila1.Visible = false;
            this.fila1_sinNada.Visible = false;
            this.fil2.Visible = false;
            this.fila3.Visible = false;
            this.fila4.Visible = false;
            this.fila5.Visible = false;


            this.r1_copy.SelectedValue = "";
            this.r2_copy.SelectedValue = "";
            this.r3_copy.SelectedValue = "";
            this.r4_copy.SelectedValue = "";
            this.r5_copy.SelectedValue = "";

            this.btnAddCalificacion.Visible = false;

            this.a14.Enabled = true;
            this.a15.Enabled = true;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            this.btnNuevo.Visible = true;
            this.btnCancelar.Visible = false;


            this.r1.Enabled = false;
            this.r2.Enabled = false;
            this.r3.Enabled = false;
            this.r4.Enabled = false;
            this.r5.Enabled = false;

            this.btnFinalizar.Visible = false;
            this.btnEvaluar.Visible = false;
            this.btnAddCalificacion.Visible = true;
            this.btnNuevo.Visible = true;
            this.bloquearCampos();
            this.lblEstadoEvaluaciones.Text = "El video fue evaluado";
            this.a14.Enabled = false;
            this.a15.Enabled = false;
            this.encabezado.Visible = false;
            this.fila1.Visible = false;
            this.fila1_sinNada.Visible = false;
            this.fil2.Visible = false;
            this.fila3.Visible = false;
            this.fila4.Visible = false;
            this.fila5.Visible = false;
            DataTable dtVideo = new DataTable();
            dtVideo = EvaluacionVideos.GetVideo(this.Session["videoIdCancelar"].ToString(), user);

            if (dtVideo.Rows.Count > 0)
            {
                a1.Text = dtVideo.Rows[0]["a1"].ToString();
                a11.Text = dtVideo.Rows[0]["a11"].ToString();
                a2.Text = dtVideo.Rows[0]["a2"].ToString();
                a22.Text = dtVideo.Rows[0]["a22"].ToString();
                a3.Text = dtVideo.Rows[0]["a3"].ToString();
                a33.Text = dtVideo.Rows[0]["a33"].ToString();
                r1.SelectedValue = dtVideo.Rows[0]["r1"].ToString();
                a4.Text = dtVideo.Rows[0]["a4"].ToString();
                a44.Text = dtVideo.Rows[0]["a44"].ToString();
                //a5.Text = dtVideo.Rows[0]["a5"].ToString();
                //a55.Text = dtVideo.Rows[0]["a55"].ToString();
                r2.SelectedValue = dtVideo.Rows[0]["r2"].ToString();
                a6.Text = dtVideo.Rows[0]["a6"].ToString();
                a66.Text = dtVideo.Rows[0]["a66"].ToString();
                a7.Text = dtVideo.Rows[0]["a7"].ToString();
                a77.Text = dtVideo.Rows[0]["a77"].ToString();
                a8.Text = dtVideo.Rows[0]["a8"].ToString();
                a88.Text = dtVideo.Rows[0]["a88"].ToString();
                r3.SelectedValue = dtVideo.Rows[0]["r3"].ToString();
                //txtficharegistro.Text = dtVideo.Rows[0]["fechaCreacion"].ToString();
                a9.Text = dtVideo.Rows[0]["a9"].ToString();
                a99.Text = dtVideo.Rows[0]["a99"].ToString();
                a10.Text = dtVideo.Rows[0]["a10"].ToString();
                a1010.Text = dtVideo.Rows[0]["a1010"].ToString();
                aa11.Text = dtVideo.Rows[0]["aa11"].ToString();
                aa1111.Text = dtVideo.Rows[0]["aa1111"].ToString();
                r4.SelectedValue = dtVideo.Rows[0]["r4"].ToString();
                a12.Text = dtVideo.Rows[0]["a12"].ToString();
                a1212.Text = dtVideo.Rows[0]["a1212"].ToString();
                a13.Text = dtVideo.Rows[0]["a13"].ToString();
                a1313.Text = dtVideo.Rows[0]["a1313"].ToString();
                r5.SelectedValue = dtVideo.Rows[0]["r5"].ToString();
                a14.SelectedValue = dtVideo.Rows[0]["a14"].ToString();
                a1414.Text = dtVideo.Rows[0]["a1414"].ToString();
                a15.SelectedValue = dtVideo.Rows[0]["a15"].ToString();
                a1515.Text = dtVideo.Rows[0]["a1515"].ToString();
            }
        }

        protected void btnAddCalificacion_Click(object sender, EventArgs e)
        {
            this.encabezado.Visible = true;
            this.fila1.Visible = true;
            this.fila1_sinNada.Visible = true;
            this.fil2.Visible = true;
            this.fila3.Visible = true;
            this.fila4.Visible = true;
            this.fila5.Visible = true;

            this.btnNuevo.Visible = false;
            this.btnAddCalificacion.Visible = false;
            this.btnCancelar.Visible = true;

            this.r1_copy.Enabled = true;
            this.r2_copy.Enabled = true;
            this.r3_copy.Enabled = true;
            this.r4_copy.Enabled = true;
            this.r5_copy.Enabled = true;

            this.btnEvaluar.Visible = true;
            this.btnFinalizar.Visible = true;
            this.Session["notaAdicional"] = "si";
            this.Session["videoIdCancelar"] = lblVideoID.Text;

            this.Session["videoId"] = lblVideoID.Text;
        }


        private void UpdateEvaluacionNotaAdicional()
        {
            object EnvaluacionVideos = new EvaluacionVideos();
            EvaluacionVideos.actualizar(
                "",
                a1.Text,
                a11.Text,
                a2.Text,
                a22.Text,
                a3.Text,
                a33.Text,
                r1.SelectedValue.ToString(),
               r1_copy.SelectedValue.ToString(),
                a4.Text,
                a44.Text,
                "",
                "",
                r2.SelectedValue.ToString(),
                r2_copy.SelectedValue.ToString(),
                a6.Text,
                a66.Text,
                a7.Text,
                a77.Text,
                a8.Text,
                a88.Text,
                r3.SelectedItem.Value.ToString(),
               r3_copy.SelectedValue.ToString(),
                a9.Text,
                a99.Text,
                a10.Text,
                a1010.Text,
                aa11.Text,
                aa1111.Text,
                r4.SelectedValue.ToString(),
               r4_copy.SelectedValue.ToString(),
                a12.Text,
                a1212.Text,
                a13.Text,
                a1313.Text,
                r5.SelectedItem.Value.ToString(),
                r5_copy.SelectedValue.ToString(),
                a14.SelectedItem.Value.ToString(),
                a1414.Text,
                a15.SelectedItem.Value.ToString(),
                a1515.Text,
                Request.QueryString["p"],
                lblUrl.Text,
                this.Session["videoId"].ToString(),
                pEvaluador,
                1); //guarda avance nota adicional
        }

        protected void DropdownlistChanged_a14(object sender, EventArgs e)
        {
            //if (this.a14.SelectedItem.ToString() == "SI")
            //{
            //    this.a1414.Enabled = true;
            //    this.a13.Text = "prueba";
            //}
            //else
            //{
            //    this.a1414.Enabled = false;
            //    this.a1414.Text = "";
            //}
        }

        protected void a14_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (this.a14.SelectedItem.ToString() == "SI")
            //{
            //    this.a1414.Enabled = true;
            //}
            //else
            //{
            //    this.a1414.Enabled = false;
            //    this.a1414.Text = "";
            //}
        }

        protected void a15_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.a15.SelectedItem.ToString() == "SI")
            {
                this.a1515.Enabled = true;
            }
            else
            {
                this.a1515.Enabled = false;
                this.a1515.Text = "";
            }
        }

        protected void btnTerminar_Click(object sender, EventArgs e)
        //GUARDAR POR PRIMERA VEZ
        {
            //this.Session["extra"] = "no";
            string r1Extra = "";
            string r2Extra =  "";
            string r3Extra =  "";
            string r4Extra =  "";
            string r5Extra =  "";
       
            if (this.Session["notaAdicional"].ToString() == "si")
            {
                this.UpdateEvaluacionNotaAdicional();
                this.lblEstado.Text = "EVALUACIÓN GUARDADA CON NOTA ADICIONAL !";
                this.lblEstado.ForeColor = Color.Green;

                this.bloquearCampos();

                //deshabiliar calificacion 1
                this.r1_copy.Enabled = true;
                this.r2_copy.Enabled = true;
                this.r2_copy.Enabled = true;
                this.r2_copy.Enabled = true;
                this.r2_copy.Enabled = true;

                //mostrar columna
                this.encabezado.Visible = true;
                this.fila1.Visible = true;
                this.fila1_sinNada.Visible = true;
                this.fil2.Visible = true;
                this.fila3.Visible = true;
                this.fila4.Visible = true;
                this.fila5.Visible = true;

                this.btnCancelar.Visible = false;
                this.btnNuevo.Visible = false;
                this.btnAddCalificacion.Visible = false;

                //actulizar griview
                this.gvExportarTodo.DataBind();
                return;
            }

          
            if (this.Session["videoId"] != null)
            {
                //if (this.a14.SelectedItem.ToString() == "NO" && (string.IsNullOrEmpty(this.a1414.Text) || !string.IsNullOrEmpty(this.a1414.Text)))
                //{
                //    this.lblEstado.Text = "Si selecciona NO limpie la caja de texto.";
                //    this.lblEstado.ForeColor = Color.Red;
                //    this.a1414.Focus();
                //}
                //else if (this.a15.SelectedItem.ToString() == "NO" && (string.IsNullOrEmpty(this.a1515.Text) || !string.IsNullOrEmpty(this.a1515.Text)))
                //{
                //    this.lblEstado.Text = "Si selecciona NO limpie la caja de texto.";
                //    this.lblEstado.ForeColor = Color.Red;
                //    this.a1515.Focus();
                //}

               
              
                    if (this.ValidarTextos() == true || this.btnFinalizar.Visible == true)
                    {

                        object EnvaluacionVideos = new EvaluacionVideos();
                        EvaluacionVideos.actualizar(
                            "",
                            a1.Text,
                            a11.Text,
                            a2.Text,
                            a22.Text,
                            a3.Text,
                            a33.Text,
                            r1.SelectedValue.ToString(),
                           r1_copy.SelectedValue.ToString(),
                            a4.Text,
                            a44.Text,
                            "",
                            "",
                            r2.SelectedValue.ToString(),
                            r2_copy.SelectedValue.ToString(),
                            a6.Text,
                            a66.Text,
                            a7.Text,
                            a77.Text,
                            a8.Text,
                            a88.Text,
                            r3.SelectedItem.Value.ToString(),
                           r3_copy.SelectedValue.ToString(),
                            a9.Text,
                            a99.Text,
                            a10.Text,
                            a1010.Text,
                            aa11.Text,
                            aa1111.Text,
                            r4.SelectedValue.ToString(),
                           r4_copy.SelectedValue.ToString(),
                            a12.Text,
                            a1212.Text,
                            a13.Text,
                            a1313.Text,
                            r5.SelectedItem.Value.ToString(),
                            r5_copy.SelectedValue.ToString(),
                            a14.SelectedItem.Value.ToString(),
                            a1414.Text,
                            a15.SelectedItem.Value.ToString(),
                            a1515.Text,
                            Request.QueryString["p"],
                            lblUrl.Text,
                            this.Session["videoId"].ToString(),
                            pEvaluador,
                            0
                            );

                        this.lblEstado.Text = "EVALUACIÓN GUARDADA PRELIMINARMENTE !";



                    }
                    else
                    {
                        try
                        {
                            object EnvaluacionVideos = new EvaluacionVideos();
                            EvaluacionVideos.Insertar(
                                "",
                                a1.Text,
                                a11.Text,
                                a2.Text,
                                a22.Text,
                                a3.Text,
                                a33.Text,
                                r1.SelectedValue.ToString(),
                                r1_copy.SelectedValue.ToString(),
                                a4.Text,
                                a44.Text,
                                "",
                                "",
                                r2.SelectedValue.ToString(),
                                r2_copy.SelectedValue.ToString(),
                                a6.Text,
                                a66.Text,
                                a7.Text,
                                a77.Text,
                                a8.Text,
                                a88.Text,
                                r3.SelectedItem.Value.ToString(),
                                r3_copy.SelectedValue.ToString(),
                                a9.Text,
                                a99.Text,
                                a10.Text,
                                a1010.Text,
                                aa11.Text,
                                aa1111.Text,
                                r4.SelectedValue.ToString(),
                                r4_copy.SelectedValue.ToString(),
                                a12.Text,
                                a1212.Text,
                                a13.Text,
                                a1313.Text,
                                r5.SelectedItem.Value.ToString(),
                               r5_copy.SelectedValue.ToString(),
                                a14.SelectedItem.Value.ToString(),
                                a1414.Text,
                                a15.SelectedItem.Value.ToString(),
                                a1515.Text,
                                Request.QueryString["p"],
                                lblUrl.Text,
                                this.Session["videoId"].ToString(),
                                pEvaluador
                                               );
                            this.dsvideosCargados.DataBind();
                            this.dsPersona.DataBind();
                            this.exportarTodo.DataBind();
                            this.GridView1.DataBind();
                            this.gvExportarTodo.DataBind();

                            lblEstado.Text = "EVALUACIÓN GUARDADA PRELIMINARMENTE !";
                            this.lblEstadoEvaluaciones.Text = "Complete los datos para finalizar la evaluación del video seleccionado.";
                            this.lblEstado.ForeColor = Color.Green;

                            this.r1.Enabled = true;
                            this.r2.Enabled = true;
                            this.r3.Enabled = true;
                            this.r4.Enabled = true;
                            this.r5.Enabled = true;
                            this.btnEvaluar.Visible = false;
                            this.btnFinalizar.Visible = true;
                        }
                        catch (Exception EX)
                        {
                            lblEstado.Text = "ERROR EN EVALUACION!";
                        }
                    }
               
            }
            else
            {
                try
                {

                    //if (this.a14.SelectedItem.ToString() == "NO" && (string.IsNullOrEmpty(this.a1414.Text) ||  !string.IsNullOrEmpty(this.a1414.Text)))
                    //{
                    //    this.lblEstado.Text = "Si selecciona NO limpie la caja de texto.";
                    //    this.lblEstado.ForeColor = Color.Red;
                    //    this.a1414.Focus();
                    //}
                    //else if(this.a15.SelectedItem.ToString() == "NO" && (string.IsNullOrEmpty(this.a1515.Text) || !string.IsNullOrEmpty(this.a1515.Text)))
                    //{
                    //    this.lblEstado.Text = "Si selecciona NO limpie la caja de texto.";
                    //    this.lblEstado.ForeColor = Color.Red;
                    //    this.a1515.Focus();
                    //}

                    
                  
                        object EnvaluacionVideos = new EvaluacionVideos();
                        EvaluacionVideos.Insertar(
                            "",
                            a1.Text,
                            a11.Text,
                            a2.Text,
                            a22.Text,
                            a3.Text,
                            a33.Text,
                            r1.SelectedValue.ToString(),
                           r1_copy.SelectedValue.ToString(),
                            a4.Text,
                            a44.Text,
                            "",
                            "",
                            r2.SelectedValue.ToString(),
                           r2_copy.SelectedValue.ToString(),
                            a6.Text,
                            a66.Text,
                            a7.Text,
                            a77.Text,
                            a8.Text,
                            a88.Text,
                            r3.SelectedItem.Value.ToString(),
                           r3_copy.SelectedValue.ToString(),
                            a9.Text,
                            a99.Text,
                            a10.Text,
                            a1010.Text,
                            aa11.Text,
                            aa1111.Text,
                            r4.SelectedValue.ToString(),
                          r4_copy.SelectedValue.ToString(),
                            a12.Text,
                            a1212.Text,
                            a13.Text,
                            a1313.Text,
                            r5.SelectedItem.Value.ToString(),
                            r5_copy.SelectedValue.ToString(),
                            a14.SelectedItem.Value.ToString(),
                            a1414.Text,
                            a15.SelectedItem.Value.ToString(),
                            a1515.Text,
                            Request.QueryString["p"],
                            lblUrl.Text,
                            lblVideoID.Text,
                            pEvaluador
                                           );

                        this.dsvideosCargados.DataBind();
                        this.dsPersona.DataBind();
                        this.exportarTodo.DataBind();
                        this.GridView1.DataBind();
                        this.gvExportarTodo.DataBind();
                        this.lblEstado.Text = "EVALUACIÓN GUARDADA PRELIMINARMENTE !";
                        this.btnEvaluar.Visible = true;
                        this.btnFinalizar.Visible = true;
                        this.Session["videoId"] = lblVideoID.Text;
                    

                    

                }
                catch (Exception EX)
                {
                    this.lblEstado.Text = "ERROR EN EVALUACION!";
                }
            }

            //this.a1414.Enabled = false;
            //this.a1515.Enabled = false;

            this.gvExportarTodo.DataBind();
            this.btnCancelar.Visible = false;
            this.lblEstadoEvaluaciones.Text = "Complete los datos para finalizar la evaluación del video seleccionado.";
            this.lblEstado.ForeColor = Color.Green;
            this.r1.Enabled = true;
            this.r2.Enabled = true;
            this.r3.Enabled = true;
            this.r4.Enabled = true;
            this.r5.Enabled = true;
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.btnFinalizar.Visible = true;
            this.pnlResumen.Visible = true;
            this.pnlCalificar.Visible = true;
            this.pnlListCalificacion.Visible = true;

            this.lblEstadoEvaluaciones.Text = "";

            //DROWLIST
            

            DataTable estadoEvaluado;
            string estadoNotaAdicional;
            string noEvaluado;
            string enProceso;
            string terminado;


            // SI EL CODIGO DE VIDEO NO TIENE EVALUACION CARGADA
            this.lblEstadoEvaluaciones.Text = "Completar actualizacion, actualizar y Finalizar";
            this.lblEstado.Text = "";
            this.dsvideosCargados.DataBind();
            this.GridView1.DataBind();
            string index = this.GridView1.SelectedIndex.ToString();

            this.dsvideosCargados.DataBind();
            string documento;
            documento = Convert.ToString(this.GridView1.Rows[int.Parse(index)].Cells[2].Text);

            string video = Convert.ToString(this.GridView1.Rows[int.Parse(index)].Cells[3].Text);
            string videoID = Convert.ToString(this.GridView1.Rows[int.Parse(index)].Cells[1].Text);


            //string idRegistroVideo = Convert.ToString(GridView1.Rows[int.Parse(index)].Cells[0].Text);

            this.Session["videoId"] = videoID.ToString();

            this.lblUrl.Text = video;
            this.lblVideoID.Text = videoID;
            this.Literal1.Text = " <iframe width=800 height=380 src=" + (lblUrl.Text).Replace("https://youtu.be/", "https://www.youtube.com/embed/") + " frameborder=0 allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + " allowfullscreen></iframe>";
            this.exportarTodo.DataBind();
            this.gvExportarTodo.DataBind();
            this.dsvideosCargados.DataBind();

            //estado del registro
            estadoEvaluado = EvaluacionVideos.BuscarEstadoEvaluacion(this.lblVideoID.Text, user);

            //estad adicional
            estadoNotaAdicional = EvaluacionVideos.ValidarEstadoNotaAdicional(this.lblVideoID.Text,user);

            //registro del video
            DataTable dtVideo = new DataTable();
            dtVideo = EvaluacionVideos.GetVideo(this.Session["videoId"].ToString(),user);

            string estado = "";
            string estadoAdicional = "";

            try
            {
               estado = estadoEvaluado.Rows[0]["estado"].ToString();
               
            }
            catch (Exception ex)
            {
                estado = "-1";
                
            }

            try
            {
                estadoNotaAdicional = estadoEvaluado.Rows[0]["EstadoAdicional"].ToString();
            }
            catch (Exception ex)
            {

                estadoNotaAdicional = "0";
            }

            //
           this.exportarTodo.SelectParameters["evaluador"].DefaultValue  = Membership.GetUser().ToString();

            if (estado == "-1")
            {
                this.lblEstadoEvaluaciones.Text = "Nueva evaluación";
                this.lblEstadoEvaluaciones.ForeColor = Color.Green;
                this.limpiarCampos();
                this.desbloquearCampos();
                this.btnAddCalificacion.Visible = false;
                this.btnNuevo.Visible = false;
                this.btnEvaluar.Visible = true;
                this.btnFinalizar.Visible = true;
                this.Session["videoId"] = null;
                this.Session["notaAdicional"] = "no";

                //mostrar columna
                this.encabezado.Visible = false;
                this.fila1.Visible = false;
                this.fila1_sinNada.Visible = false;
                this.fil2.Visible = false;
                this.fila3.Visible = false;
                this.fila4.Visible = false;
                this.fila5.Visible = false;

                //deshabilitar califiacion 2
                this.r1_copy.SelectedValue = "";
                this.r2_copy.SelectedValue = "";
                this.r3_copy.SelectedValue = "";
                this.r4_copy.SelectedValue = "";
                this.r5_copy.SelectedValue = "";

                this.r1.Enabled = true;
                this.r2.Enabled = true;
                this.r3.Enabled = true;
                this.r4.Enabled = true;
                this.r5.Enabled = true;

                this.a14.Enabled = true;
                this.a15.Enabled = true;

            }
            else if (estadoNotaAdicional == "2" && estado == "1")
            {
                //this.Session["notaAdicional"] = "si";

                this.lblEstadoEvaluaciones.Text = "Evaluación finalizada con nota adicional";
                this.lblEstadoEvaluaciones.ForeColor = Color.Red;

                //botones
                this.btnEvaluar.Visible = false;
                this.btnFinalizar.Visible = false;

                this.btnCancelar.Visible = false;
                this.btnNuevo.Visible = true;
                this.btnAddCalificacion.Visible = false;

                this.bloquearCampos();

                //mostrar columna
                this.encabezado.Visible = true;
                this.fila1.Visible = true;
                this.fila1_sinNada.Visible = true;
                this.fil2.Visible = true;
                this.fila3.Visible = true;
                this.fila4.Visible = true;
                this.fila5.Visible = true;

                //deshabilitar califiacion 2
                this.r1_copy.Enabled = false;
                this.r2_copy.Enabled = false;
                this.r3_copy.Enabled = false;
                this.r4_copy.Enabled = false;
                this.r5_copy.Enabled = false;

                //deshabilitar califiacion 2
                this.r1.Enabled = false;
                this.r2.Enabled = false;
                this.r3.Enabled = false;
                this.r4.Enabled = false;
                this.r5.Enabled = false;
                

            }
            else if (estadoNotaAdicional == "1")
            {
                this.Session["notaAdicional"] = "si";

                //botones
                this.btnEvaluar.Visible = true;
                this.btnFinalizar.Visible = true;

                this.btnCancelar.Visible = false;
                this.btnNuevo.Visible = false;
                this.btnAddCalificacion.Visible = false;

                this.bloquearCampos();

                //mostrar columna
                this.encabezado.Visible = true;
                this.fila1.Visible = true;
                this.fila1_sinNada.Visible = true;
                this.fil2.Visible = true;
                this.fila3.Visible = true;
                this.fila4.Visible = true;
                this.fila5.Visible = true;

                //habilitar califiacion 2
                this.r1_copy.Enabled = true;
                this.r2_copy.Enabled = true;
                this.r3_copy.Enabled = true;
                this.r4_copy.Enabled = true;
                this.r5_copy.Enabled = true;


                //DEShabilitar califiacion 1
                this.r1.Enabled = false;
                this.r2.Enabled = false;
                this.r3.Enabled = false;
                this.r4.Enabled = false;
                this.r5.Enabled = false;

                this.lblEstadoEvaluaciones.Text = "Complete los datos para finalizar la evaluación de la nota adicional.";
                this.lblEstadoEvaluaciones.ForeColor = Color.Green;
            }
            else if (estado == "2")
            {
                this.desbloquearCampos();
                this.lblEstadoEvaluaciones.Text = "Complete los datos para finalizar la evaluación del video seleccionado.";
                this.lblEstadoEvaluaciones.ForeColor = Color.Green;

                string index2 = GridView1.SelectedIndex.ToString();

                this.r1.Enabled = true;
                this.r2.Enabled = true;
                this.r3.Enabled = true;
                this.r4.Enabled = true;
                this.r5.Enabled = true;

                this.Session["notaAdicional"] = "no";
                this.r1_copy.SelectedValue = "";
                this.r2_copy.SelectedValue = "";
                this.r3_copy.SelectedValue = "";
                this.r4_copy.SelectedValue = "";
                this.r5_copy.SelectedValue = "";
                this.Session["videoId"] = videoID.ToString();
                this.lblEstado.Text = "";
                this.Button1.Visible = true;
                this.btnAddCalificacion.Visible = false;
                this.PanelEncabezado.Visible = true;
                this.btnNuevo.Visible = false;
                this.btnEvaluar.Visible = true;
            }
            else if (estadoNotaAdicional == "-1")
            {
                //botones
                this.btnEvaluar.Visible = false;
                this.btnFinalizar.Visible = false;
                this.btnCancelar.Visible = false;
                this.btnNuevo.Visible = true;
                this.btnAddCalificacion.Visible = true;

                this.bloquearCampos();

                this.lblEstadoEvaluaciones.Text = "Nueva evaluación";
                this.lblEstadoEvaluaciones.ForeColor = Color.Green;
            }
            else if (estado == "3")
            {
                this.desbloquearCampos();
                this.lblEstadoEvaluaciones.Text = "Complete los datos para finalizar la evaluación del video seleccionado.";
                this.lblEstadoEvaluaciones.ForeColor = Color.Green;
                this.Session["notaAdicional"] = "no";
              

                this.r1.Enabled = true;
                this.r2.Enabled = true;
                this.r3.Enabled = true;
                this.r4.Enabled = true;
                this.r5.Enabled = true;

                this.lblEstado.Text = "";
                this.lblEstado.Text = "";
                this.Button1.Visible = true;
                this.PanelEncabezado.Visible = true;
                this.btnNuevo.Visible = false;
                this.btnAddCalificacion.Visible = false;
                this.btnFinalizar.Visible = true;
                this.btnEvaluar.Visible = true;
                this.Session["videoId"] = videoID.ToString();


                this.r1_copy.SelectedValue = "";
                this.r2_copy.SelectedValue = "";
                this.r3_copy.SelectedValue = "";
                this.r4_copy.SelectedValue = "";
                this.r5_copy.SelectedValue = "";
            }
            
            else if (estado == "1")
            {
                this.btnFinalizar.Visible = false;
                this.btnEvaluar.Visible = false;
                this.btnAddCalificacion.Visible = true;
                this.btnNuevo.Visible = true;

                this.r1.Enabled = false;
                this.r2.Enabled = false;
                this.r3.Enabled = false;
                this.r4.Enabled = false;
                this.r5.Enabled = false;


                //ocultar columna
                this.encabezado.Visible = false;
                this.fila1.Visible = false;
                this.fila1_sinNada.Visible = false;
                this.fil2.Visible = false;
                this.fila3.Visible = false;
                this.fila4.Visible = false;
                this.fila5.Visible = false;

                this.lblEstadoEvaluaciones.Text = "El video fue evaluado";
                this.lblEstadoEvaluaciones.ForeColor = Color.Green;
                this.Session["videoId"] = null;
                this.r1_copy.SelectedValue = "";
                this.r2_copy.SelectedValue = "";
                this.r3_copy.SelectedValue = "";
                this.r4_copy.SelectedValue = "";
                this.r5_copy.SelectedValue = "";
                //obtener datos

                this.lblEstado.Text = "";
                this.Button1.Visible = true;
                this.PanelEncabezado.Visible = true;
                this.bloquearCampos();
                this.limpiarCampos();
               
            }

            if (dtVideo.Rows.Count > 0)
            {
                a1.Text = dtVideo.Rows[0]["a1"].ToString();
                a11.Text = dtVideo.Rows[0]["a11"].ToString();
                a2.Text = dtVideo.Rows[0]["a2"].ToString();
                a22.Text = dtVideo.Rows[0]["a22"].ToString();
                a3.Text = dtVideo.Rows[0]["a3"].ToString();
                a33.Text = dtVideo.Rows[0]["a33"].ToString();
                r1.SelectedValue = dtVideo.Rows[0]["r1"].ToString();
                r1_copy.SelectedValue = dtVideo.Rows[0]["r1Extra"].ToString();
                a4.Text = dtVideo.Rows[0]["a4"].ToString();
                a44.Text = dtVideo.Rows[0]["a44"].ToString();
                r2.SelectedValue = dtVideo.Rows[0]["r2"].ToString();
                r2_copy.SelectedValue = dtVideo.Rows[0]["r2Extra"].ToString();
                a6.Text = dtVideo.Rows[0]["a6"].ToString();
                a66.Text = dtVideo.Rows[0]["a66"].ToString();
                a7.Text = dtVideo.Rows[0]["a7"].ToString();
                a77.Text = dtVideo.Rows[0]["a77"].ToString();
                a8.Text = dtVideo.Rows[0]["a8"].ToString();
                a88.Text = dtVideo.Rows[0]["a88"].ToString();
                r3.SelectedValue = dtVideo.Rows[0]["r3"].ToString();
                r3_copy.SelectedValue = dtVideo.Rows[0]["r3Extra"].ToString();
                a9.Text = dtVideo.Rows[0]["a9"].ToString();
                a99.Text = dtVideo.Rows[0]["a99"].ToString();
                a10.Text = dtVideo.Rows[0]["a10"].ToString();
                a1010.Text = dtVideo.Rows[0]["a1010"].ToString();
                aa11.Text = dtVideo.Rows[0]["aa11"].ToString();
                aa1111.Text = dtVideo.Rows[0]["aa1111"].ToString();
                r4.SelectedValue = dtVideo.Rows[0]["r4"].ToString();
                r4_copy.SelectedValue = dtVideo.Rows[0]["r4Extra"].ToString();
                a12.Text = dtVideo.Rows[0]["a12"].ToString();
                a1212.Text = dtVideo.Rows[0]["a1212"].ToString();
                a13.Text = dtVideo.Rows[0]["a13"].ToString();
                a1313.Text = dtVideo.Rows[0]["a1313"].ToString();
                r5.SelectedValue = dtVideo.Rows[0]["r5"].ToString();
                r5_copy.SelectedValue = dtVideo.Rows[0]["r5Extra"].ToString();
                a14.SelectedValue = dtVideo.Rows[0]["a14"].ToString();
                a1414.Text = dtVideo.Rows[0]["a1414"].ToString();
                a15.SelectedValue = dtVideo.Rows[0]["a15"].ToString();
                a1515.Text = dtVideo.Rows[0]["a1515"].ToString();
            }
            this.btnCancelar.Visible = false;
            //this.a1414.Enabled = false;
            //this.a1515.Enabled = false;
        }
    }

}
