<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interfazdeadministrador.aspx.cs" Inherits="Restaurante.Vista.Interfazdeadministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>


    
    <link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'/>
   

</head>
<body>
    <form id="form1" runat="server">
        <div>


            <div id="header">
<h2>
    <style>
   

    img {
        width: 80xp;
        height: 80px;
    margin-left:55px;
  
        border-radius:80px;
    
    }

    </style>
       <img src="img/gallery/descarga.png"/>
    
</h2>
</div>
<!--close-Header-part--> 

            <style>
                #header {
                    background:#c82727;
                }
                #footer {
                    background:#c82727;
                }
            
                #hola {
 background:#c82727;
                }
                #ab,#a,#b,#c,#d,#footerf {
                    color :white
                }

            </style>


<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
     <br />
            <br />
            
<div id="hola">


<div  id="sidebar"><a id="ab" href="#" class="visible-phone"><i class="icon icon-home"></i> Grafico</a>
  <ul >
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>Grafico</span></a> </li>
    <li> <a  href="charts.html"><i class="icon icon-signal"></i> <span id="a">Agregar restaurante</span></a> </li>
    <li> <a  href="widgets.html"><i class="icon icon-inbox"></i> <span id="b">Agregar menu</span></a> </li>
    <li><a  href="tables.html"><i class="icon icon-th"></i> <span id="c">Agregar oferta</span></a></li>
 
    <li class="submenu"> <a  href="#"><i class="icon icon-th-list"></i> <span id="d">Tablas</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.html">Pedidos</a></li>
        <li><a href="form-validation.html">Reservas</a></li>
        <li><a href="form-wizard.html">restaurantes</a></li>
      </ul>
    </li>

  
   
   
 
  </ul>
</div>
         
 
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
 
<!--End-Action boxes-->    

<!--Chart-box-->    
    <div class="row-fluid">
      <div class="widget-box">
        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
          <h5>Site Analytics</h5>
        </div>
        <div class="widget-content" >
          <div class="row-fluid">
            <div class="span9">
              <div class="chart"></div>
            </div>
            <div class="span3">
              <ul class="site-stats">
                <li class="bg_lh"><i class="icon-user"></i> <strong>2540</strong> <small>Total Usuarios</small></li>
                <li class="bg_lh"><i class="icon-plus"></i> <strong>120</strong> <small>New Usuarios </small></li>
                <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>656</strong> <small>Total compras</small></li>
                <li class="bg_lh"><i class="icon-tag"></i> <strong>9540</strong> <small>Total Ordenes</small></li>
                <li class="bg_lh"><i class="icon-repeat"></i> <strong>10</strong> <small>Total reservas</small></li>
                <li class="bg_lh"><i class="icon-globe"></i> <strong>8540</strong> <small>total pedidos</small></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--End-Chart-box--> 
    <hr/>
  
   
        <div class="widget-box">
    
        </div>
        
      </div>


  </div>
</div>



<div class="row-fluid" id="footer">
  <div id="footerf" class="span12"> 2019 &copy; compañia restaurante </div>
</div>


<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 



       
    </form>
</body>
</html>
