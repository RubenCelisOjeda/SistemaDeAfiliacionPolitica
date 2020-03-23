using Data.Access.Layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Reniec_Afiliacion.Data_Layer
{
    public class DConsultas
    {
        #region GetNumeroFicha
        /// <summary>
        /// Selects a single record from the GetNumeroFicha tbl_Afiliacion_Ciudadano table.
        /// </summary>
        /// <summary>
        public static string GetNumeroFicha()
        {
            DBAccess cn = new DBAccess();

            return cn.ExecuteScalar("spr_Get_Numero_Ficha").ToString();
        }

        #endregion

        #region ValidarDni
        /// <summary>
        /// Selects a single record from the ValidarDni tbl_Afiliacion_Ciudadano table.
        /// </summary>
        /// <summary>
        public static string ValidarDni(string dni)
        {
            DBAccess cn = new DBAccess();
            cn.AddParameter("@dni", dni);
            return cn.ExecuteScalar("spr_Validar_Dni").ToString();
        }

        #endregion

        #region ValidarEmail
        /// <summary>
        /// Selects a single record from the ValidarEmail tbl_Afiliacion_Ciudadano table.
        /// </summary>
        /// <summary>
        public static string ValidarEmail(string email)
        {
            DBAccess cn = new DBAccess();
            cn.AddParameter("@email", email);
            return cn.ExecuteScalar("spr_Validar_Email").ToString();
        }

        #endregion

        #region ValidarEmail
        /// <summary>
        /// Selects a single record from the ValidarEmail tbl_Afiliacion_Ciudadano table.
        /// </summary>
        /// <summary>
        public static DataTable Login(string pUsuario,string pPassword)
        {
            DBAccess cn = new DBAccess();
            cn.AddParameter("@usuario", pUsuario);
            cn.AddParameter("@password", pPassword);

            return cn.ExecuteDataTable("spr_Login");
        }

        #endregion

        public static DataTable GetRegion()
        {
            DBAccess cn = new DBAccess();

            return cn.ExecuteDataTable("spr_Listar_Region");
        }

        public static DataTable GetProvincia(int pIdRegion)
        {
            DBAccess cn = new DBAccess();
            cn.AddParameter("@IdRegion", pIdRegion);

            return cn.ExecuteDataTable("spr_Listar_Provincia");
        }

        public static DataTable GetDistrito(int pIdProvincia)
        {
            DBAccess cn = new DBAccess();
            cn.AddParameter("@IdProvincia", pIdProvincia);

            return cn.ExecuteDataTable("spr_Listar_Distrito");
        }

    }
}