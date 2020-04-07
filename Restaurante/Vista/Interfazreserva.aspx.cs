using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Restaurante.Vista
{
    public partial class Interfazreserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            //estamos insertandoi los datos de la farmacia ala tabla farmacia
            SqlConnection Conexion = new SqlConnection(con);
            Conexion.Open();
            SqlCommand comando = new SqlCommand("insert into Reservaciones( Hora,Dia,Cantidad_personas,id_cliente,id_restaurante) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "'  )", Conexion);

            comando.ExecuteNonQuery();
            Label1.Text = "Se registro el usuario";
            Conexion.Close();
        }
    }
}