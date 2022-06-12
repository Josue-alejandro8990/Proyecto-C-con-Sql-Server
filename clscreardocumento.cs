using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using objword = Microsoft.Office.Interop.Word;

namespace Proyecto.Final.BD.CLASES
{
    class clscreardocumento
    {
        public void Crear()
        {
            String ruta = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
            objword.Application Word = new objword.Application();
            objword.Document documento = Word.Documents.Add();

            objword.Paragraph parrafo = documento.Content.Paragraphs.Add(Type.Missing);
            parrafo.Range.Font.Size = 14;
            parrafo.Range.Font.Color = objword.WdColor.wdColorBlue;
            parrafo.Range.Text = "esta es una prueba de word en c#";
            parrafo.Range.InsertParagraphAfter();

            objword.Paragraph parrafo2 = documento.Content.Paragraphs.Add(Type.Missing);
            parrafo2.Range.Font.Size = 14;
            parrafo2.Range.Font.Color = objword.WdColor.wdColorDarkGreen;
            parrafo2.Range.Text = "Creando el documento desde c#";
            parrafo2.Range.InsertParagraphAfter();

            documento.SaveAs2(ruta + "\\miprimer documento.docx");
            documento.Close();
            Word.Quit();
            Console.WriteLine("Documento Creado Exitosamente");
        }
    }
}
