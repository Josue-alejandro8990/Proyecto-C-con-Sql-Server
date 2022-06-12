using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Proyecto.Final.BD.CLASES
{
    class clsmodeloempleado
    {
        ConexionSqlserver conexion = new ConexionSqlserver();
        public int empleado_departamentoid { get; set; }
        public int empleado_puestoid { get; set; }
        public int empleado_id { get; set; }
        public string empleado_nombre { get; set; }
        public string empleado_apellidos { get; set; }
        public string empleado_dpi { get; set; }
        public DateTime fecha_nacimiento { get; set; }
        public int empleado_edad { get; set; }
        public string empleado_genero { get; set; }
        public DateTime fecha_ingreso { get; set; }
        public string empleado_direccion { get; set; }
        public string[] tickets { get; set; }

        public string estado_ticket { get; set; }

        public List<clsmodeloempleado> ConsultaGeneral()
        {
            conexion.AbrirConexion();
            List<clsmodeloempleado> ListaEmpleados = new List<clsmodeloempleado>();
            string instruccion = "SELECT * FROM SoporteTecnico.Tb_Empleados";
            try
            {
                SqlCommand cmd = new SqlCommand(instruccion, conexion.conectarbd);
                SqlDataReader lectura = cmd.ExecuteReader();
                clsmodeloempleado modelo = new clsmodeloempleado();
                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        modelo.empleado_departamentoid = Convert.ToInt32(lectura[0]);
                        modelo.empleado_puestoid = Convert.ToInt32(lectura[1]);
                        modelo.empleado_id = Convert.ToInt32(lectura[2]);
                        modelo.empleado_nombre = Convert.ToString(lectura[3]);
                        modelo.empleado_apellidos = Convert.ToString(lectura[4]);
                        modelo.empleado_dpi = Convert.ToString(lectura[5]);
                        modelo.empleado_direccion = Convert.ToString(lectura[6]);
                        modelo.fecha_nacimiento = Convert.ToDateTime(lectura[7]);
                        modelo.empleado_edad = Convert.ToInt32(lectura[8]);
                        modelo.empleado_genero = Convert.ToString(lectura[9]);
                        modelo.fecha_ingreso = Convert.ToDateTime(lectura[10]);

                        //modelo.estado_ticket = Convert.ToString(lectura[11]);
                        ListaEmpleados.Add(modelo);
                        modelo = new clsmodeloempleado();
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
            return ListaEmpleados;
        }
        public clsmodeloempleado ConsultaEspecifica(String id)
        {
            conexion.AbrirConexion();
            clsmodeloempleado modelo = new clsmodeloempleado();
            String instruccion2 = "SELECT * FROM SoporteTecnico.Tb_Empleados WHERE Emplea_Id =" + id;
            try
            {
                SqlCommand cmd = new SqlCommand(instruccion2, conexion.conectarbd);
                SqlDataReader lectura = cmd.ExecuteReader();
                if (lectura.HasRows != false)
                {
                    while (lectura.Read())
                    {
                        modelo.empleado_departamentoid = Convert.ToInt32(lectura[0]);
                        modelo.empleado_puestoid = Convert.ToInt32(lectura[1]);
                        modelo.empleado_id = Convert.ToInt32(lectura[2]);
                        modelo.empleado_nombre = Convert.ToString(lectura[3]);
                        modelo.empleado_apellidos = Convert.ToString(lectura[4]);
                        modelo.empleado_dpi = Convert.ToString(lectura[5]);
                        modelo.empleado_direccion = Convert.ToString(lectura[6]);
                        modelo.fecha_nacimiento = Convert.ToDateTime(lectura[7]);
                        modelo.empleado_edad = Convert.ToInt32(lectura[8]);
                        modelo.empleado_genero = Convert.ToString(lectura[9]);
                        modelo.fecha_ingreso = Convert.ToDateTime(lectura[10]);

                        //modelo.empleado_telefono = Convert.ToString(lectura[8]);                                  
                        //modelo.estado_ticket = Convert.ToString(lectura[11]);
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
            return modelo;
        }
        public String ActualizarTicket(String id)
        {
            String Resultado = "";
            string instruccion4 = " UPDATE SoporteTecnico.Tb_EstadosTickets SET Estado_Nombre = 'EN PROCESO' " +
                " WHERE Estado_Id = " + id;
            conexion.AbrirConexion();
            SqlCommand cmd = new SqlCommand(instruccion4, conexion.conectarbd);
            cmd.ExecuteNonQuery();
            Resultado = "Registro Actulizado";
            conexion.CerrarConexion();
            return Resultado;
        }
        public string LiberarTicket(String Ticid, string ticpecft, string observacioens, string fechafinalizado)
        {String resultado = "";
            try
            {


                
                string instruccion5 = " INSERT INTO SoporteTecnico.Tb_TicketsResueltos(TicRes_TicketId, TicRes_PefTecId, TicRes_Observaciones, TicRes_FechaFinalizado) " +
               " values(" + Ticid + "," + ticpecft + ", '" + observacioens + "', '" + fechafinalizado + "')";
                conexion.AbrirConexion();
                SqlCommand cmd = new SqlCommand(instruccion5, conexion.conectarbd);
                cmd.ExecuteNonQuery();
                resultado = "Ticket Liberado";
                conexion.CerrarConexion();
                return resultado;
            }catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return resultado;
        }

    }

}
