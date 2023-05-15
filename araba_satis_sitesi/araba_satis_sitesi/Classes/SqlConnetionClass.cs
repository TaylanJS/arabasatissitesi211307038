using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace araba_satis_sitesi.Classes
{
    public class SqlConnetionClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-QJMJVDB\\SQLEXPRESS;Initial Catalog=ArabaAl;Integrated Security=True");

        public static void CheckConnetion()
        {
            if (connection.State== System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }
    }
}