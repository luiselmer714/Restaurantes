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
    public partial class Interfazpedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Request.Params["id_restaurante"] != null)
            {
                 Label2.Text = Request.Params["id_restaurante"];
            }

            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            SqlConnection cone = new SqlConnection(con);
            SqlCommand cmd = new SqlCommand();
            DataTable Tabla;
            if (!IsPostBack)
            {
                cmd.CommandText = "select * from Menus  where id_restaurante='" + Label2.Text+ "' ";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = cone;
                cone.Open();
                Tabla = new DataTable();
                Tabla.Load(cmd.ExecuteReader());
                DataList1.DataSource = Tabla;
                DataList1.DataBind();
                cone.Close();





            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           


            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            //estamos insertandoi los datos de la farmacia ala tabla farmacia
            SqlConnection Conexion = new SqlConnection(con);
            Conexion.Open();
            SqlCommand comando = new SqlCommand("insert into Pedidos( Tipo_pedido,Costototal,Direccion,Cantidad,id_cliente) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text +  "'  )", Conexion);
   
            comando.ExecuteNonQuery();
            Label1.Text = "Se registro el usuario";
            Conexion.Close();




           

        }
    }
}