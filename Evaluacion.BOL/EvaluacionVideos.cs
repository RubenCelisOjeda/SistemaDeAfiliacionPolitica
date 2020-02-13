using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Evaluacion.DAL;

namespace Evaluacion.BOL
{
    public class EvaluacionVideos
    {
        public static void Insertar(
            string ficharegistro,
            string a1,
            string a11,
            string a2,
            string a22,
            string a3,
            string a33,
            string r1,
            string r1Extra,
            string a4,
            string a44,
            string a5,
            string a55,
            string r2,
            string r2Extra,
            string a6,
            string a66,
            string a7,
            string a77,
            string a8,
            string a88,
            string r3,
            string r3Extra,
            string a9,
            string a99,
            string a10,
            string a1010,
            string aa11,
            string aa1111,
            string r4,
            string r4Extra,
            string a12,
            string a1212,
            string a13,
            string a1313,
            string r5,
            string r5Extra,
            string a14,
            string a1414,
            string a15,
            string a1515,
            string docente,
            string video,
            string videoID,
            string evaluador)


        {
            DBAccess db = new DBAccess();


            db.Parameters.Add(new SqlParameter("@ficharegistro", ficharegistro));
            db.Parameters.Add(new SqlParameter("@a1", a1));
            db.Parameters.Add(new SqlParameter("@a11", a11));

            db.Parameters.Add(new SqlParameter("@a2", a2));
            db.Parameters.Add(new SqlParameter("@a22", a22));

            db.Parameters.Add(new SqlParameter("@a3", a3));
            db.Parameters.Add(new SqlParameter("@a33", a33));
            db.Parameters.Add(new SqlParameter("@r1", r1));
            db.Parameters.Add(new SqlParameter("@r1Extra", r1Extra));
            db.Parameters.Add(new SqlParameter("@a4", a4));
            db.Parameters.Add(new SqlParameter("@a44", a44));

            db.Parameters.Add(new SqlParameter("@a5", a5));
            db.Parameters.Add(new SqlParameter("@a55", a55));
            db.Parameters.Add(new SqlParameter("@r2", r2));
            db.Parameters.Add(new SqlParameter("@r2Extra", r2Extra));
            db.Parameters.Add(new SqlParameter("@a6", a6));
            db.Parameters.Add(new SqlParameter("@a66", a66));

            db.Parameters.Add(new SqlParameter("@a7", a7));
            db.Parameters.Add(new SqlParameter("@a77", a77));

            db.Parameters.Add(new SqlParameter("@a8", a8));
            db.Parameters.Add(new SqlParameter("@a88", a88));
            db.Parameters.Add(new SqlParameter("@r3", r3));
            db.Parameters.Add(new SqlParameter("@r3Extra", r3Extra));
            db.Parameters.Add(new SqlParameter("@a9", a9));
            db.Parameters.Add(new SqlParameter("@a99", a99));

            db.Parameters.Add(new SqlParameter("@a10", a10));
            db.Parameters.Add(new SqlParameter("@a1010", a1010));

            db.Parameters.Add(new SqlParameter("@aa11", aa11));
            db.Parameters.Add(new SqlParameter("@aa1111", aa1111));
            db.Parameters.Add(new SqlParameter("@r4", r4));
            db.Parameters.Add(new SqlParameter("@r4Extra", r4Extra));
            db.Parameters.Add(new SqlParameter("@a12", a12));
            db.Parameters.Add(new SqlParameter("@a1212", a1212));

            db.Parameters.Add(new SqlParameter("@a13", a13));
            db.Parameters.Add(new SqlParameter("@a1313", a1313));
            db.Parameters.Add(new SqlParameter("@r5", r5));
            db.Parameters.Add(new SqlParameter("@r5Extra", r5Extra));
            db.Parameters.Add(new SqlParameter("@a14", a14));
            db.Parameters.Add(new SqlParameter("@a1414", a1414));
            db.Parameters.Add(new SqlParameter("@a15", a15));
            db.Parameters.Add(new SqlParameter("@a1515", a1515));

            db.Parameters.Add(new SqlParameter("@docente", docente));
            db.Parameters.Add(new SqlParameter("@video", video));
            db.Parameters.Add(new SqlParameter("@videoID", videoID));
            db.Parameters.Add(new SqlParameter("@evaluador", evaluador));
            db.ExecuteNonQuery("sp_evaluacionVideosInsert");

        }

