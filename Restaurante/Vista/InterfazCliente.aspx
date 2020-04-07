<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InterfazCliente.aspx.cs" Inherits="Restaurante.Vista.InterfazCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <link rel="stylesheet" type="text/css" href="cssmenu/estilologin.css" >
    <script src="cssmenu/script.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div id='cssmenu'>
<ul>
   <li><a href='#'>Home</a></li>
   <li class='active has-sub'><a href='#'>Products</a>
      <ul>
         <li class='has-sub'><a href='#'>Product 1</a>
            <ul>
               <li><a href='#'>Sub Product</a></li>
               <li><a href='#'>Sub Product</a></li>
            </ul>
         </li>
         <li class='has-sub'><a href='#'>Product 2</a>
            <ul>
               <li><a href='#'>Sub Product</a></li>
               <li><a href='#'>Sub Product</a></li>
            </ul>
         </li>
      </ul>
   </li>
   <li><a href='#'>About</a></li>
   <li><a href='#'>Contact</a></li>
</ul>
</div>
        </div>
    </form>
</body>
</html>
