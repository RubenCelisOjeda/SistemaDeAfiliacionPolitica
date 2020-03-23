
using Data.Access.Layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace campo
{
	public class DAfiliacion_Ciudadano
	{

		#region Get
		/// <summary>
		/// Selects a single record from the tbl_Afiliacion_Ciudadano table.
		/// </summary>
		/// <summary>
		public static DataTable Get()
		{
			DBAccess cn = new DBAccess();

			return cn.ExecuteDataTable("spr_Get_Afiliacion_Ciudadano");
		}

		#endregion

		#region Get/Id
		/// <summary>
		/// Selects a single record from the tbl_Afiliacion_Ciudadano table.
		/// </summary>
		/// <summary>
		public static DataTable Get(int id)
		{
			DBAccess cn = new DBAccess();

			cn.AddParameter("@Id",id);
			return cn.ExecuteDataTable("spr_Get_by_Afiliacion_Ciudadano");
		}

        #endregion

        #region Filter
        /// <summary>
        /// Selects a single record from the tbl_Afiliacion_Ciudadano table.
        /// </summary>
        /// <summary>
        public static DataTable Filter(string valor)
        {
            DBAccess cn = new DBAccess();

            cn.AddParameter("@valor", valor);
            return cn.ExecuteDataTable("spr_Filtro_Afiliacion");
        }
        #endregion

        #region Filter
        /// <summary>
        /// Selects a single record from the tbl_Afiliacion_Ciudadano table.
        /// </summary>
        /// <summary>
        public static DataTable GetEstadoRegistro()
        {
            DBAccess cn = new DBAccess();

            return cn.ExecuteDataTable("spr_Get_Estado_Registro");
        }
        #endregion

        #region Add
        /// <summary>
        /// Saves a record to the tbl_Afiliacion_Ciudadano table.
        /// </summary>
        public static int Add(Afiliacion_Ciudadano entity)
		{
			DBAccess cn = new DBAccess();

            cn.AddParameter("@NumeroFicha", entity.NumeroFicha);
			cn.AddParameter("@Alcanze_Organizacion", entity.Alcanze_Organizacion);
			cn.AddParameter("@Region_Ubicacion_Afiliacion", entity.Region_Ubicacion_Afiliacion);
			cn.AddParameter("@Fecha_Afiliacion", entity.Fecha_Afiliacion);
			cn.AddParameter("@Apellido_Paterno", entity.Apellido_Paterno);
			cn.AddParameter("@Apellid_Materno", entity.Apellid_Materno);
			cn.AddParameter("@Nombres", entity.Nombres);
			cn.AddParameter("@Dni", entity.Dni);
			cn.AddParameter("@Fecha_Nacimiento", entity.Fecha_Nacimiento);
			cn.AddParameter("@Estado_Civil", entity.Estado_Civil);
			cn.AddParameter("@Sexo", entity.Sexo);
			cn.AddParameter("@Lugar_Nacimiento", entity.Lugar_Nacimiento);
			cn.AddParameter("@Region", entity.Region);
			cn.AddParameter("@Provincia", entity.Provincia);
			cn.AddParameter("@Distrito", entity.Distrito);
			cn.AddParameter("@Avenida_Calle_Jiron", entity.Avenida_Calle_Jiron);
			cn.AddParameter("@Numero", entity.Numero);
			cn.AddParameter("@Urbanizacion_Sector_Caserio", entity.Urbanizacion_Sector_Caserio);
			cn.AddParameter("@Telefono", entity.Telefono);
			cn.AddParameter("@Email", entity.Email);
			cn.AddParameter("@Img", entity.Img);
			cn.AddParameter("@Path", entity.Path);
			cn.AddParameter("@TypeImg", entity.TypeImg);
			cn.AddParameter("@Estado", entity.Estado);
			cn.AddParameter("@FechaRegistro", entity.FechaRegistro);
            cn.AddParameterOutput("@Id", 0);

            int ejecutado = 0;
            ejecutado = cn.ExecuteNonQuery("spr_Add_Afiliacion_Ciudadano");

            if (ejecutado == 0)
            {
                ejecutado = 0;
            }
            else
            {
                ejecutado = 1;
                entity.Id = cn.GetParameterOutputInt("@Id");
            }

            return ejecutado;

        }

        #endregion

        #region UpdateEstadoRegistro
        /// <summary>
        /// Updates a record in the tbl_Afiliacion_Ciudadano table.
        /// </summary>
        public static int UpdateEstadoRegistro(int id,int estadoRegistro)
        {
            DBAccess cn = new DBAccess();

            cn.AddParameter("@Id", id);
            cn.AddParameter("@Estado", estadoRegistro);
           
            return cn.ExecuteNonQuery("spr_Update_Estado_Registro");
        }

        #endregion

        #region Update
        /// <summary>
        /// Updates a record in the tbl_Afiliacion_Ciudadano table.
        /// </summary>
        public static int Update(Afiliacion_Ciudadano entity)
		{
			DBAccess cn = new DBAccess();

			cn.AddParameter("@Id", entity.Id);
			cn.AddParameter("@NumeroFicha", entity.NumeroFicha);
			cn.AddParameter("@Alcanze_Organizacion", entity.Alcanze_Organizacion);
			cn.AddParameter("@Region_Ubicacion_Afiliacion", entity.Region_Ubicacion_Afiliacion);
			cn.AddParameter("@Fecha_Afiliacion", entity.Fecha_Afiliacion);
			cn.AddParameter("@Apellido_Paterno", entity.Apellido_Paterno);
			cn.AddParameter("@Apellid_Materno", entity.Apellid_Materno);
			cn.AddParameter("@Nombres", entity.Nombres);
			cn.AddParameter("@Dni", entity.Dni);
			cn.AddParameter("@Fecha_Nacimiento", entity.Fecha_Nacimiento);
			cn.AddParameter("@Estado_Civil", entity.Estado_Civil);
			cn.AddParameter("@Sexo", entity.Sexo);
			cn.AddParameter("@Lugar_Nacimiento", entity.Lugar_Nacimiento);
			cn.AddParameter("@Region", entity.Region);
			cn.AddParameter("@Provincia", entity.Provincia);
			cn.AddParameter("@Distrito", entity.Distrito);
			cn.AddParameter("@Avenida_Calle_Jiron", entity.Avenida_Calle_Jiron);
			cn.AddParameter("@Numero", entity.Numero);
			cn.AddParameter("@Urbanizacion_Sector_Caserio", entity.Urbanizacion_Sector_Caserio);
			cn.AddParameter("@Telefono", entity.Telefono);
			cn.AddParameter("@Email", entity.Email);
			cn.AddParameter("@Img", entity.Img);
			cn.AddParameter("@Path", entity.Path);
			cn.AddParameter("@TypeImg", entity.TypeImg);
			cn.AddParameter("@Estado", entity.Estado);
			cn.AddParameter("@FechaRegistro", entity.FechaRegistro);
			cn.AddParameter("@FechaModifcacion", entity.FechaModifcacion);

			return cn.ExecuteNonQuery("spr_Update_Afiliacion_Ciudadano");
		}

		#endregion

		#region Delete
		/// <summary>
		/// Selects a single record from the tbl_Afiliacion_Ciudadano table.
		/// </summary>
		/// <summary>
		public static int Delete(int id)
		{
			DBAccess cn = new DBAccess();

			cn.AddParameter("@Id",id);
			return cn.ExecuteNonQuery("spr_Delete_Afiliacion_Ciudadano");
		}

		#endregion

	}
}
