<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interfazbuscar.aspx.cs" Inherits="Restaurante.Vista.Interfazbuscar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />

<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'/>
    <style>
        body {
           background-color:maroon
        }
        .contenedor{
 padding: 10px; float: left; width: 45%; text-align: justify;

}
         h4
        {
color:white
        }
          h6
        {
color:white
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

                 <div class="contenedor">
             <h4>Ingresar datos</h4>
         
            <br />
            <asp:TextBox ID="TextBox1" CssClass="form-control"  placeholder="Tipo de comida" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" CssClass="form-control"  placeholder="Rango precios" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" CssClass="form-control"  placeholder="Zona" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" CssClass="form-control"  placeholder="Tamaño del restaurante" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" CssClass="form-control"  placeholder="Tipo de servicio" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" CssClass="btn btn-secondary" runat="server" Text="Buscar" OnClick="Button1_Click" />
        </div>
        <div class="contenedor">

         <h4>Resultado de la busqueda de restaurantes</h4>
            
            <asp:Repeater ID="Repeater1" runat="server">
  <ItemTemplate>
      <table class="table table-bordered">
  <tbody>
    <tr>
      <th >
      
      <h6>Zona: <%#DataBinder.Eval(Container.DataItem,"Zona")%></h6>
      <h6>Tamano restaurante: <%#DataBinder.Eval(Container.DataItem,"Tamaño_restaurante ")%></h6>
      <h6>Tipo servicio: <%#DataBinder.Eval(Container.DataItem,"Tipo_servicio ")%></h6>
      <h6>Tipo comida: <%#DataBinder.Eval(Container.DataItem,"Tipos_comida ")%></h6>
      <h6>Rango precios: <%#DataBinder.Eval(Container.DataItem,"Rango_precios")%></h6>
      <h6>Nombre: <%#DataBinder.Eval(Container.DataItem,"Nombre")%></h6>
      <asp:Label ID="Label1" runat="server" Text=' <%#DataBinder.Eval(Container.DataItem,"id_restaurantes")%> ' ></asp:Label>
 
          <asp:Button ID="Button2" CssClass="btn btn-secondary"  runat="server" Text="Pedido"  OnClick="Button2_Click" />
          <asp:Button ID="Button3" CssClass="btn btn-secondary"  runat="server" Text="Reservar" OnClick="Button3_Click"  />
     
          <br />
       </th>
        <th>

            <img class="imgRedonda" width="200" height="200" src="data:image/png;base64,<%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"Imagen" ))%>" />
        </th>
    </tr>
     
           
     
  </tbody>
</table>
</ItemTemplate>
</asp:Repeater> 





        </div>
        </div>
   
        
    </form>
</body>
</html>
