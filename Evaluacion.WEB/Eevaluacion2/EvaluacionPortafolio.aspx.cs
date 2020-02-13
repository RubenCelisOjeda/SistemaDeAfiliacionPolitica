using Evaluacion.BOL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.Eevaluacion2
{
    public partial class EvaluacionPortafolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string filePath = "";

            if (this.fileUpload.HasFile)
            {

                Evaluacion.DAL.Docente entity = new DAL.Docente()
                {

                };


                if (this.ViewState["File"].ToString() == "portafolio")
                {
                    filePath = Server.MapPath("~/File/Docente/Portafolio/");
                    filePath = filePath + Path.GetFileName(this.fileUpload.PostedFile.FileName);
                }
                else
                {
                    filePath = Server.MapPath("~/File/Docente/Anexo/");
                    filePath = filePath + Path.GetFileName(this.fileUpload.PostedFile.FileName);
                }

                this.fileUpload.PostedFile.SaveAs(filePath);
            }
        }

        private void GuardarArchivo(Evaluacion.DAL.Docente entity, string tipo)
        {
            int status = 0;

            status = DDocente.GuardarPortafolio(entity);

            if (status == 1)
            {
                this.lblEstadoArchivo.InnerText = "Guardado";
                this.lblEstadoArchivo.Attributes.Add("color", "green");
            }
            else
            {
                this.lblEstadoArchivo.InnerText = "Ninguno";
                this.lblEstadoArchivo.Attributes.Add("color", "red");
            }
        }

        protected void btnPortafolio_Click(object sender, EventArgs e)
        {
            this.ViewState["File"] = "portafolio";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"$('#myModal').modal('show');");
            sb.Append(@"</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());
        }

        protected void btnAnexo_Click(object sender, EventArgs e)
        {
            this.ViewState["File"] = "anexo";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"$('#myModal').modal('show');");
            sb.Append(@"</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());
        }
    }
}