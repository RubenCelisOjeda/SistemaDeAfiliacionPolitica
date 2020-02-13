using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Evaluacion.DAL;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.Eevaluador
{
    public partial class frmRubricaOCEvaluador : System.Web.UI.Page
    {
        private string user = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                
            }
            user = Membership.GetUser().ToString();

            dsDocente.SelectParameters["evaluador"].DefaultValue = user;
        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCargarVideo.aspx?r=" + ddlRegion.SelectedItem.Value + "&i=" + ddlSP.SelectedItem.Value);

        }

        protected void btnIr_Click(object sender, EventArgs e)
        {
            //Response.Redirect("frmCargarVideoCarga.aspx?d=" + grie.ToString() + "&i=" + ddlSP.SelectedItem.Value);



        }



      
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Session["Region"] = this.ddlRegion.SelectedItem.ToString();
            this.Session["IESP"] = this.ddlSP.SelectedItem.ToString();

            string index2 = GridView1.SelectedIndex.ToString();
            this.Session["Docente"] = this.GridView1.Rows[int.Parse(index2)].Cells[1].Text.ToString();

            dsDocente.DataBind();
            string index = GridView1.SelectedIndex.ToString();
            Label1.Text = index;
            dsDocente.DataBind();
            string documento;
            documento = Convert.ToString(GridView1.Rows[int.Parse(index)].Cells[2].Text);
            //Response.Redirect("frmRubricaOCEvaluadorEvaluacion.aspx?p=" + documento + "&i=" + ddlSP.SelectedItem.Value + "&videoID=NA");
            Response.Redirect("frmRubricaOCEvaluadorEvaluacion.aspx?p=" + documento + "&i=" + ddlSP.SelectedItem.Value + "&videoID=NA");




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("frmRubricaOCEvaluadorEvaluacion.aspx?d="+   ddldocente.SelectedItem.Value+"&i="+ddlSP.SelectedItem.Value);
        }
    }
}