using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Evaluacion.DAL
{
    public class Docente
    {
        public Docente()
        {

        }

        public int Id { get; set; }
        public int IdDocente { get; set; }

        public string FileNamePortafolio { get; set; }
        public string UrlPortafolio { get; set; }
        public string EstadoPortafolio { get; set; }

        public string FileNameAnexo { get; set; }
        public string UrlAnexo { get; set; }
        public string EstadoAnexp { get; set; }

        public bool FlagPortafolio { get; set; }
        public bool FlaxAnexo { get; set; }

        public DateTime DateCreate { get; set; }
        public DateTime DateModidy { get; set; }
        public int UserCreate { get; set; }
        public int UserModify { get; set; }
    }
}
