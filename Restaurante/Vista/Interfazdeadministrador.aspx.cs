using System;
using System.Collections.Generic;
using System.Linq;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;




namespace Restaurante.Vista
{
    public partial class Interfazdeadministrador : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre;

            if(Session["administrador"] != null)
            {

                nombre = Session["administrador"].ToString();
                Label1.Text = "BIENVENIDO:" + nombre;

            }
            else
            {
                Response.Redirect("Interfazlogin.aspx?men=1");

            }


            if (!IsPostBack)
            {
                PopulateGridview();
            }




        }
        void PopulateGridview()
        {
            DataTable dtl1 = new DataTable();
            DataTable dtl2 = new DataTable();
            DataTable dtl3 = new DataTable();
            DataTable dtl4 = new DataTable();
            DataTable dtl5 = new DataTable();
         
            using (SqlConnection sqlCon = new SqlConnection(con))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa1 = new SqlDataAdapter("SELECT * FROM  Pedidos", sqlCon);
                sqlDa1.Fill(dtl1);
                SqlDataAdapter sqlDa2 = new SqlDataAdapter("SELECT * FROM  Restaurantes ", sqlCon);
                sqlDa2.Fill(dtl2);
                SqlDataAdapter sqlDa3 = new SqlDataAdapter("SELECT* FROM  Reservaciones", sqlCon); 
                sqlDa3.Fill(dtl3);
                SqlDataAdapter sqlDa4 = new SqlDataAdapter("SELECT * FROM  Ofertas ", sqlCon);
                sqlDa4.Fill(dtl4);
                SqlDataAdapter sqlDa5 = new SqlDataAdapter("SELECT * FROM  Menus", sqlCon);
                sqlDa5.Fill(dtl5);
               


            }
            //verificamos si esta vacio la tabla o tienen datos
            if (dtl1.Rows.Count > 0 || dtl2.Rows.Count > 0 || dtl3.Rows.Count > 0 || dtl4.Rows.Count > 0 || dtl5.Rows.Count > 0)
            {
                //si tinnen datos entoces los muestra en los griewview
                GridView1.DataSource = dtl1;
                GridView1.DataBind();
                GridView2.DataSource = dtl2;
                GridView2.DataBind();
                GridView3.DataSource = dtl3;
                GridView3.DataBind();
                GridView4.DataSource = dtl4;
                GridView4.DataBind();
                GridView5.DataSource = dtl5;
                GridView5.DataBind();
             

            }
            else
            {
                //en caso que esten vacios pues nos manda un erros de que esta vacio y deshablita lo botones que serian para modificar  canserlar y eliminar
                dtl1.Rows.Add(dtl1.NewRow());
                GridView1.DataSource = dtl1;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtl1.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "NO EXISTE DATOS ..!";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;



                dtl2.Rows.Add(dtl2.NewRow());
                GridView2.DataSource = dtl2;
                GridView2.DataBind();
                GridView2.Rows[0].Cells.Clear();
                GridView2.Rows[0].Cells.Add(new TableCell());
                GridView2.Rows[0].Cells[0].ColumnSpan = dtl2.Columns.Count;
                GridView2.Rows[0].Cells[0].Text = "NO EXISTE DATOS ..!";
                GridView2.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;


                dtl3.Rows.Add(dtl3.NewRow());
                GridView3.DataSource = dtl3;
                GridView3.DataBind();
                GridView3.Rows[0].Cells.Clear();
                GridView3.Rows[0].Cells.Add(new TableCell());
                GridView3.Rows[0].Cells[0].ColumnSpan = dtl3.Columns.Count;
                GridView3.Rows[0].Cells[0].Text = "NO EXISTE DATOS ..!";
                GridView3.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;


                dtl4.Rows.Add(dtl4.NewRow());
                GridView4.DataSource = dtl4;
                GridView4.DataBind();
                GridView4.Rows[0].Cells.Clear();
                GridView4.Rows[0].Cells.Add(new TableCell());
                GridView4.Rows[0].Cells[0].ColumnSpan = dtl4.Columns.Count;
                GridView4.Rows[0].Cells[0].Text = "NO EXISTE DATOS ..!";
                GridView4.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                dtl5.Rows.Add(dtl5.NewRow());
                GridView5.DataSource = dtl5;
                GridView5.DataBind();
                GridView5.Rows[0].Cells.Clear();
                GridView5.Rows[0].Cells.Add(new TableCell());
                GridView5.Rows[0].Cells[0].ColumnSpan = dtl5.Columns.Count;
                GridView5.Rows[0].Cells[0].Text = "NO EXISTE DATOS ..!";
                GridView5.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }

        }



        //oferta
        protected void Button1_Click(object sender, EventArgs e)
        {


            //odtener datos de la imagen
            //devolvernos el tamoño que el usuario esta mandando
            int tamaño = FileUpload1.PostedFile.ContentLength;
            //arreglo 
            //odtenemos un tamaño original a un no definido
            byte[] imagenoriginal = new byte[tamaño];
            //leer la imagen original enpesando de sierto tama;o
            FileUpload1.PostedFile.InputStream.Read(imagenoriginal, 0, tamaño);
            Bitmap imagenbinaria = new Bitmap(FileUpload1.PostedFile.InputStream);


            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            //estamos insertandoi los datos de la farmacia ala tabla farmacia
            SqlConnection Conexion = new SqlConnection(con);
            Conexion.Open();
            SqlCommand comando = new SqlCommand("insert into Ofertas( Tipo,Descripcion,Fecha_inicio,Fecha_final,Nombre_restaurante,Precio,id_restaurante,imagen) values('" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox11.Text + "' , @imagenfarma )", Conexion);
            comando.Parameters.Add("@imagenfarma", SqlDbType.Image).Value = imagenoriginal;
            comando.ExecuteNonQuery();
            Label1.Text = "Se registro el usuario";
            Conexion.Close();

            //isertar en la base de datos
            //aqui esta convirtiendo la imagen abase 64 en un dato binario sin tenmer el archivo fisico
            string imagendataurl64 = "data:image/png;base64," + Convert.ToBase64String(imagenoriginal);

            Image1.ImageUrl = imagendataurl64;

        }
        //restaurante
        protected void Button2_Click(object sender, EventArgs e)
        {

            //odtener datos de la imagen
            //devolvernos el tamoño que el usuario esta mandando
            int tamaño = FileUpload2.PostedFile.ContentLength;
            //arreglo 
            //odtenemos un tamaño original a un no definido
            byte[] imagenoriginal = new byte[tamaño];
            //leer la imagen original enpesando de sierto tama;o
            FileUpload2.PostedFile.InputStream.Read(imagenoriginal, 0, tamaño);
            Bitmap imagenbinaria = new Bitmap(FileUpload2.PostedFile.InputStream);


            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            //estamos insertandoi los datos de la farmacia ala tabla farmacia
            SqlConnection Conexion = new SqlConnection(con);
            Conexion.Open();
            SqlCommand comando = new SqlCommand("insert into Restaurantes( Zona , Tamaño_restaurante , Tipo_servicio , Tipos_comida , Rango_precios , Nombre ,imagen) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "' , @imagenfarma )", Conexion);
            comando.Parameters.Add("@imagenfarma", SqlDbType.Image).Value = imagenoriginal;
            comando.ExecuteNonQuery();
            Label2.Text = "Se registro el usuario";
            Conexion.Close();

            //isertar en la base de datos
            //aqui esta convirtiendo la imagen abase 64 en un dato binario sin tenmer el archivo fisico
            string imagendataurl64 = "data:image/png;base64," + Convert.ToBase64String(imagenoriginal);

            Image2.ImageUrl = imagendataurl64;

        }
        //menu
        protected void Button3_Click(object sender, EventArgs e)
        {


            //odtener datos de la imagen
            //devolvernos el tamoño que el usuario esta mandando
            int tamaño = FileUpload3.PostedFile.ContentLength;
            //arreglo 
            //odtenemos un tamaño original a un no definido
            byte[] imagenoriginal = new byte[tamaño];
            //leer la imagen original enpesando de sierto tama;o
            FileUpload3.PostedFile.InputStream.Read(imagenoriginal, 0, tamaño);
            Bitmap imagenbinaria = new Bitmap(FileUpload3.PostedFile.InputStream);


            string con = System.Configuration.ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
            //estamos insertandoi los datos de la farmacia ala tabla farmacia
            SqlConnection Conexion = new SqlConnection(con);
            Conexion.Open();
            SqlCommand comando = new SqlCommand("insert into Menus( Tipo_plato , Costo , Nombre , id_restaurante ,imagen) values('" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "' , @imagenfarma )", Conexion);
            comando.Parameters.Add("@imagenfarma", SqlDbType.Image).Value = imagenoriginal;
            comando.ExecuteNonQuery();
            Label3.Text = "Se registro el usuario";
            Conexion.Close();

            //isertar en la base de datos
            //aqui esta convirtiendo la imagen abase 64 en un dato binario sin tenmer el archivo fisico
            string imagendataurl64 = "data:image/png;base64," + Convert.ToBase64String(imagenoriginal);

            Image3.ImageUrl = imagendataurl64;

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(con))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Pedidos (Tipo_pedido,Costototal,Direccion,Cantidad,id_cliente) VALUES (@Tipo_pedido,@Costototal,@Direccion,@Cantidad,@id_cliente)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@Tipo_pedido", (GridView1.FooterRow.FindControl("Tipo_pedido") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Costototal", (GridView1.FooterRow.FindControl("Costototal") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Direccion", (GridView1.FooterRow.FindControl("Direccion") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Cantidad", (GridView1.FooterRow.FindControl("Cantidad") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@id_cliente", (GridView1.FooterRow.FindControl("id_cliente") as TextBox).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                      
                    }
                }
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(con))
                {
                    sqlCon.Open();

                    string eliminar = "DELETE FROM Pedidos WHERE Tipo_pedido= @Tipo_pedido";
                    SqlCommand comando = new SqlCommand(eliminar, sqlCon);
                    comando.Parameters.AddWithValue("Tipo_pedido", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    comando.ExecuteNonQuery();
                    PopulateGridview();



                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PopulateGridview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }









        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(con))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Restaurantes (id_restaurantes,Zona,Tamaño_restaurante,Tipo_servicio,Tipos_comida,Rango_precios,Nombre) VALUES (@id_restaurantes,@Zona,@Tamaño_restaurante,@Tipo_servicio,@Tipos_comida,@Rango_precios,@Nombre)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@id_restaurantes", (GridView2.FooterRow.FindControl("id_restaurantes") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Zona", (GridView2.FooterRow.FindControl("Zona") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Tamaño_restaurante", (GridView2.FooterRow.FindControl("Tamaño_restaurante") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Tipo_servicio", (GridView2.FooterRow.FindControl("Tipo_servicio") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Tipos_comida", (GridView2.FooterRow.FindControl("Tipos_comida") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Rango_precios", (GridView2.FooterRow.FindControl("Rango_precios") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Nombre", (GridView2.FooterRow.FindControl("Nombre") as TextBox).Text.Trim());
                      
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();

                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(con))
                {
                    sqlCon.Open();

                    string eliminar = "DELETE FROM Restaurantes WHERE id_restaurantes= @id_restaurantes";
                    SqlCommand comando = new SqlCommand(eliminar, sqlCon);
                    comando.Parameters.AddWithValue("id_restaurantes", Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString()));
                    comando.ExecuteNonQuery();
                    PopulateGridview();



                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            PopulateGridview();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }











        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(con))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Reservaciones ( id_reserva,Hora,Dia,Cantidad_personas,id_cliente,id_restaurante) VALUES ( @id_reserva,@Hora,@Dia,@Cantidad_personas,@id_cliente,@id_restaurante)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@id_reserva", (GridView3.FooterRow.FindControl("id_reserva") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Hora", (GridView3.FooterRow.FindControl("Hora") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Dia", (GridView3.FooterRow.FindControl("Dia") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Cantidad_personas", (GridView3.FooterRow.FindControl("Cantidad_personas") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@id_cliente", (GridView3.FooterRow.FindControl("id_cliente") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@id_restaurante", (GridView3.FooterRow.FindControl("id_restaurante") as TextBox).Text.Trim());                     
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();

                    }
                }
            }
            catch (Exception ex)
            {

            }
        }


        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(con))
                {
                    sqlCon.Open();

                    string eliminar = "DELETE FROM Reservaciones WHERE id_reserva= @id_reserva";
                    SqlCommand comando = new SqlCommand(eliminar, sqlCon);
                    comando.Parameters.AddWithValue("@id_reserva", Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value.ToString()));
                    comando.ExecuteNonQuery();
                    PopulateGridview();



                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;
            PopulateGridview();
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }















        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(con))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Ofertas (id_oferta,Tipo,Descripcion,Fecha_inicio,Fecha_final,Nombre_restaurante,Precio,id_restaurante) VALUES ( @id_oferta,@Tipo,@Descripcion,@Fecha_inicio,@Fecha_final,@Nombre_restaurante,@Precio,@id_restaurante)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@id_oferta", (GridView4.FooterRow.FindControl("id_oferta") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Tipo", (GridView4.FooterRow.FindControl("Tipo") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Descripcion", (GridView4.FooterRow.FindControl("Descripcion") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Fecha_inicio", (GridView4.FooterRow.FindControl("Fecha_inicio") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Fecha_final", (GridView4.FooterRow.FindControl("Fecha_final") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Nombre_restaurante", (GridView4.FooterRow.FindControl("Nombre_restaurante") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Precio", (GridView4.FooterRow.FindControl(" Precio") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@id_restaurante", (GridView4.FooterRow.FindControl("id_restaurante") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();




                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(con))
                {
                    sqlCon.Open();

                    string eliminar = "DELETE FROM Ofertas WHERE id_oferta= @id_oferta";
                    SqlCommand comando = new SqlCommand(eliminar, sqlCon);
                    comando.Parameters.AddWithValue("@id_oferta", Convert.ToInt32(GridView4.DataKeys[e.RowIndex].Value.ToString()));
                    comando.ExecuteNonQuery();
                    PopulateGridview();



                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView4_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView4.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView4_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView4.EditIndex = -1;
            PopulateGridview();
        }

        protected void GridView4_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


















        protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(con))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Menus ( id_menu,Tipo_plato,Costo,Nombre,id_restaurante) VALUES ( @id_menu,@Tipo_plato,@Costo,@Nombre,@id_restaurante)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@id_menu", (GridView5.FooterRow.FindControl(" id_menu") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Tipo_plato", (GridView5.FooterRow.FindControl("Tipo_plato") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Costo", (GridView5.FooterRow.FindControl("  Costo") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Nombre", (GridView5.FooterRow.FindControl("Nombre") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@id_restaurante", (GridView5.FooterRow.FindControl("  id_restaurante") as TextBox).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();


                  

                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(con))
                {
                    sqlCon.Open();

                    string eliminar = "DELETE FROM Menus WHERE id_menu= @id_menu";
                    SqlCommand comando = new SqlCommand(eliminar, sqlCon);
                    comando.Parameters.AddWithValue("@id_menu", Convert.ToInt32(GridView5.DataKeys[e.RowIndex].Value.ToString()));
                    comando.ExecuteNonQuery();
                    PopulateGridview();
                  


                }
            }
            catch (Exception ex)
            {
               
            }
        }

        protected void GridView5_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView5.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView5_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView5.EditIndex = -1;
            PopulateGridview();
        }

        protected void GridView5_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Remove("administrador");
            //redirecionar al login 
            Response.Redirect("Interfazlogin.aspx");
        }
    }
}