        public static DataTable GetCalifcacionUnica()
        {
            DBAccess cn = new DBAccess();
            return cn.ExecuteDataTable("spr_Get_Calificacion_Unica");
        }

        public static DataTable GetCalifcacionDistinta()
        {
            DBAccess cn = new DBAccess();
            return cn.ExecuteDataTable("spr_Get_Calificaciones_Distintas");
        }

        public static DataTable GetReportEvaluacion(int idVideo)
        {
            DBAccess cn = new DBAccess();
            cn.Parameters.Add(new SqlParameter("@idVideo", idVideo));
            return cn.ExecuteDataTable("spr_Rpt_Evaluacion_Video");
        }

        public static DataTable GetEvaluacionFinalizada(Int16 estado)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@estado", estado));
            return db.ExecuteDataTable("spr_Get_Evaluaciones_Finalizadas");
        }

        public static int ValidarEvaluacionHabilitada(Int16 id)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@id", id));
            return db.ExecuteNonQuery("spr_Valida_Evaluacion_Habilitada");
        }


        public static int ValidarEstadoVideo(int idRegistroVideo)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@idVideo", idRegistroVideo));

            DataTable dt = db.ExecuteDataTable("spr_Validar_Estado_Video");
            return Convert.ToInt32(dt.Rows[0]["estado"]);
        }

        public static int UpdateEvaluacionHabilita(EvalucionVideoHabilitada entity)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@r1", entity.R1));
            db.Parameters.Add(new SqlParameter("@r1Extra", entity.R1Extra));
            db.Parameters.Add(new SqlParameter("@r2", entity.R2));
            db.Parameters.Add(new SqlParameter("@r2Extra", entity.R2Extra));
            db.Parameters.Add(new SqlParameter("@r3", entity.R3));
            db.Parameters.Add(new SqlParameter("@r3Extra", entity.R3Extra));
            db.Parameters.Add(new SqlParameter("@r4", entity.R4));
            db.Parameters.Add(new SqlParameter("@r4Extra", entity.R4Extra));
            db.Parameters.Add(new SqlParameter("@r5", entity.R5));
            db.Parameters.Add(new SqlParameter("@r5Extra", entity.R5Extra));
            db.Parameters.Add(new SqlParameter("@habilitar", entity.Habilitar));
            return db.ExecuteNonQuery("spr_Update_Evaluacion_Habilitada");
        }


        public static void actualizar(

           string ficharegistro,
            string a1,
            string a11,
            string a2,
            string a22,
            string a3,
            string a33,
            string r1,
            string r1Extra,
            string a4,
            string a44,
            string a5,
            string a55,
            string r2,
            string r2Extra,
            string a6,
            string a66,
            string a7,
            string a77,
            string a8,
            string a88,
            string r3,
            string r3Extra,
            string a9,
            string a99,
            string a10,
            string a1010,
            string aa11,
            string aa1111,
            string r4,
            string r4Extra,
            string a12,
            string a1212,
            string a13,
            string a1313,
            string r5,
            string r5Extra,
            string a14,
            string a1414,
            string a15,
            string a1515,
            string docente,
            string video,
            string videoID,
            string evaluador,
            Int16 EstadoNotaAdicional)
        {


            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@ficharegistro", ficharegistro));
            db.Parameters.Add(new SqlParameter("@a1", a1));
            db.Parameters.Add(new SqlParameter("@a11", a11));

            db.Parameters.Add(new SqlParameter("@a2", a2));
            db.Parameters.Add(new SqlParameter("@a22", a22));

            db.Parameters.Add(new SqlParameter("@a3", a3));
            db.Parameters.Add(new SqlParameter("@a33", a33));
            db.Parameters.Add(new SqlParameter("@r1", r1));
            db.Parameters.Add(new SqlParameter("@r1Extra", r1Extra));
            db.Parameters.Add(new SqlParameter("@a4", a4));
            db.Parameters.Add(new SqlParameter("@a44", a44));

            db.Parameters.Add(new SqlParameter("@a5", a5));
            db.Parameters.Add(new SqlParameter("@a55", a55));
            db.Parameters.Add(new SqlParameter("@r2", r2));
            db.Parameters.Add(new SqlParameter("@r2Extra", r2Extra));

            db.Parameters.Add(new SqlParameter("@a6", a6));
            db.Parameters.Add(new SqlParameter("@a66", a66));

            db.Parameters.Add(new SqlParameter("@a7", a7));
            db.Parameters.Add(new SqlParameter("@a77", a77));

            db.Parameters.Add(new SqlParameter("@a8", a8));
            db.Parameters.Add(new SqlParameter("@a88", a88));
            db.Parameters.Add(new SqlParameter("@r3", r3));
            db.Parameters.Add(new SqlParameter("@r3Extra", r3Extra));
            db.Parameters.Add(new SqlParameter("@a9", a9));
            db.Parameters.Add(new SqlParameter("@a99", a99));

            db.Parameters.Add(new SqlParameter("@a10", a10));
            db.Parameters.Add(new SqlParameter("@a1010", a1010));

            db.Parameters.Add(new SqlParameter("@aa11", aa11));
            db.Parameters.Add(new SqlParameter("@aa1111", aa1111));
            db.Parameters.Add(new SqlParameter("@r4", r4));
            db.Parameters.Add(new SqlParameter("@r4Extra", r4Extra));
            db.Parameters.Add(new SqlParameter("@a12", a12));
            db.Parameters.Add(new SqlParameter("@a1212", a1212));

            db.Parameters.Add(new SqlParameter("@a13", a13));
            db.Parameters.Add(new SqlParameter("@a1313", a1313));
            db.Parameters.Add(new SqlParameter("@r5", r5));
            db.Parameters.Add(new SqlParameter("@r5Extra", r5Extra));
            db.Parameters.Add(new SqlParameter("@a14", a14));
            db.Parameters.Add(new SqlParameter("@a1414", a1414));
            db.Parameters.Add(new SqlParameter("@a15", a15));
            db.Parameters.Add(new SqlParameter("@a1515", a1515));

            db.Parameters.Add(new SqlParameter("@docente", docente));
            db.Parameters.Add(new SqlParameter("@video", video));
            db.Parameters.Add(new SqlParameter("@videoID", videoID));
            db.Parameters.Add(new SqlParameter("@evaluador", evaluador));

            db.Parameters.Add(new SqlParameter("@estadoNotaAdicional", EstadoNotaAdicional));

            db.ExecuteNonQuery("[sp_evaluacionVideosUpdate]");
            //db.ExecuteNonQuery("[sigespe_evaluacionsa].[sp_evaluacionVideosUpdate]");
            //db.ExecuteNonQuery("spr_EvaluacionVideosUpdate");
        }


        public static void actualizarTerminarNotaAdicional(

              string ficharegistro,
              string a1,
              string a11,
              string a2,
              string a22,
              string a3,
              string a33,
              string r1,
              string r1Extra,
              string a4,
              string a44,
              string a5,
              string a55,
              string r2,
              string r2Extra,
              string a6,
              string a66,
              string a7,
              string a77,
              string a8,
              string a88,
              string r3,
             string r3Extra,
              string a9,
              string a99,
              string a10,
              string a1010,
              string aa11,
              string aa1111,
              string r4,
              string r4Extra,
              string a12,
              string a1212,
              string a13,
              string a1313,
              string r5,
              string r5Extra,
              string a14,
              string a1414,
              string a15,
              string a1515,
              string docente,
              string video,
              string videoID,
              string evaluador,
              Int16 NotaAdicional)


        {
            DBAccess db = new DBAccess();



            db.Parameters.Add(new SqlParameter("@ficharegistro", ficharegistro));
            db.Parameters.Add(new SqlParameter("@a1", a1));
            db.Parameters.Add(new SqlParameter("@a11", a11));

            db.Parameters.Add(new SqlParameter("@a2", a2));
            db.Parameters.Add(new SqlParameter("@a22", a22));

            db.Parameters.Add(new SqlParameter("@a3", a3));
            db.Parameters.Add(new SqlParameter("@a33", a33));
            db.Parameters.Add(new SqlParameter("@r1", r1));
            db.Parameters.Add(new SqlParameter("@r1Extra", r1Extra));
            db.Parameters.Add(new SqlParameter("@a4", a4));
            db.Parameters.Add(new SqlParameter("@a44", a44));

            db.Parameters.Add(new SqlParameter("@a5", a5));
            db.Parameters.Add(new SqlParameter("@a55", a55));
            db.Parameters.Add(new SqlParameter("@r2", r2));
            db.Parameters.Add(new SqlParameter("@r2Extra", r2Extra));
            db.Parameters.Add(new SqlParameter("@a6", a6));
            db.Parameters.Add(new SqlParameter("@a66", a66));

            db.Parameters.Add(new SqlParameter("@a7", a7));
            db.Parameters.Add(new SqlParameter("@a77", a77));

            db.Parameters.Add(new SqlParameter("@a8", a8));
            db.Parameters.Add(new SqlParameter("@a88", a88));
            db.Parameters.Add(new SqlParameter("@r3", r3));
            db.Parameters.Add(new SqlParameter("@r3Extra", r3Extra));
            db.Parameters.Add(new SqlParameter("@a9", a9));
            db.Parameters.Add(new SqlParameter("@a99", a99));

            db.Parameters.Add(new SqlParameter("@a10", a10));
            db.Parameters.Add(new SqlParameter("@a1010", a1010));

            db.Parameters.Add(new SqlParameter("@aa11", aa11));
            db.Parameters.Add(new SqlParameter("@aa1111", aa1111));
            db.Parameters.Add(new SqlParameter("@r4", r4));
            db.Parameters.Add(new SqlParameter("@r4Extra", r4Extra));
            db.Parameters.Add(new SqlParameter("@a12", a12));
            db.Parameters.Add(new SqlParameter("@a1212", a1212));

            db.Parameters.Add(new SqlParameter("@a13", a13));
            db.Parameters.Add(new SqlParameter("@a1313", a1313));
            db.Parameters.Add(new SqlParameter("@r5", r5));
            db.Parameters.Add(new SqlParameter("@r5Extra", r5Extra));
            db.Parameters.Add(new SqlParameter("@a14", a14));
            db.Parameters.Add(new SqlParameter("@a1414", a1414));
            db.Parameters.Add(new SqlParameter("@a15", a15));
            db.Parameters.Add(new SqlParameter("@a1515", a1515));

            db.Parameters.Add(new SqlParameter("@docente", docente));
            db.Parameters.Add(new SqlParameter("@video", video));
            db.Parameters.Add(new SqlParameter("@videoID", videoID));
            db.Parameters.Add(new SqlParameter("@evaluador", evaluador));

            db.Parameters.Add(new SqlParameter("@notaAdicional", NotaAdicional));

            db.ExecuteNonQuery("spr_Finalizar_Video_Nota_Adicional");

        }


        public static void actualizarTerminar(
              
              string ficharegistro,
              string a1,
              string a11,
              string a2,
              string a22,
              string a3,
              string a33,
              string r1,
              string r1Extra,
              string a4,
              string a44,
              string a5,
              string a55,
              string r2,
              string r2Extra,
              string a6,
              string a66,
              string a7,
              string a77,
              string a8,
              string a88,
              string r3,
             string r3Extra,
              string a9,
              string a99,
              string a10,
              string a1010,
              string aa11,
              string aa1111,
              string r4,
              string r4Extra,
              string a12,
              string a1212,
              string a13,
              string a1313,
              string r5,
              string r5Extra,
              string a14,
              string a1414,
              string a15,
              string a1515,
              string docente,
              string video,
              string videoID,
              string evaluador)


        {
            DBAccess db = new DBAccess();


       
            db.Parameters.Add(new SqlParameter("@ficharegistro", ficharegistro));
            db.Parameters.Add(new SqlParameter("@a1", a1));
            db.Parameters.Add(new SqlParameter("@a11", a11));

            db.Parameters.Add(new SqlParameter("@a2", a2));
            db.Parameters.Add(new SqlParameter("@a22", a22));

            db.Parameters.Add(new SqlParameter("@a3", a3));
            db.Parameters.Add(new SqlParameter("@a33", a33));
            db.Parameters.Add(new SqlParameter("@r1", r1));
            db.Parameters.Add(new SqlParameter("@r1Extra", r1Extra));
            db.Parameters.Add(new SqlParameter("@a4", a4));
            db.Parameters.Add(new SqlParameter("@a44", a44));

            db.Parameters.Add(new SqlParameter("@a5", a5));
            db.Parameters.Add(new SqlParameter("@a55", a55));
            db.Parameters.Add(new SqlParameter("@r2", r2));
            db.Parameters.Add(new SqlParameter("@r2Extra", r2Extra));
            db.Parameters.Add(new SqlParameter("@a6", a6));
            db.Parameters.Add(new SqlParameter("@a66", a66));

            db.Parameters.Add(new SqlParameter("@a7", a7));
            db.Parameters.Add(new SqlParameter("@a77", a77));

            db.Parameters.Add(new SqlParameter("@a8", a8));
            db.Parameters.Add(new SqlParameter("@a88", a88));
            db.Parameters.Add(new SqlParameter("@r3", r3));
            db.Parameters.Add(new SqlParameter("@r3Extra", r3Extra));
            db.Parameters.Add(new SqlParameter("@a9", a9));
            db.Parameters.Add(new SqlParameter("@a99", a99));

            db.Parameters.Add(new SqlParameter("@a10", a10));
            db.Parameters.Add(new SqlParameter("@a1010", a1010));

            db.Parameters.Add(new SqlParameter("@aa11", aa11));
            db.Parameters.Add(new SqlParameter("@aa1111", aa1111));
            db.Parameters.Add(new SqlParameter("@r4", r4));
            db.Parameters.Add(new SqlParameter("@r4Extra", r4Extra));
            db.Parameters.Add(new SqlParameter("@a12", a12));
            db.Parameters.Add(new SqlParameter("@a1212", a1212));

            db.Parameters.Add(new SqlParameter("@a13", a13));
            db.Parameters.Add(new SqlParameter("@a1313", a1313));
            db.Parameters.Add(new SqlParameter("@r5", r5));
            db.Parameters.Add(new SqlParameter("@r5Extra", r5Extra));
            db.Parameters.Add(new SqlParameter("@a14", a14));
            db.Parameters.Add(new SqlParameter("@a1414", a1414));
            db.Parameters.Add(new SqlParameter("@a15", a15));
            db.Parameters.Add(new SqlParameter("@a1515", a1515));

            db.Parameters.Add(new SqlParameter("@docente", docente));
            db.Parameters.Add(new SqlParameter("@video", video));
            db.Parameters.Add(new SqlParameter("@videoID", videoID));
            db.Parameters.Add(new SqlParameter("@evaluador", evaluador));

            db.ExecuteNonQuery("sp_evaluacionVideosUpdateTerminar");

        }

        public static DataTable GetVideo(string idVideo,string evaluador)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@idVideo", idVideo));
            db.Parameters.Add(new SqlParameter("@evaluador", evaluador));
            return db.ExecuteDataTable("[dbo].[sp_Get_Evaluacion_Video]");
        }

        public static DataTable GetDetailsVideo(int id)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@id", id));
            return db.ExecuteDataTable("sp_Get_Evaluacion_Detalle_Video");
        }

        public static string BuscarSiEstadoEvaluacionTermino(string VideoId)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@idVideo", VideoId));
            return db.ExecuteScalar("sp_evaluacionVideosBuscarSiEstadoEvaluacionTermino").ToString();
        }

      


        public static DataTable BuscarEstadoEvaluacion(string VideoId,string evaluador)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@VideoId", VideoId));
            db.Parameters.Add(new SqlParameter("@evaluador", evaluador));
            return db.ExecuteDataTable("[sigespe_evaluacionsa].[sp_evaluacionVideosBuscarEstadoEvaluacion]");
            //return db.ExecuteDataTable("[dbo].[sp_evaluacionVideosBuscarEstadoEvaluacion]");
            //return db.ExecuteScalar("[spr_EvaluacionVideosBuscarEstadoEvaluacion]").ToString();
        }

        public static string ValidarEstadoNotaAdicional(string VideoId,string evaluador)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@VideoId", VideoId));
            db.Parameters.Add(new SqlParameter("@evaluador", evaluador));
            return db.ExecuteScalar("spr_Validar_Estado_Adicional").ToString();
            //return db.ExecuteScalar("[spr_EvaluacionVideosBuscarEstadoEvaluacion]").ToString();
        }


        public static DataSet BuscarSelectVideoid(string VideoId)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@VideoId", VideoId));
            return db.ExecuteDataSet("sp_evaluacionVideosBuscarSelectVideoid");
        }


    }

}
