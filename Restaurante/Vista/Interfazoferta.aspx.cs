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
    public partial class Interfazoferta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            SqlConnection cone = new SqlConnection(con);
            SqlCommand cmd = new SqlCommand();
            DataTable Tabla;
            if (!IsPostBack)
            {
                cmd.CommandText = "SELECT * FROM Ofertas ";
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
    }
}