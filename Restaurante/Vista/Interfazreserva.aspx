<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Interfazreserva.aspx.cs" Inherits="Restaurante.Vista.Interfazreserva" %>

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

         *{box-sizing:border-box;}
          label {
              color:white
          }

form label{
	width:72px;
	font-weight:bold;
	display:inline-block;
}

form input[type="text"],
form input[type="email"]{
	width:180px;
	padding:3px 10px;
	border:1px solid #f6f6f6;
	border-radius:3px;
	background-color:#f6f6f6;
	margin:8px 0;
	display:inline-block;
}

form input[type="submit"]{
	width:100%;
	padding:8px 16px;
	margin-top:32px;
	border:1px solid #000;
	border-radius:5px;
	display:block;
	color:#fff;
	background-color:#000;
} 

form input[type="submit"]:hover{
	cursor:pointer;
}

textarea{
	width:100%;
	height:100px;
	border:1px solid #f6f6f6;
	border-radius:3px;
	background-color:#f6f6f6;			
	margin:8px 0;
	/*resize: vertical | horizontal | none | both*/
	resize:none;
	display:block;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

                   <div class="contenedor">
             <h4>Contacto </h4>


                       <form action="#" target="" method="get" name="formDatosPersonales">

	<label for="nombre">Nombre</label>

     <asp:TextBox ID="nombre" name="nombre" CssClass="form-control" placeholder="Escribe tu nombre" runat="server"></asp:TextBox>

	<label for="apellidos">Apellidos</label>
	
     <asp:TextBox ID="apellidos" name="apellidos" CssClass="form-control"  placeholder="1r Apellido" runat="server"></asp:TextBox>
	<label for="email" >Email</label>
	
     <asp:TextBox ID="email" type="email" name="email" CssClass="form-control"  placeholder="email"  runat="server"></asp:TextBox>

	<label for="mensaje">Mensaje</label>

    <textarea id="TextArea1" name="mensaje"  cols="20" placeholder="describe brevemente en menos de 300 carácteres" rows="2"></textarea>

	<input type="submit" name="enviar" value="enviar datos"/>
</form>




                       
                  
                      
                     
                       
        </div>
        <div class="contenedor">

         <h4>Reservar</h4>
                    <br />
            <asp:TextBox ID="TextBox1" CssClass="form-control"  placeholder="Hora" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" CssClass="form-control"  placeholder="Dia" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" CssClass="form-control"  placeholder="Cantidad persona" runat="server"></asp:TextBox>
            <br />
             <asp:TextBox ID="TextBox4" CssClass="form-control"  placeholder="id_cliente" runat="server"></asp:TextBox>
            <br />
             <asp:TextBox ID="TextBox5" CssClass="form-control"  placeholder="id_Restaurante" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" CssClass="submit" runat="server" Text="Realizar pedido" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>



        </div>
    </form>
</body>
</html>
