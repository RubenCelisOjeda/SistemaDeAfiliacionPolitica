using campo;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reniec_Afiliacion.Admin
{
    public partial class ReporteAfiliados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (this.Session["Usuario"] == null)
                {
                    this.Response.Redirect(FormsAuthentication.LoginUrl, true);
                }
                else
                {
                    if (!this.Page.IsPostBack)
                    {
                        this.GetAfiliaciones();
                    }
                }
            }
            catch (Exception ex)
            {
                this.Response.Redirect(FormsAuthentication.LoginUrl, true);
            }
        }

        private void GetAfiliaciones()
        {
            DataTable dtAfiliacion = null;
            dtAfiliacion = DAfiliacion_Ciudadano.Get();
            this.griViewAfiliacones.DataSource = dtAfiliacion;
            this.griViewAfiliacones.DataBind();
        }

        protected void btnExportarPdf_Click(object sender,EventArgs e)
        {
            int idAfiliacion = 0;
            LinkButton btnSelect = sender as LinkButton;
            GridViewRow gvr = btnSelect.NamingContainer as GridViewRow;
            idAfiliacion = Convert.ToInt32(this.griViewAfiliacones.DataKeys[gvr.RowIndex]["Id"].ToString());
            this.ViewState["idAfiliacion"] = idAfiliacion.ToString();
            this.Response.Redirect("/Impresion/ReporteAfiliacion.aspx?p=" + idAfiliacion.ToString());
        }

        private void CreatePDF()
        {
            string img = "";

            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;

            DataTable dtAfiliacion = null;
            dtAfiliacion = DAfiliacion_Ciudadano.Get(Convert.ToInt32(this.ViewState["idAfiliacion"]));

            ReportDataSource datasource = new ReportDataSource();
            datasource.Name = "DsDatos";
            datasource.Value = dtAfiliacion;
            img = dtAfiliacion.Rows[0]["Img"].ToString();
            string imagePath = new Uri(Server.MapPath("~/Img/Afiliacion/" + img)).AbsoluteUri;

            imagePath = dtAfiliacion.Rows[0]["Path"].ToString();
            ReportParameter parameter = new ReportParameter("Path", imagePath);

            // Setup the report viewer object and get the array of bytes  
            ReportViewer viewer = new ReportViewer();
            viewer.LocalReport.ReportPath = "RptAfilicacion.rdlc";
            viewer.SizeToReportContent = true;
            viewer.AsyncRendering = true;
            viewer.LocalReport.SetParameters(parameter);
            viewer.LocalReport.DataSources.Add(datasource); // Add datasource here
            viewer.LocalReport.Refresh();

            byte[] bytes = viewer.LocalReport.Render("PDF", null, out mimeType, out encoding, out extension, out streamIds, out warnings);

            // Now that you have all the bytes representing the PDF report, buffer it and send it to the client.  
            this.Response.Buffer = true;
            this.Response.Clear();
            this.Response.ContentType = mimeType;
            this.Response.AddHeader("content-disposition", "attachment; filename=" + "RptAfiliacion" + "." + extension);
            this.Response.BinaryWrite(bytes); // create the file  
            this.Response.Flush(); // send it to the client to download  
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            DataTable dtAfiliacion = null;
            dtAfiliacion = DAfiliacion_Ciudadano.Filter(this.txtBuscar.Text);
            this.griViewAfiliacones.DataSource = dtAfiliacion;
            this.griViewAfiliacones.DataBind();
        }

        protected void griViewAfiliacones_RowDataBound(object sender,GridViewRowEventArgs e)
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataTable dtEstadoRegistro = null;
                dtEstadoRegistro = DAfiliacion_Ciudadano.GetEstadoRegistro();

                DropDownList drowList = (e.Row.FindControl("drowListEstadoRegistro") as DropDownList);

                string idAfiliacion = griViewAfiliacones.DataKeys[e.Row.RowIndex].Values[1].ToString();

                drowList.DataSource = dtEstadoRegistro;
                drowList.DataTextField = "Estado";
                drowList.DataValueField = "Id";
                drowList.DataBind();
                drowList.SelectedValue = idAfiliacion;
            }
         
        }

        protected void drowListEstadoRegistro_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idAfiliacion = 0;
            int estadoRegistro = 0;
            int exito = 0;

            DropDownList ddl = (DropDownList)sender;
            GridViewRow row = (GridViewRow)ddl.NamingContainer;
            DropDownList dropDown = (DropDownList)row.FindControl("drowListEstadoRegistro");

            estadoRegistro = Convert.ToInt32(dropDown.SelectedValue);
            idAfiliacion = Convert.ToInt32(griViewAfiliacones.DataKeys[row.RowIndex].Value);

            exito = DAfiliacion_Ciudadano.UpdateEstadoRegistro(idAfiliacion, estadoRegistro);
        }
    }
}