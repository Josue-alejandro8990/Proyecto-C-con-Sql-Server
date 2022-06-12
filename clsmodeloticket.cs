using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto.Final.BD.CLASES
{
    class clsmodeloticket
    {
        public string ticket_id { get; set; }
        public string ticket_proid { get; set; }
        public string ticket_estado { get; set; }
        public string ticket_prioid { get; set; }
        public string ticket_preftid { get; set; }
        public string ticket_fechacreacion { get; set; }
        public string ticket_fechalimite { get; set; }
        public string prob_id { get; set; }
        public string prob_tipoid { get; set; }
        public string prob_detalle { get; set; }
        public string prob_imagen { get; set; }
        public string prob_fechareporte { get; set; }
        public string prob_usid { get; set; }
        public string nombre_usuario { get; set; }
    }
}
