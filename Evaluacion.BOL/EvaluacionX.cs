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
    public class EvaluacionX
    {
        //private string sdni;
        //private int iid_evaluacion;
        //private int iid_evaluador;
        //private int iid_docente;
        //private int iid_tipoEvaluacion;
        //private int iid_criterio;
        //private int iid_instituto;

        public static void Insertar(string pEvaluador, string pDocente, int id_tipoEvaluacion, string criterio, string valor, string observacion, string id_instituto)
        {
            DBAccess db = new DBAccess();

            db.Parameters.Add(new SqlParameter("@pEvaluador", pEvaluador));
            db.Parameters.Add(new SqlParameter("@pDocente", pDocente));
            db.Parameters.Add(new SqlParameter("@id_tipoEvaluacion", id_tipoEvaluacion));
            db.Parameters.Add(new SqlParameter("@criterio", criterio));
            db.Parameters.Add(new SqlParameter("@valor", valor));
            db.Parameters.Add(new SqlParameter("@observacion", observacion));
            db.Parameters.Add(new SqlParameter("@id_instituto", id_instituto));


            db.ExecuteNonQuery("EvaluacionInsert");



        }

        //public static string buscaSiEvaluado(string pDocente)      
        // {
        //    DBAccess db = new DBAccess();

            
        //    db.Parameters.Add(new SqlParameter("@dnidocente", pDocente));


        //    return db.ExecuteScalar("sp_buscarSiestaEvaluado").ToString();



        //}

    }

        
    }
