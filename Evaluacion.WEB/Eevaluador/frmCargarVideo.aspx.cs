﻿using System;
using System.Windows;
using System.Windows;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evaluacion.WEB.Eevaluador
{
    public partial class frmCargarVideo : System.Web.UI.Page
    {
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("frmRubricaOCEvaluadorEvaluacion.aspx?d=" +/* ddldocente.SelectedItem.Value +*/ "&i=" + ddlSP.SelectedItem.Value);
        //}

      

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                
            }

        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCargarVideo.aspx?r=" + ddlRegion.SelectedItem.Value + "&i=" + ddlSP.SelectedItem.Value);

        }

        protected void btnIr_Click(object sender, EventArgs e)
        {
            //Response.Redirect("frmCargarVideoCarga.aspx?d=" + grie.ToString() + "&i=" + ddlSP.SelectedItem.Value);


           
        }



        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

        
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


                    dsDocente.DataBind();
                    string index = GridView1.SelectedIndex.ToString();
                    Label1.Text = index;
                    dsDocente.DataBind();
            string documento;
            documento = Convert.ToString(GridView1.Rows[int.Parse(index)].Cells[2].Text);


            Response.Redirect("frmCargarVideoCarga.aspx?d=" + documento + "&i=" + ddlSP.SelectedItem.Value);





        }

      
    }
}