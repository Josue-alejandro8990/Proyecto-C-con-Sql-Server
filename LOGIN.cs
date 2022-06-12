using Proyecto.Final.BD.CLASES;
using Proyecto.Final.BD.FORMULARIOS;
using Proyecto.Final.BD.FORMULARIOS.Administrador;
using Proyecto.Final.BD.FORMULARIOS.Usuario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Proyecto.Final.BD
{
    public partial class LOGIN : Form
    {
        MDempleado md = new MDempleado();
        public LOGIN()
        {
            InitializeComponent();
        }
        public static class ClaseCompartida
        {
            public static int tag;
        }



        private void txtuser_Leave(object sender, EventArgs e)
        {
            if (txtuser.Text == "")
            {
                txtuser.Text = "Usuario";
                txtuser.ForeColor = Color.Silver;
            }
        }

        private void txtuser_Enter(object sender, EventArgs e)
        {
            if (txtuser.Text == "Usuario")
            {
                txtuser.Text = "";
                txtuser.ForeColor = Color.LightGray;
            }
        }

        private void txtpass_Enter(object sender, EventArgs e)
        {
            if (txtpass.Text == "Contraseña")
            {
                txtpass.Text = "";
                txtpass.ForeColor = Color.LightGray;
                txtpass.UseSystemPasswordChar = true;
            }
        }

        private void txtpass_Leave(object sender, EventArgs e)
        {
            if (txtpass.Text == "")
            {
                txtpass.Text = "Contraseña";
                txtpass.ForeColor = Color.Silver;
                txtpass.UseSystemPasswordChar = false;
            }
        }

        private void btnlogin_Click(object sender, EventArgs e)
        {
           // new Tickes().Show();

            //   frm.Show();
        }

        private void btnminimizar_Click_1(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btncerrar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnlogin_Click_1(object sender, EventArgs e)
        {
            md.Emp_user = txtuser.Text;
            md.Emp_pass = txtpass.Text;
            try
            {


                CONEXION.Conexion_Maestra.abrir();
                SqlCommand cmd2 = new SqlCommand("verificar_login", CONEXION.Conexion_Maestra.conectar);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@User", md.Emp_user);
                cmd2.Parameters.AddWithValue("@Pass", md.Emp_pass);
                SqlDataReader rdr2 = cmd2.ExecuteReader();
                while (rdr2.Read())
                {
                    md.Emp_puesto = rdr2["Puesto_Nombre"].ToString();
                    ClaseCompartida.tag = Convert.ToInt32(rdr2["Usu_Id"]);
                }
                CONEXION.Conexion_Maestra.cerrar();
                
                if (md.Emp_puesto.Contains("Administrador"))
                {
                    new Administrador().Show();
                    this.Hide();
                }
                if (md.Emp_puesto.Contains("Tecnico"))
                {
                    new Tecnico().Show();
                    this.Hide();
                }
                if (!md.Emp_puesto.Contains("Tecnico") && !md.Emp_puesto.Contains("Administrador"))
                {
                    new EmpleadoComun().Show();
                    this.Hide();
                }
            }
            catch(Exception ex)
            {
                CONEXION.Conexion_Maestra.cerrar();
                MessageBox.Show(ex.Message);
                txtpass.Text = "";
                txtuser.Text = "";
                txtuser.Focus();
            }
        }


        private void LOGIN_Load(object sender, EventArgs e)
        {
         
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
            if (txtpass.Text != "Contraseña")
            {
                if (dejardever.Visible == false)
                {
                    ver.Visible = true;
                }

                
            }
            else
                ver.Visible = false;
        }

        private void ver_Click(object sender, EventArgs e)
        {
            if (txtpass.UseSystemPasswordChar == true)
            {
                txtpass.UseSystemPasswordChar = false;
                ver.Visible = false;
                dejardever.Visible = true;
            }
            else 
            {
                txtpass.UseSystemPasswordChar = true;
                dejardever.Visible = false;
                ver.Visible = true;
            }
        }

    }
}
