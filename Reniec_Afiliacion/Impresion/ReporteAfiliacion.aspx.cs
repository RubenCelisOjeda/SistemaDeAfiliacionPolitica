using campo;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reniec_Afiliacion.Impresion
{
    public partial class ReporteAfiliacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.IsPostBack)
            {
                var id = Convert.ToInt32(this.Request.QueryString["p"]);

                this.GetRptAfiliacion(id);
            }
        }

        private void GetRptAfiliacion(int id)
        {
            DataTable dtAfiliacion = null;
            dtAfiliacion = DAfiliacion_Ciudadano.Get(id);
            string img = "";
        

            ReportDataSource datasource = new ReportDataSource();
            datasource.Name = "DsDatos";
            datasource.Value = dtAfiliacion;

            img = dtAfiliacion.Rows[0]["Img"].ToString();
            string imagePath = new Uri(Server.MapPath("~/Img/Afiliacion/" + img)).AbsoluteUri;

            ReportParameter parameter = new ReportParameter("Path", imagePath);
            this.ReportViewer1.SizeToReportContent = true;
            this.ReportViewer1.AsyncRendering = true;
            this.ReportViewer1.LocalReport.SetParameters(parameter);
            this.ReportViewer1.LocalReport.DataSources.Add(datasource);
            this.ReportViewer1.LocalReport.Refresh();
          
        }


    }
}