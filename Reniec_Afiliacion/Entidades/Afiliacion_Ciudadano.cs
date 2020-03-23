using System;

namespace campo
{
	public class Afiliacion_Ciudadano
	{
		#region Fields

		public int Id { get; set;}
		public string NumeroFicha { get; set;}
		public string Alcanze_Organizacion { get; set;}
		public string Region_Ubicacion_Afiliacion { get; set;}
		public DateTime? Fecha_Afiliacion { get; set;}
		public string Apellido_Paterno { get; set;}
		public string Apellid_Materno { get; set;}
		public string Nombres { get; set;}
		public string Dni { get; set;}
		public DateTime? Fecha_Nacimiento { get; set;}
		public int? Estado_Civil { get; set;}
		public int? Sexo { get; set;}
		public string Lugar_Nacimiento { get; set;}
		public string Region { get; set;}
		public string Provincia { get; set;}
		public string Distrito { get; set;}
		public string Avenida_Calle_Jiron { get; set;}
		public string Numero { get; set;}
		public string Urbanizacion_Sector_Caserio { get; set;}
		public string Telefono { get; set;}
		public string Email { get; set;}
		public string Img { get; set;}
		public string Path { get; set;}
		public string TypeImg { get; set;}
		public int? Estado { get; set;}
		public DateTime? FechaRegistro { get; set;}
		public DateTime? FechaModifcacion { get; set;}

		#endregion

		#region Constructors

		/// <summary>
		/// Initializes a new instance of the tbl_Afiliacion_Ciudadano class.
		/// </summary>
		public Afiliacion_Ciudadano()
		{

		}


		#endregion
	}
}
