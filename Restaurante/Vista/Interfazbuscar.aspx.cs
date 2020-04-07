using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Restaurante.Vista
{
    public partial class Interfazbuscar : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            SqlConnection cone = new SqlConnection(con);
            SqlCommand cmd = new SqlCommand();
            DataTable Tabla;
            

            if (!IsPostBack)
            {
                cmd.CommandText = "SELECT * FROM Restaurantes ";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = cone;
                cone.Open();
                Tabla = new DataTable();
                Tabla.Load(cmd.ExecuteReader());
                Repeater1.DataSource = Tabla;
                Repeater1.DataBind();
                cone.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Label lblStatus = Repeater1.Items[1].FindControl("Label1") as Label;
            Response.Redirect("Interfazpedido.aspx?id_restaurante="+lblStatus.Text);
          

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Interfazreserva.aspx");
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        
            

     
       



            string conexion = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            SqlConnection co = new SqlConnection(conexion);
            SqlCommand cmd = new SqlCommand();
            DataTable Tabla;
            cmd.CommandText = "select Zona , Tamaño_restaurante , Tipo_servicio , Tipos_comida , Rango_precios , Nombre ,Imagen from Restaurantes  where Tipos_comida='" + this.TextBox1.Text + "' AND Rango_precios='" + this.TextBox2.Text + "' AND Zona='" + this.TextBox3.Text + "' AND Tamaño_restaurante='" + this.TextBox4.Text + "' AND Tipo_servicio='" + this.TextBox5.Text + "'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = co;
            co.Open();
            Tabla = new DataTable();
            Tabla.Load(cmd.ExecuteReader());
            Repeater1.DataSource = Tabla;
            Repeater1.DataBind();
            co.Close();





        }
    }
}