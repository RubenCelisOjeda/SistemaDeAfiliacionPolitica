using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.Eevaluador
{
    public partial class frmResultadosFinales : System.Web.UI.Page
    {
        public static int indice = 0;


        public static string dni, isep;




        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                MvgDesempeño.ActiveViewIndex = 0;

                //dni = Request.QueryString["d"].ToString();
                //isep = Request.QueryString["i"].ToString();
            }


        }

        protected void btnDesempe1_Click(object sender, EventArgs e)
        {
            MvgDesempeño.ActiveViewIndex = 0;
        }

        protected void btnDesempe2_Click(object sender, EventArgs e)
        {
            MvgDesempeño.ActiveViewIndex = 1;
        }

        protected void btnDesempe3_Click(object sender, EventArgs e)
        {

            MvgDesempeño.ActiveViewIndex = 2;

        }

        protected void btnDesempe4_Click(object sender, EventArgs e)
        {
            MvgDesempeño.ActiveViewIndex = 3;
        }

        protected void btnDesempe5_Click(object sender, EventArgs e)
        {
            MvgDesempeño.ActiveViewIndex = 4;
        }

        protected void btnDesempe6_Click(object sender, EventArgs e)
        {
            MvgDesempeño.ActiveViewIndex = 5;
        }

       

        protected void btnTerminar_Click(object sender, EventArgs e)
        {

            Response.Redirect("frmResultadosFinales.aspx?d=" + dni.ToString() + "&i=" + isep.ToString());
        }
    }
}