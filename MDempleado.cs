using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto.Final.BD.CLASES
{
    class MDempleado
    {
        public int Puesto_id { get; set; }
        public int Emp_id { get; set; }
        public int Dep_id { get; set; }
        public int Ubic_id { get; set; }
        public int Us_id { get; set; }
        public int Equipo_id { get; set; }
        public string Emp_nombre { get; set; }
        public string Emp_puesto { get; set; }
        public string equipo_nombre { get; set; }
        public string Emp_apellidos { get; set; }
        public string Emp_dpi { get; set; }
        public string Emp_pass { get; set; }
        public string Emp_user { get; set; }

    }
}
