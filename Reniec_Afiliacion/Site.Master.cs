using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reniec_Afiliacion
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.IsPostBack)
            {
                
            }

            if (this.Session["Usuario"] == null)
            {
                this.btnCerrarSesion.Visible = false;
            }
            else
            {
                this.btnCerrarSesion.Visible = true;
            }
        }

        protected void btnCerrarSesion_Click(object sender,EventArgs e)
        {
            this.Session.Abandon();
            this.Session.Clear();
            this.Session.RemoveAll();

            this.Response.Redirect("/Default.aspx");
        }
    }
}