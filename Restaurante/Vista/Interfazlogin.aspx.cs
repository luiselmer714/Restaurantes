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
    public partial class Interfazlogin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {


            TextBox2.Attributes.Add("style", "DISPLAY: none");
            Button2.Attributes.Add("style", "DISPLAY:none");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            TextBox1.Attributes.Add("style", "DISPLAY: none");
            Button1.Attributes.Add("style", "DISPLAY:none");

            TextBox2.Attributes.Add("style", "DISPLAY: ");
            Button2.Attributes.Add("style", "DISPLAY:");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string usuario = TextBox1.Text;
            string contraseña = TextBox2.Text;
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();


           

            SqlCommand comando = new SqlCommand("SELECT * FROM Usuario  WHERE Usuario='" + usuario + "'AND Contraseña='" + contraseña + "' ", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Session["administrador"] = usuario;

                Response.Redirect("Interfazdeadministrador.aspx");

            }


            else
                Label1.Text = "No existe un usuario ";
            conexion.Close();
        }
    }
}