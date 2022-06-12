using EASendMail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Proyecto.Final.BD.CLASES
{
    class clsconfigurarcorreo
    {
        public String EnviarCorreo(String CorreoDestino, String Asunto, String Mensaje/*, string file*/)
        {
            String Estado = "Error al enviar correo";
            try
            {
                SmtpMail objetocorreo = new SmtpMail("TryIt");
                objetocorreo.From = "salvatierra0905188990@gmail.com";
                objetocorreo.To = CorreoDestino;
                objetocorreo.Subject = Asunto;
                objetocorreo.TextBody = Mensaje;
                //objetocorreo.AddAttachment(file);

                SmtpServer objetoservidor = new SmtpServer("smtp.gmail.com");
                objetoservidor.User = "salvatierra0905188990@gmail.com";
                objetoservidor.Password = "Shipuden12";
                objetoservidor.Port = 587;
                objetoservidor.ConnectType = SmtpConnectType.ConnectSSLAuto;

                EASendMail.SmtpClient objetocliente = new EASendMail.SmtpClient();
                objetocliente.SendMail(objetoservidor, objetocorreo);

              Estado = "Correo Enviado Exitosamente";
            }
            catch (Exception ex)
            {
                Estado = "Error al enviar correo" + ex;
            }
            return Estado;
        }
    }
}
