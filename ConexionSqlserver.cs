using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto.Final.BD.CLASES
{
    class ConexionSqlserver
    {
        public String NameServer = "MANRIQUE-GL99\\SQLEXPRESS";
        public String NameBd = "Bd1_ProyectoFinal";
        public String Security = "True";
        public SqlConnection conectarbd = new SqlConnection();
        public void ConexionBd()
        {
            String Path = "Data Source=" + NameServer + ";Initial Catalog=" + NameBd + ";Integrated Security=" + Security;
            conectarbd.ConnectionString = Path;
        }
        public void AbrirConexion()
        {
            try
            {
                ConexionBd();
                conectarbd.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro al intentar conectar con la base de datos " + ex);
            }
        }
        public void CerrarConexion()
        {
            conectarbd.Close();
        }
    }
}
