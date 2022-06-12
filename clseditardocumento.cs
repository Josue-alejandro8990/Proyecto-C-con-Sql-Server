using System;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using objword = Microsoft.Office.Interop.Word;

namespace Proyecto.Final.BD.CLASES
{
    class clseditardocumento
    {
        public String nombre = "josue";
        public String curso = "programacion 3";
        public String nota = "100";
        public void BuscarYReemplazar(objword.Application wordApp, object TextoBuscar, object ReemplazarTexto)
        {
            object matchCase = true;
            object matchWholeWord = true;
            object matchWildCards = false;
            object matchSoundLike = false;
            object nmatchAllforms = false;
            object forward = true;
            object format = false;
            object matchKashida = false;
            object matchDiactitics = false;
            object matchAlefHamza = false;
            object matchControl = false;
            object read_only = false;
            object visible = true;
            object replace = 2;
            object wrap = 1;

            wordApp.Selection.Find.Execute(ref TextoBuscar,
                ref matchCase, ref matchWholeWord,
                ref matchWildCards, ref matchSoundLike,
                ref nmatchAllforms, ref forward,
                ref wrap, ref format, ref ReemplazarTexto,
                ref replace, ref matchKashida,
                ref matchDiactitics, ref matchAlefHamza,
                ref matchControl);
        } // fin buscar
        public void CrearDocumentoWord(object nombreArchivo, object GuardarComo)
        {

            objword.Application wordApp = new objword.Application();
            object missing = Missing.Value;
            objword.Document myWordDoc = null;

            if (File.Exists((string)nombreArchivo))
            {
                object readOnly = false;
                object isVisible = false;
                wordApp.Visible = false;

                myWordDoc = wordApp.Documents.Open(ref nombreArchivo, ref missing, ref readOnly,
                                        ref missing, ref missing, ref missing,
                                        ref missing, ref missing, ref missing,
                                        ref missing, ref missing, ref missing,
                                        ref missing, ref missing, ref missing, ref missing);
                myWordDoc.Activate();

                //Busca y Reemplaza

                this.BuscarYReemplazar(wordApp, "$$nombre$$", nombre); // mira si podes llamar la funcion para que vaya cambiando el nombre
                this.BuscarYReemplazar(wordApp, "$$curso$$", curso);
                this.BuscarYReemplazar(wordApp, "$$nota$$", nota);
                this.BuscarYReemplazar(wordApp, "$$catedratico$$", "Ruldin Ayala");
                this.BuscarYReemplazar(wordApp, "$$fecha$$", DateTime.Now.ToShortDateString());
            }
            else
            {
                MessageBox.Show("Archivo no se encontró!");
            }
            //Save as
            myWordDoc.SaveAs2(ref GuardarComo, ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing);

            myWordDoc.Close();
            wordApp.Quit();
            nombre = "";
            curso = "";
            Console.WriteLine("Documento Creado exitosamente");
        } // fin crear
    }
}
