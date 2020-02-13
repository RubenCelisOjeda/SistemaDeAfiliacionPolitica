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
    public class Videos
    {
        private string sdni;
        private string susername;
        private string snombre;

        public string Sdni { get => sdni; set => sdni = value; }
        public string Susername { get => susername; set => susername = value; }
        public string Snombre { get => snombre; set => snombre = value; }



        public static void Insertar(string dni, string username, string nombre, string documentoAdjunto)
        {
            DBAccess db = new DBAccess();

            db.Parameters.Add(new SqlParameter("@dni", dni));
            db.Parameters.Add(new SqlParameter("@UserName", username));
            db.Parameters.Add(new SqlParameter("@nombre", nombre));
            db.Parameters.Add(new SqlParameter("@documentoAdjunto", documentoAdjunto));

            
            db.ExecuteNonQuery("sp_videoinsert");

        }


        

    }


}
