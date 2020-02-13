using System;
using System.Text;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;
using Google.Apis.Upload;
using Google.Apis.YouTube.v3;
using Google.Apis.YouTube.v3.Data;

using System.IO;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;


using Evaluacion.DAL;
using Evaluacion.BOL;

namespace Evaluacion.WEB.Eevaluador
{
    public partial class frmCargarVideoCarga : System.Web.UI.Page
    {
       

        public static int indice = 0;
        public static string dni, isep;



      
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.DataBind();

            if (!IsPostBack)
            {

              

                MvgDesempeño.ActiveViewIndex = 0;

                dni = Request.QueryString["d"].ToString();
                isep = Request.QueryString["i"].ToString();
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




                          




        protected void Button4_Click(object sender, EventArgs e)
        {


      

          

            //Literal1.Text= " <iframe width=560 height=315 src=" + "https://www.youtube.com/embed/aHl7fayjyrw"+" frameborder=0 allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + "allowfullscreen></iframe>";


            //string vCargado= "https://www.youtube.com/embed/aHl7fayjyrw";
            string vCargado= txtVideo.Text;
            lblUrl.Text = txtVideo.Text;

            // Literal1.Text= " <iframe width=560 height=315 src=" + "https://www.youtube.com/embed/aHl7fayjyrw"+" frameborder=0 allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + "allowfullscreen></iframe>";


            //Literal1.Text = " <iframe width=560 height=315 src=" + "https://www.youtube.com/embed/"+ lblUrl.Text + " frameborder=0 allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + "allowfullscreen></iframe>";

             Literal1.Text = " <iframe width=560 height=315 src="+ (lblUrl.Text).Replace( "https://youtu.be/","https://www.youtube.com/embed/")  + " frameborder=0 allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + "allowfullscreen></iframe>";



            string nombreArchivo = string.Empty;

            string destino = @"~/Archivos/";//poner la ruta donde quieres que quede el archivo
            if (FileUpload1.HasFile)
            {
                string carpetaDestino = Server.MapPath(destino);

                nombreArchivo = System.IO.Path.GetFileName(dni+'-'+FileUpload1.PostedFile.FileName);

                string SaveLocation = carpetaDestino + nombreArchivo;

                //guardamos el archivo
                FileUpload1.PostedFile.SaveAs(SaveLocation);
            }

            try
            {

                string dni  = Request.QueryString["d"].ToString();
            
            string filmador =  Membership.GetUser().ToString();
            string urlvideo = txtVideo.Text;

                Videos oVideos = new Videos();
                Videos.Insertar(dni, filmador, urlvideo,  nombreArchivo);


                lblEstado.Text = "Cargado satisfactoriamente";

                GridView1.DataBind();

            }

            catch (Exception ex)
            {
                lblEstado.Text = "Error" + ex.ToString();


                GridView1.DataBind();
            }
            GridView1.DataBind();

        }


     

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


           dsvideosCargados.DataBind();
            string index = GridView1.SelectedIndex.ToString();
            //Label1.Text = index;
            dsvideosCargados.DataBind();
            string documento;
            documento = Convert.ToString(GridView1.Rows[int.Parse(index)].Cells[2].Text);
            string video= Convert.ToString(GridView1.Rows[int.Parse(index)].Cells[3].Text);

           // Response.Redirect("frmCargarVideoCarga.aspx?d=" + documento + "&i=" + Request.QueryString["i"].ToString());

            lblUrl.Text = video;

        

            Literal1.Text = " <iframe width=560 height=315 src=" + (lblUrl.Text).Replace("https://youtu.be/", "https://www.youtube.com/embed/") + " frameborder=0 allow=" + "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" + "allowfullscreen></iframe>";

        }
    }
}