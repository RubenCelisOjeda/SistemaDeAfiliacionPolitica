using campo;
using Microsoft.Reporting.WebForms;
using Newtonsoft.Json;
using Reniec_Afiliacion.Data_Layer;
using Reniec_Afiliacion.Reniec;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reniec_Afiliacion.Afiliacion
{
    public partial class RegistroCiudadano : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.IsPostBack)
            {
                this.GetRegion();
            }
        }

        private bool ConsultaReniecDNi()
        {
            bool IsValid = false;

            try
            {
                if (string.IsNullOrEmpty(this.txtDni2.Text))
                {
                    this.lblMessage.Text = "Ingrese dni";
                    this.txtDni2.Focus();
                    this.lblMessage.ForeColor = Color.Red;
                }
                else
                {
                    var dni = this.txtDni2.Text.Trim();

                    WebRequest request = WebRequest.Create("https://dniruc.apisperu.com/api/v1/dni/" + dni + "?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6InNpc3RlbWFzLmNlbGlzQGdtYWlsLmNvbSJ9.-HLVT8xTdYDuaO9ultyGRfCHI3aR7KfKTUUNwF4xqZI");
                    request.Credentials = CredentialCache.DefaultCredentials;

                    WebResponse response = request.GetResponse();
                    using (Stream dataStream = response.GetResponseStream())
                    {
                        // Open the stream using a StreamReader for easy access.  
                        StreamReader reader = new StreamReader(dataStream);
                        string responseFromServer = reader.ReadToEnd();
                        var data = JsonConvert.DeserializeObject<Ciudadano>(responseFromServer);

                        if (!string.IsNullOrEmpty(data.codVerifica) && !string.IsNullOrEmpty(data.apellidoPaterno) && 
                            !string.IsNullOrEmpty(data.apellidoMaterno) && !string.IsNullOrEmpty(data.nombres))
                        {
                            this.txtDni.Text = data.dni.ToString().Trim();
                            var usu_cui = data.codVerifica.ToString().Trim();
                            this.txtApellidoPaterno.Text = data.apellidoPaterno.ToString().Trim();
                            this.txtApellidoMaterno.Text = data.apellidoMaterno.ToString().Trim();
                            this.txtNombres.Text = data.nombres;

                            this.lblMessage.Text = "Datos encontrados correctamente en la RENIEC,complete los datos faltantes si es neceseario.";
                            this.lblMessage.ForeColor = Color.Green;

                            this.btnImprimir.Enabled = true;
                            this.btnImprimir2.Enabled = true;
                            IsValid = true;
                        }
                        else
                        {
                            this.lblMessage.Text = "No existe la persona consultada,registro los datos manualmente.";
                            this.lblMessage.ForeColor = Color.Red;
                            IsValid = false;
                        }
                    }

                    // Close the response.  
                    response.Close();
                }
                
            }
            catch (Exception ex)
            {

                this.lblMessage.Text = "Documento ingresado inválido.";
                this.lblMessage.ForeColor = Color.Red;
                IsValid = false;
            }
            return IsValid;
        }

        protected void btnConsultaReniec_Click(object sender, EventArgs e)
        {
            this.ConsultaReniecDNi();
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            if (this.drowLisNacional.SelectedValue == "0")
            {
                this.lblMessage.Text = "Seleccione el alcanze.";
                this.drowLisNacional.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if (string.IsNullOrEmpty(this.txtFechaAfiliacion.Text))
            {
                this.lblMessage.Text = "Seleccione la fecha de afiliación";
                this.txtFechaAfiliacion.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if (string.IsNullOrEmpty(this.txtApellidoPaterno.Text))
            {
                this.lblMessage.Text = "Ingrese apellido paterno";
                this.txtApellidoPaterno.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if(string.IsNullOrEmpty(this.txtApellidoMaterno.Text))
            {
                this.lblMessage.Text = "Ingrese apellido materno";
                this.txtApellidoMaterno.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if(string.IsNullOrEmpty(this.txtNombres.Text))
            {
                this.lblMessage.Text = "Ingrese nombres";
                this.txtNombres.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if(string.IsNullOrEmpty(this.cboFechaNacimiento.Text))
            {
                this.lblMessage.Text = "Seleccione la fecha de nacimiento";
                this.cboFechaNacimiento.Focus();
                this.lblMessage.ForeColor = Color.Red;

            }
            else if (string.IsNullOrEmpty(this.cboFechaNacimiento.Text))
            {
                this.lblMessage.Text = "Seleccione la fecha de nacimiento";
                this.cboFechaNacimiento.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if (this.drowListEstadoCivil.SelectedValue == "0")
            {
                this.lblMessage.Text = "Seleccione un estado civil";
                this.drowListEstadoCivil.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if (this.drowListSexo.SelectedValue == "0")
            {
                this.lblMessage.Text = "Seleccione un sexo";
                this.drowListSexo.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else if (string.IsNullOrEmpty(this.txtLugarNacimiento.Text))
            {
                this.lblMessage.Text = "Ingrese lugar de nacimiento";
                this.txtLugarNacimiento.Focus();
                this.lblMessage.ForeColor = Color.Red;
            }
            else
            {
                if (this.ValidarCorreo() == true)
                {
                    this.lblMessage.Text = "Correo ingresado ya existe,ingrese otro.";
                    this.txtCorreo.Focus();
                    this.lblMessage.ForeColor = Color.Red;
                }
                else if(this.ValidarDni(this.txtDni2.Text.Trim()) == true)
                {
                    this.lblMessage.Text = "El dni " + this.txtDni2.Text.Trim() + " se encuentra registrado en HACER PAÍS,ingrese otro.";
                    this.txtDni2.Focus();
                    this.lblMessage.ForeColor = Color.Red;
                }
                else
                {
                    if (this.ConsultaReniecDNi() == true)
                    {
                        if (this.GuardarAfiliado() == 1)
                        {
                            this.Response.Redirect("/Impresion/ReporteAfiliacion.aspx?p=" + this.ViewState["IdAfiliacion"].ToString());
                        }
                    }
                }
            }
        }

        private bool ValidarCorreo()
        {
            bool IsValid = false;
            string  email = "";

            try
            {
                email = DConsultas.ValidarEmail(this.txtCorreo.Text.Trim());
            }
            catch { email = ""; }

            if (string.IsNullOrEmpty(email))
            {
                IsValid = false;
            }
            else
            {
                IsValid = true;
            }

            return IsValid;
        }

        private bool ValidarDni(string dni)
        {
            bool IsValid = false;

            try
            {
                dni = DConsultas.ValidarDni(this.txtDni2.Text.Trim());
            }
            catch { dni = ""; }

            if (string.IsNullOrEmpty(dni))
            {
                IsValid = false;
            }
            else
            {
                IsValid = true;
            }

            return IsValid;
        }

        private int GuardarAfiliado()
        {
            int IsValid = 0;

            string img = "";
            string typeImg = "";

            DateTime now = TimeZoneInfo.ConvertTime(DateTime.UtcNow, TimeZoneInfo.FindSystemTimeZoneById("SA Pacific Standard Time"));


            img = this.fileUplodImg.FileName;
            typeImg = Path.GetExtension(this.fileUplodImg.FileName);

            if (this.fileUplodImg.HasFile)
            {
                if (File.Exists(Path.Combine(this.Server.MapPath("~/Img/Afiliacion/" + img))))
                {
                    File.Delete(Path.Combine(this.Server.MapPath("~/Img/Afiliacion/" + img)));
                }

                this.fileUplodImg.SaveAs((Path.Combine(this.Server.MapPath("~/Img/Afiliacion/" + img))));
            }
            else
            {
                img = "ImagenPredeterminada.png";
            }

            Afiliacion_Ciudadano pEntity = new Afiliacion_Ciudadano();
            pEntity.Id = 0;
            pEntity.NumeroFicha = string.IsNullOrEmpty(this.txtNroFicha.Text) ? "" : this.txtNroFicha.Text;
            pEntity.Alcanze_Organizacion = string.IsNullOrEmpty(this.drowLisNacional.Text) ? "" : this.drowLisNacional.Text;
            pEntity.Region_Ubicacion_Afiliacion = string.IsNullOrEmpty(this.txtDesRegion.Text) ? "" : this.txtDesRegion.Text;
            pEntity.Fecha_Afiliacion = Convert.ToDateTime(this.txtFechaAfiliacion.Text);
            pEntity.Apellido_Paterno = string.IsNullOrEmpty(this.txtApellidoPaterno.Text) ? "" : this.txtApellidoPaterno.Text;
            pEntity.Apellid_Materno = string.IsNullOrEmpty(this.txtApellidoMaterno.Text) ? "" : this.txtApellidoMaterno.Text;
            pEntity.Nombres = string.IsNullOrEmpty(this.txtNombres.Text) ? "" : this.txtNombres.Text;
            pEntity.Dni = string.IsNullOrEmpty(this.txtDni.Text) ? "" : this.txtDni.Text;
            pEntity.Fecha_Nacimiento = Convert.ToDateTime(this.cboFechaNacimiento.Text);
            pEntity.Estado_Civil = Convert.ToInt32(this.drowListEstadoCivil.SelectedValue);
            pEntity.Sexo = Convert.ToInt32(this.drowListSexo.SelectedValue);
            pEntity.Lugar_Nacimiento = string.IsNullOrEmpty(this.txtLugarNacimiento.Text) ? "" : this.txtLugarNacimiento.Text;
            pEntity.Region = this.cboRegion.SelectedItem.Text;
            pEntity.Provincia = this.cboProvincia.SelectedItem.Text;
            pEntity.Distrito = this.cboDistrito.SelectedItem.Text;
            pEntity.Avenida_Calle_Jiron = string.IsNullOrEmpty(this.txtAveCalleJiron.Text) ? "" : this.txtAveCalleJiron.Text;
            pEntity.Numero = string.IsNullOrEmpty(this.txtNumero.Text) ? "" : this.txtNumero.Text;
            pEntity.Urbanizacion_Sector_Caserio = string.IsNullOrEmpty(this.txtUrbaSectorCaserio.Text) ? "" : this.txtUrbaSectorCaserio.Text;
            pEntity.Telefono = string.IsNullOrEmpty(this.txtTelefono.Text) ? "" : this.txtTelefono.Text;
            pEntity.Email = string.IsNullOrEmpty(this.txtCorreo.Text) ? "" : this.txtCorreo.Text;
            pEntity.Img = img;
            pEntity.Path = Path.Combine(this.Server.MapPath("/Img/Afiliacion/" + img));
            pEntity.TypeImg = typeImg;
            pEntity.Estado = 1;
            pEntity.FechaRegistro = now;
            pEntity.FechaModifcacion = null;

            IsValid = DAfiliacion_Ciudadano.Add(pEntity);

            if (IsValid == 0)
            {
                this.lblMessage.Text = "Erro,comuniquese con el administrador.";
                this.lblMessage.ForeColor = Color.Red;
                IsValid = 0;
            }
            else
            {
                this.lblMessage.Text = "Se guardo correctamente.";
                this.lblMessage.ForeColor = Color.Green;
                IsValid = 1;
                this.ViewState["IdAfiliacion"] = pEntity.Id.ToString();

            }
            return IsValid;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("/Afiliacion/RegistroCiudadano.aspx");
        }

        protected void cboRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(this.cboRegion.SelectedValue) == 0)
            {
                this.cboProvincia.Items.Clear();
                this.cboDistrito.Items.Clear();

                this.cboProvincia.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
                this.cboDistrito.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
            }
            else
            {
                this.GetProvincia(Convert.ToInt16(this.cboRegion.SelectedValue));
                this.cboProvincia.Focus();
            }
        }

        protected void cboProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(this.cboProvincia.SelectedValue) == 0)
            {
                this.cboDistrito.Items.Clear();
                this.cboDistrito.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
            }
            else
            {
                this.GetDistrito(Convert.ToInt16(this.cboProvincia.SelectedValue));
                this.cboDistrito.Focus();
            }
        }

        private void GetRegion()
        {
            DataTable dtRegion = null;
            dtRegion = DConsultas.GetRegion();

            if (dtRegion.Rows.Count > 0)
            {
                this.cboRegion.DataSource = dtRegion;
                this.cboRegion.DataTextField = "T_Nombre";
                this.cboRegion.DataValueField = "ID_Region";
                this.cboRegion.DataBind();
                this.cboRegion.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
            }
        }

        private void GetProvincia(int pIdProvincia)
        {
            DataTable dtProvincia = null;
            dtProvincia = DConsultas.GetProvincia(pIdProvincia);

            if (dtProvincia.Rows.Count > 0)
            {
                this.cboProvincia.DataSource = dtProvincia;
                this.cboProvincia.DataTextField = "T_Nombre";
                this.cboProvincia.DataValueField = "ID_Provincia";
                this.cboProvincia.DataBind();
                this.cboProvincia.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
            }
        }

        private void GetDistrito(int pIdProvincia)
        {
            DataTable dtTypeUser = null;
            dtTypeUser = DConsultas.GetDistrito(pIdProvincia);

            if (dtTypeUser.Rows.Count > 0)
            {
                this.cboDistrito.DataSource = dtTypeUser;
                this.cboDistrito.DataTextField = "T_Nombre";
                this.cboDistrito.DataValueField = "ID_Distrito";
                this.cboDistrito.DataBind();
                this.cboDistrito.Items.Insert(0, new ListItem("[Seleccionar]", "0"));
            }
        }
    }
}