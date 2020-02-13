using Evaluacion.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Evaluacion.BOL
{
    public static class DDocente
    {
        public static int GuardarPortafolio(Docente entity)
        {
            DBAccess cn = new DBAccess();

            cn.AddParameter("@IdDocente", entity.IdDocente);
            cn.AddParameter("@FileNamePortafolio", entity.IdDocente);
            cn.AddParameter("@UrlPortafolio", entity.IdDocente);
            cn.AddParameter("@EstadoPortafolio", entity.IdDocente);
            cn.AddParameter("@FileNameAnexo", entity.IdDocente);
            cn.AddParameter("@UrlAnexo", entity.IdDocente);
            cn.AddParameter("@EstadoAnexo", entity.IdDocente);
            cn.AddParameter("@FlagPortafolio", entity.IdDocente);
            cn.AddParameter("@FlagAnexo", entity.IdDocente);
            cn.AddParameter("@FechaCreacion", entity.IdDocente);
            cn.AddParameter("@FechaModificacion", entity.IdDocente);
            cn.AddParameter("@UsuarioCreador", entity.IdDocente);
            cn.AddParameter("@UsuarioModificador", entity.IdDocente);

            return (int)cn.ExecuteNonQuery();
        }
    }
}
