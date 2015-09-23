using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Data;

namespace QueryExcelSpreadsheetForInstancesOfNA
{
    public class Program
    {
        static void Main(string[] args)
        {
            CountNAsInExcel();
        }

        static void CountNAsInExcel()
        {
            //String filePath = @"C:\dev\AIRCAT\FSIP-MAIN\Legacy__PDM_20150827.xls";
            String filePath = @"C:\dev\AIRCAT\FSIP-MAIN\Book1.xls";
            
            String connString = "Provider=Microsoft.Jet.OLEDB.4.0;" +
                "Data Source=" + filePath + ";" +
                "Extended Properties=Excel 8.0;";
            //Build must target 34bit

            OleDbConnection conn = new OleDbConnection(connString);
            conn.Open();

            string sql = @"SELECT * FROM [Sheet1$]";
            OleDbCommand cmd = new OleDbCommand(sql);
            cmd.Connection = conn; 

            OleDbDataReader reader = cmd.ExecuteReader();
            //DataTable dt = new DataTable(reader); 
        }


        static void references()
        {
            //http://stackoverflow.com/questions/1991643/microsoft-jet-oledb-4-0-provider-is-not-registered-on-the-local-machine
            //http://stackoverflow.com/questions/1420296/using-excel-sheet-as-db-datasource-with-connection-string
            //https://support.microsoft.com/en-us/kb/306572
            //http://www.aspsnippets.com/Articles/Read-Excel-file-using-OLEDB-Data-Provider-in-C-Net.aspx
        }
    }
}
