using Evaluacion.BOL;
using Evaluacion.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.EdigitadorAlertas
{
    public partial class CalificacionFinalizada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.GetEvaluacionFinalizada();
        }

        private void GetEvaluacionFinalizada()
        {
            DataTable dtEvaluacionFinalizada = null;
            dtEvaluacionFinalizada = EvaluacionVideos.GetEvaluacionFinalizada(1);

            if (dtEvaluacionFinalizada.Rows.Count > 0)
            {
                this.griViewEvalucionFinalizada.DataSource = dtEvaluacionFinalizada;
                this.griViewEvalucionFinalizada.DataBind();
            }
        }

        protected void griViewEvalucionFinalizada_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.griViewEvalucionFinalizada.EditIndex = e.NewEditIndex;
            this.GetEvaluacionFinalizada();

            int rowIndex = e.NewEditIndex;

            var id = Convert.ToInt32(this.griViewEvalucionFinalizada.DataKeys[rowIndex]["id"].ToString());

            if (EvaluacionVideos.ValidarEvaluacionHabilitada(Convert.ToInt16(id)) == 0)
            {

                e.Cancel = true;
                this.lblMensage.Text = "La evaluación ya ha sido habilitada,comuniquese con el administrador";
            }
            else
            {
                this.griViewEvalucionFinalizada.Rows[e.NewEditIndex].Cells[2].Enabled = false;
                this.griViewEvalucionFinalizada.Rows[e.NewEditIndex].Cells[3].Enabled = false;
                this.griViewEvalucionFinalizada.Rows[e.NewEditIndex].Cells[14].Enabled = false;
                this.griViewEvalucionFinalizada.Rows[e.NewEditIndex].Cells[15].Enabled = false;
                this.griViewEvalucionFinalizada.Rows[e.NewEditIndex].Cells[16].Enabled = false;
            }
        }

        protected void griViewEvalucionFinalizada_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.griViewEvalucionFinalizada.EditIndex = -1;
            this.GetEvaluacionFinalizada();
        }

        protected void griViewEvalucionFinalizada_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = griViewEvalucionFinalizada.Rows[e.RowIndex];
            //string column1Value = ((TextBox)row.Cells[0].Controls[0]).Text;
           
            var prueba1 = e.NewValues["r1Extra"].ToString();
            var prueba = ((TextBox)griViewEvalucionFinalizada.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            var este = e.NewValues["r1Extra"].ToString();
            string bookname = ((TextBox)(griViewEvalucionFinalizada.Rows[e.RowIndex].Cells[1].Controls[0])).Text;

            // OR
            string bookname2 = (griViewEvalucionFinalizada.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            griViewEvalucionFinalizada.EditIndex = -1;  // reset the edit index

            var id = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["id"].ToString();
            var videoID = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["videoID"].ToString();


            var evaluador = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["evaluador"].ToString();
            var r1 = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r1"].ToString();
            var r1Extra = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r1Extra"].ToString();
            var r2 = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r2"].ToString();
            var r2Extra = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r2Extra"].ToString();
            var r3 = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r3"].ToString();
            var r3Extra = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r3Extra"].ToString();
            var r4 = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r4"].ToString();
            var r4Extra = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r4Extra"].ToString();
            var r5 = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r5"].ToString();
            var r5Extra = this.griViewEvalucionFinalizada.DataKeys[e.RowIndex].Values["r5Extra"].ToString();

            EvalucionVideoHabilitada entity = new EvalucionVideoHabilitada()
            {
                R1 = r1,
                R1Extra = r1Extra,
                R2 = r2,
                R2Extra = r2Extra,
                R3 = r3,
                R3Extra = r3Extra,
                R4 = r4,
                R4Extra = r4Extra,
                R5 = r5,
                R5Extra = r5Extra,
                Habilitar = 1,
            };

            if (EvaluacionVideos.UpdateEvaluacionHabilita(entity) == 0)
            {
                this.lblMensage.Text = "Error,comuquese con el adminsitrador";
                this.lblMensage.ForeColor = Color.Red;
            }
            else
            {
                this.lblMensage.Text = "Se actualizo correctamente";
                this.lblMensage.ForeColor = Color.Green;
                this.GetEvaluacionFinalizada();
            }
        }
    }
}