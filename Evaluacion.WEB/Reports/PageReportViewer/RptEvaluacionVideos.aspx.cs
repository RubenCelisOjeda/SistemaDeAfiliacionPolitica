using Evaluacion.BOL;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.Reports.FileReportViewer
{
    public partial class RptEvaluacionVideos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!this.Page.IsPostBack)
            {
                var idVideo = Convert.ToInt32(this.Request.QueryString["p"]);
                this.GetReport(idVideo);
            }
        }

        private void GetReport(int idVideo)
        {

            reportEvaluacion.ProcessingMode = ProcessingMode.Local;
            reportEvaluacion.LocalReport.ReportPath = Server.MapPath("/Reports/ReportRdlc/ReportPrueba.rdlc");
            

            ReportDataSource datasource = new ReportDataSource("DataSet1", EvaluacionVideos.GetReportEvaluacion(idVideo));
            reportEvaluacion.LocalReport.DataSources.Clear();
            reportEvaluacion.LocalReport.DataSources.Add(datasource);
        }

    }
}