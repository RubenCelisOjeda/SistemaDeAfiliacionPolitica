using Reniec_Afiliacion.Data_Layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reniec_Afiliacion.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.IsPostBack)
            {
                this.Session.Clear();
                this.Session.RemoveAll();
                this.Session.Abandon();

                FormsAuthentication.SignOut();
            }
          
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string usuario = "";
            string passowrd = "";
            DataTable dtUsuario = null;

            usuario = this.txtUsuario.Text.Trim();
            passowrd = this.txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(usuario))
            {
                this.lblMessage.Text = "Ingrese usuario.";
                this.txtUsuario.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if(string.IsNullOrEmpty(passowrd))
            {
                this.lblMessage.Text = "Ingrese contraseña.";
                this.txtPassword.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else
            {
                dtUsuario = DConsultas.Login(usuario,passowrd);

                if (dtUsuario.Rows.Count == 0)
                {
                    this.lblMessage.Text = "Usuario y/o contraseña incorrecta.";
                    this.lblMessage.ForeColor = Color.Red;
                }
                else
                {
                    var ver = dtUsuario.Rows[0]["Usuario"].ToString();

                    this.Session["Rol"] = dtUsuario.Rows[0]["Rol"].ToString();
                    this.Session["Usuario"] = dtUsuario.Rows[0]["Usuario"].ToString();
                    FormsAuthentication.RedirectFromLoginPage(this.Session["Usuario"].ToString(), false);
                }
            }
        }
    }
}