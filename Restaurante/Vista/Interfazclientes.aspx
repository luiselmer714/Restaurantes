<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interfazclientes.aspx.cs" Inherits="Restaurante.Vista.Interfazclientes" %>

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
      <link rel="stylesheet" type="text/css" href="cssmenu/styles.css" />
    <script src="cssmenu/script.js"></script>
  <style>
      iframe {
    max-width: 100%;
    height: auto;
}
  </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <header>

         <img id="im" src="img/gallery/images.jpg" />
                     
<div id="redes">


</div>
            <div id='cssmenu'>
<ul>
  
   <li><a href='#'>Inicio</a></li>
   <li class='active has-sub'><a href='#'>Restaurantes</a>
   
   </li>
    <li><a href='Interfazoferta.aspx'  >Ofertas</a></li>
   <li><a href='#' >Acerca de la empresa</a></li>
   <li><a href='Interfazreserva.aspx' target="iframe"  >Contactos</a></li>
    <li><a href='Interfazbuscar.aspx' >Buscar restaurante</a></li>

</ul>
</div>




              </header>
            


            <section>
                

                 <img id="principal" src="img/1065760100_0_195_1600_1061_1000x541_80_0_0_537f3f72e4a1fb1634927889e90e80a3.jpg" />

               <iframe   width="1500" height="400"  src="Interfazoferta.aspx" name="iframe" frameborder="0" allowfullscreen></iframe>

                
            </section>

          

   

   
 

</div>
        </form>

    

</body>
</html>
