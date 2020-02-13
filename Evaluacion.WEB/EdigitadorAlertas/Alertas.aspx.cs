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


namespace Evaluacion.WEB.EdigitadorAlertas
{
    public partial class Alertas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
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
            Response.ContentType = "text/plain";
            Response.AddHeader("Content-Disposition", "attachment;filename=data.xls");
            Response.Charset = "UTF-8";
            Response.ContentEncoding = Encoding.Default;
            Response.Write(sb.ToString());
            Response.End();
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            this.gvExportarTodo.DataBind();
        }
    }
}