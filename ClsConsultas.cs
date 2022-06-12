using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Proyecto.Final.BD.CLASES
{
    class ClsConsultas
    {

        public string[] empleado_email { get; set; }
        public string empleado_genero { get; set; }
        public string direccion_referencia { get; set; }
        public string[] empleado_telefonos { get; set; }
        public string[] gestiones { get; set; }
        public string estadoticket { get; set; }


        ConexionSqlserver conexion = new ConexionSqlserver();

        public String[] ConsultaCorreos(String id)
        {
            conexion.AbrirConexion();
            String instruccion1 = "SELECT Email_Direccion FROM SoporteTecnico.Tb_Emails" +
                " WHERE Email_EmpleaId =" + id;
            String[] valores = new string[2];
            int i = 0;
            try
            {
                SqlCommand cm = new SqlCommand(instruccion1, conexion.conectarbd);
                SqlDataReader lectura = cm.ExecuteReader();

                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        valores[i] = Convert.ToString(lectura[0]);
                        i++;
                    }
                }
                else
                {
                    MessageBox.Show("\tLa base de datos esta vacia!!! ");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error con la base de datos" + ex);
            }
            conexion.CerrarConexion();
            return valores;
        }
        public String ConsultaGenero(String id)
        {
            conexion.AbrirConexion();
            String instruccion2 = "SELECT Genero_Nombre FROM SoporteTecnico.Tb_GenerosPersonas" +
                " WHERE Genero_Id =" + id;
            string valor = "";
            try
            {
                SqlCommand cm = new SqlCommand(instruccion2, conexion.conectarbd);
                SqlDataReader lectura = cm.ExecuteReader();

                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        valor = Convert.ToString(lectura[0]);
                    }
                }
                else
                {
                    MessageBox.Show("\tLa base de datos esta vacia!!! ");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error con la base de datos" + ex);
            }
            conexion.CerrarConexion();
            return valor;
        }
        public string Consultardireccion(String id)
        {
            conexion.AbrirConexion();
            String instruccion3 = "SELECT Direc_Referencia FROM SoporteTecnico.Tb_Direcciones" +
                " WHERE Direc_Id =" + id;
            string valores = "";
            try
            {
                SqlCommand cm = new SqlCommand(instruccion3, conexion.conectarbd);
                SqlDataReader lectura = cm.ExecuteReader();

                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        valores = Convert.ToString(lectura[0]);
                    }
                }
                else
                {
                    MessageBox.Show("\tLa base de datos esta vacia!!! ");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error con la base de datos" + ex);
            }
            conexion.CerrarConexion();
            return valores;
        }
        public String[] ConsultaTelefonos(int iddep, int idp, int id)
        {
            conexion.AbrirConexion();
            String instruccion4 = "SELECT T.Tel_Numero, TT.TipTel_Nombre FROM " +
         " SoporteTecnico.Tb_TelefonosEmpleados as TE INNER JOIN  SoporteTecnico.Tb_Telefonos as T " +
         " ON T.Tel_Id = TE.TelEmp_TelId INNER JOIN  SoporteTecnico.Tb_TelefonosTipos as TT " +
         " ON TT.TipTel_Id = T.Tel_TipTelId WHERE " +
        " TE.TelEmp_DepEmpId IN(SELECT E.Emplea_DepEmpId FROM    SoporteTecnico.Tb_Empleados as E    WHERE TE.TelEmp_DepEmpId IN(" + iddep + ")) " +
            " AND " +
        " TE.TelEmp_PuestoId IN(SELECT E.Emplea_PuestoId FROM    SoporteTecnico.Tb_Empleados as E    WHERE TE.TelEmp_PuestoId IN(" + idp + ")) " +
            " AND " +
        " TE.TelEmp_EmpleaId IN(SELECT E.Emplea_Id FROM    SoporteTecnico.Tb_Empleados as E    WHERE TE.TelEmp_EmpleaId IN(" + id + ")) ";
            String[] valor = new string[2];
            int i = 0;
            try
            {
                SqlCommand cm = new SqlCommand(instruccion4, conexion.conectarbd);
                SqlDataReader lectura = cm.ExecuteReader();
                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        valor[i] = Convert.ToString(lectura[1] + " : " + lectura[0]);
                        i++;
                    }
                }
                else
                {
                    MessageBox.Show("\tLa base de datos esta vacia!!! ");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error con la base de datos" + ex);
            }
            conexion.CerrarConexion();
            return valor;
        }
        public String[] consultagestiones(string id)
        {
            conexion.AbrirConexion();
            String instruccion3 = "SELECT US.Usu_DepEmpId,US.Usu_PuestoId,US.Usu_EmpleadoId, PT.Prob_DetalleProblema, PT.Prob_Id" +
                " FROM SoporteTecnico.Tb_Usuarios AS US JOIN SoporteTecnico.Tb_ProblemasTecnicos AS PT " +
  " ON PT.Prob_UsuId = US.Usu_Id WHERE US.Usu_Id = " + id;
            String[] valores = new string[5];
            try
            {
                SqlCommand cm = new SqlCommand(instruccion3, conexion.conectarbd);
                SqlDataReader lectura = cm.ExecuteReader();
                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        valores[0] = Convert.ToString(lectura[0]);
                        valores[1] = Convert.ToString(lectura[1]);
                        valores[2] = Convert.ToString(lectura[2]);
                        valores[3] = Convert.ToString(lectura[3]);
                        valores[4] = Convert.ToString(lectura[4]);

                    }
                }
            }
            catch (Exception ex)
            {
            }
            conexion.CerrarConexion();
            return valores;
        }

        public List<clsmodeloticket> consultatickets(string id)
        {
            conexion.AbrirConexion();
            String instruccion3 = " SELECT * FROM SoporteTecnico.Tb_TicketsReporte" +
                " AS TR JOIN SoporteTecnico.Tb_ProblemasTecnicos AS PT " +
               " ON PT.Prob_Id = TR.Ticket_ProbId WHERE PT.Prob_UsuId = " + id;
            List<clsmodeloticket> tickets = new List<clsmodeloticket>();
            clsmodeloticket md = new clsmodeloticket();
            try
            {
                SqlCommand cm = new SqlCommand(instruccion3, conexion.conectarbd);
                SqlDataReader lectura = cm.ExecuteReader();
                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        md.ticket_id = Convert.ToString(lectura[0]);
                        md.ticket_proid = Convert.ToString(lectura[1]);
                        md.ticket_estado = Convert.ToString(lectura[2]);
                        md.ticket_prioid = Convert.ToString(lectura[3]);
                        md.ticket_preftid = Convert.ToString(lectura[4]);
                        md.ticket_fechacreacion = Convert.ToString(lectura[5]);
                        md.ticket_fechalimite = Convert.ToString(lectura[6]);
                        md.prob_id = Convert.ToString(lectura[7]);
                        md.prob_tipoid = Convert.ToString(lectura[8]);
                        md.prob_detalle = Convert.ToString(lectura[9]);
                        md.prob_imagen = Convert.ToString(lectura[10]);
                        md.prob_fechareporte = Convert.ToString(lectura[11]);
                        md.prob_usid = Convert.ToString(lectura[12]);
                        tickets.Add(md);
                        md = new clsmodeloticket();
                    }
                }
            }
            catch (Exception ex)
            {
            }
            conexion.CerrarConexion();
            return tickets;
        }
        public List<clsmodeloticket> consultaEstados(string id)
        {
            conexion.AbrirConexion();
            String instruccion3 = " SELECT TR.Ticket_Id,US.Usu_UserName, ET.Estado_Nombre " +
                " FROM SoporteTecnico.Tb_TicketsReporte AS TR JOIN SoporteTecnico.Tb_ProblemasTecnicos AS PT " +
                " ON TR.Ticket_ProbId = PT.Prob_Id JOIN SoporteTecnico.Tb_Usuarios AS US ON US.Usu_Id = PT.Prob_UsuId " +
             " JOIN SoporteTecnico.Tb_EstadosTickets AS ET ON TR.Ticket_EstadoId = ET.Estado_Id " +
             " WHERE US.Usu_Id = " + id;
            List<clsmodeloticket> valores = new List<clsmodeloticket>();
            clsmodeloticket md = new clsmodeloticket();
            try
            {
                SqlCommand cm = new SqlCommand(instruccion3, conexion.conectarbd);
                SqlDataReader lectura = cm.ExecuteReader();
                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        md.ticket_id = Convert.ToString(lectura[0]);
                        md.nombre_usuario = Convert.ToString(lectura[1]);
                        md.ticket_estado = Convert.ToString(lectura[2]);
                        valores.Add(md);
                        md = new clsmodeloticket();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error con la base de datos" + ex);
            }
            conexion.CerrarConexion();
            return valores;
        }
    }
}
