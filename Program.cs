using Proyecto.Final.BD.CONEXION;
using Proyecto.Final.BD.FORMULARIOS;
using Proyecto.Final.BD.FORMULARIOS.Administrador;
using Proyecto.Final.BD.FORMULARIOS.Usuario;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Proyecto.Final.BD
{
    static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new LOGIN());
        }
    }
}
