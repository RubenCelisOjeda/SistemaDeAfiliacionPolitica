using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Evaluacion.BOL
{
    public class Calificacion
    {
        public Calificacion()
        {

        }

        public int IdEvaluacion { get; set; }
        public string Sesion { get; set; }
        public string Evaluador { get; set; }
        public string IdVideo { get; set; }
        public string Docente { get; set; }
        public string D1 { get; set; }
        public string D2 { get; set; }
        public string D3 { get; set; }
        public string D4 { get; set; }
        public string D5 { get; set; }
    }
}
