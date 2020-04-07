<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interfazdeadministrador.aspx.cs" Inherits="Restaurante.Vista.Interfazdeadministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="css/matrix-style.css" />
    <link rel="stylesheet" href="css/matrix-media.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'/>
<script lang="javascript">
      function pedido() {
          div = document.getElementById('pedido');      
          div.style.display = ''; 
      }
      function restaurante() {
         
          div = document.getElementById('restaurantes');
          div.style.display = '';
       
    }

     function reserva() {
          div = document.getElementById('reserva');      
          div.style.display = ''; 
      }
      function oferta() {
         
          div = document.getElementById('oferta');
          div.style.display = '';
       
      }

      function menu () {
          div = document.getElementById('menu');
          div.style.display = '';
    }

        function cerrar1() {
          div = document.getElementById('pedido');      
        div.style.display = 'none';
      }
      function cerrar2() {
         
          div = document.getElementById('restaurantes');
          div.style.display = 'none';
       
    }

     function cerrar3() {
          div = document.getElementById('reserva');      
          div.style.display = 'none';
      }
      function cerrar4() {
         
          div = document.getElementById('oferta');
         div.style.display = 'none';
       
      }

      function cerrar5 () {
          div = document.getElementById('menu');
        div.style.display = 'none';
      }
</script>
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
                    background-color:maroon
                }
                #footer {
                     background-color:maroon
                }
            
                #hola {
 background-color:maroon
                }
                #ab,#a,#b,#c,#d,#footerf {
                    color :white
                }
 

                #tamaño {
                    
width:200px;
                }
                .auto-style1 {
                    margin-right: 0px;
                    margin-top: 18px;
                }
            </style>


        





<div id="search">
    <asp:Button ID="Button4" runat="server" Text="cerrar cesion" OnClick="Button4_Click" />
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
    <li> <a  href="charts.html"data-toggle="modal" data-target="#restaurant"><i class="icon icon-signal"></i> <span id="a">Agregar restaurante</span> </a> </li>
    <li> <a  href="widgets.html"data-toggle="modal" data-target="#menus"><i class="icon icon-inbox"></i> <span id="b">Agregar menu</span></a> </li>
    <li><a  href="tables.html" data-toggle="modal" data-target="#ofertas"><i class="icon icon-th"></i> <span id="c">Agregar oferta</span></a></li>
 
    <li class="submenu"> <a  href="#"><i class="icon icon-th-list"></i> <span id="d">Tablas</span> <span class="label label-important">3</span></a>
      <ul>
         
        <li><a href="javascript:pedido();" >Pedidos</a></li>
        <li><a href="javascript:restaurante();">Restaurantes</a></li>
        <li><a href="javascript:reserva();">reservas</a></li>
         <li><a href="javascript:oferta();">Ofertas</a></li>
        <li><a href="javascript:menu();">Menus</a></li>

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

        <div id="pedido" style="display:none;" class="widget-box">

                  <asp:GridView ID="GridView1" runat="server" CssClass="footable" AutoGenerateColumns="False" ShowFooter="True" 
        ShowHeaderWhenEmpty="True" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" 
        OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Vertical" Height="10px" Width="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" > 
             <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

                        <Columns>
                <asp:TemplateField HeaderText="id_pedido">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server"  Text='<%# Eval("id_pedido") %>'></asp:Label>
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox20" runat="server" Text='<%# Eval("id_pedido") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_pedido" runat="server"></asp:TextBox>
                        </FooterTemplate>  
                </asp:TemplateField>
   
                  <asp:TemplateField HeaderText="Tipo_pedido">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Tipo_pedido") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox21" runat="server" Text='<%# Eval("Tipo_pedido") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Tipo_pedido" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Costototal">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Costototal") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox22" runat="server" Text='<%# Eval("Costototal") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Costototal" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Direccion">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Direccion") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox23" runat="server" Text='<%# Eval("Direccion") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Direccion" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cantidad">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="TextBox24" runat="server" Text='<%# Eval("Cantidad") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Cantidad" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="id_cliente">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("id_cliente") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox25" runat="server" Text='<%# Eval("id_cliente") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_cliente" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                  <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                          
                          
            </Columns>

        </asp:GridView>
            <div id="close1"><a href="javascript:cerrar1();">cerrar</a></div>

        </div>


       
    

      <div id="restaurantes" style="display:none;" class="widget-box">
          
                      <asp:GridView ID="GridView2" runat="server" CssClass="footable" AutoGenerateColumns="False" ShowFooter="True" 
        ShowHeaderWhenEmpty="True" OnRowCommand="GridView2_RowCommand" OnRowDeleting="GridView2_RowDeleting" 
        OnRowEditing="GridView2_RowEditing" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowUpdating="GridView2_RowUpdating"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Vertical" Height="10px" Width="1px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" > 
             <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

                        <Columns>
                <asp:TemplateField HeaderText="id_restaurante">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server"  Text='<%# Eval("id_restaurantes") %>'></asp:Label>
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox26" runat="server" Text='<%# Eval("id_restaurante") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_restaurante" runat="server"></asp:TextBox>
                        </FooterTemplate>  
                </asp:TemplateField>
   
                  <asp:TemplateField HeaderText="zona">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("zona") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox27" runat="server" Text='<%# Eval("zona") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="zona" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Tamaño_restaurante">
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Tamaño_restaurante") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox28" runat="server" Text='<%# Eval("Tamaño_restaurante") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Tamaño_restaurante" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Tipos_comida">
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("Tipos_comida") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox29" runat="server" Text='<%# Eval("Tipos_comida") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Tipos_comida" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Rango_precios">
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("Rango_precios") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="TextBox30" runat="server" Text='<%# Eval("Rango_precios") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Rango_precios" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Nombre">
                    <ItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox31" runat="server" Text='<%# Eval("Nombre") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>

                  <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                            
            </Columns>

        </asp:GridView>
           <div id="close2"><a href="javascript:cerrar2();">cerrar</a></div>
      </div>
      


      <div id="reserva" style="display:none;" class="widget-box">
                           <asp:GridView ID="GridView3" runat="server" CssClass="footable" AutoGenerateColumns="False" ShowFooter="True" 
        ShowHeaderWhenEmpty="True" OnRowCommand="GridView3_RowCommand" OnRowDeleting="GridView3_RowDeleting" 
        OnRowEditing="GridView3_RowEditing" OnRowCancelingEdit="GridView3_RowCancelingEdit" OnRowUpdating="GridView3_RowUpdating"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Vertical" Height="10px" Width="1px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" > 
             <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

                        <Columns>
                <asp:TemplateField HeaderText="id_reserva">
                    <ItemTemplate>
                        <asp:Label ID="Label16" runat="server"  Text='<%# Eval("id_reserva") %>'></asp:Label>
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox32" runat="server" Text='<%# Eval("id_reserva") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_reserva" runat="server"></asp:TextBox>
                        </FooterTemplate>  
                </asp:TemplateField>
   
                  <asp:TemplateField HeaderText="Hora">
                    <ItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("Hora") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox33" runat="server" Text='<%# Eval("Hora") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Hora" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Dia">
                    <ItemTemplate>
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("Dia") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox34" runat="server" Text='<%# Eval("Dia") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Dia" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cantidad_personas">
                    <ItemTemplate>
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("Cantidad_personas") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox35" runat="server" Text='<%# Eval("Cantidad_personas") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Cantidad_personas" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="id_cliente">
                    <ItemTemplate>
                        <asp:Label ID="Label20" runat="server" Text='<%# Eval("id_cliente") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="TextBox36" runat="server" Text='<%# Eval("id_cliente") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_cliente" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="id_restaurante">
                    <ItemTemplate>
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("id_restaurante") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox37" runat="server" Text='<%# Eval("id_restaurante") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_restaurante" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>

                  <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                       
            </Columns>

        </asp:GridView>
           <div id="close3"><a href="javascript:cerrar3();">cerrar</a></div>
          </div>




      
      <div id="oferta" style="display:none;" class="widget-box">
                 <asp:GridView ID="GridView4" runat="server" CssClass="footable" AutoGenerateColumns="False" ShowFooter="True" 
        ShowHeaderWhenEmpty="True" OnRowCommand="GridView4_RowCommand" OnRowDeleting="GridView4_RowDeleting" 
        OnRowEditing="GridView4_RowEditing" OnRowCancelingEdit="GridView4_RowCancelingEdit" OnRowUpdating="GridView4_RowUpdating"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Vertical" Height="10px" Width="1px" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" > 
             <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

                        <Columns>
                <asp:TemplateField HeaderText="id_oferta">
                    <ItemTemplate>
                        <asp:Label ID="Label22" runat="server"  Text='<%# Eval("id_oferta") %>'></asp:Label>
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox38" runat="server" Text='<%# Eval("id_oferta") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_oferta" runat="server"></asp:TextBox>
                        </FooterTemplate>  
                </asp:TemplateField>
   
                  <asp:TemplateField HeaderText="Tipo">
                    <ItemTemplate>
                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("Tipo") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox39" runat="server" Text='<%# Eval("Tipo") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Tipo" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Descripcion">
                    <ItemTemplate>
                        <asp:Label ID="Label24" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox40" runat="server" Text='<%# Eval("Descripcion") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Descripcion" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Fecha_inicio">
                    <ItemTemplate>
                        <asp:Label ID="Label25" runat="server" Text='<%# Eval("Fecha_inicio") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox41" runat="server" Text='<%# Eval("Fecha_inicio") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Fecha_inicio" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Fecha_final">
                    <ItemTemplate>
                        <asp:Label ID="Label26" runat="server" Text='<%# Eval("Fecha_final") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="TextBox42" runat="server" Text='<%# Eval("Fecha_final") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Fecha_final" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Nombre_restaurante">
                    <ItemTemplate>
                        <asp:Label ID="Label27" runat="server" Text='<%# Eval("Nombre_restaurante") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox43" runat="server" Text='<%# Eval("Nombre_restaurante") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Nombre_restaurante" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                               <asp:TemplateField HeaderText="Precio">
                    <ItemTemplate>
                        <asp:Label ID="Label28" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox44" runat="server" Text='<%# Eval("Precio") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Precio" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                               <asp:TemplateField HeaderText="id_restaurante">
                    <ItemTemplate>
                        <asp:Label ID="Label29" runat="server" Text='<%# Eval("id_restaurante") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox45" runat="server" Text='<%# Eval("id_restaurante") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_restaurante" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                      

                  <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                         
            </Columns>

        </asp:GridView>
           <div id="close4"><a href="javascript:cerrar4();">cerrar</a></div>
          </div>



      
      <div id="menu" style="display:none;" class="widget-box">
          
                   <asp:GridView ID="GridView5" runat="server" CssClass="footable" AutoGenerateColumns="False" ShowFooter="True" 
        ShowHeaderWhenEmpty="True" OnRowCommand="GridView5_RowCommand" OnRowDeleting="GridView5_RowDeleting" 
        OnRowEditing="GridView5_RowEditing" OnRowCancelingEdit="GridView5_RowCancelingEdit" OnRowUpdating="GridView5_RowUpdating"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Vertical" Height="10px" Width="1px" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" > 
             <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

                        <Columns>
                <asp:TemplateField HeaderText="id_menu">
                    <ItemTemplate>
                        <asp:Label ID="Label30" runat="server"  Text='<%# Eval("id_menu") %>'></asp:Label>
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox46" runat="server" Text='<%# Eval("id_menu") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_menu" runat="server"></asp:TextBox>
                        </FooterTemplate>  
                </asp:TemplateField>
   
                  <asp:TemplateField HeaderText="Tipo_plato">
                    <ItemTemplate>
                        <asp:Label ID="Label31" runat="server" Text='<%# Eval("Tipo_plato") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox47" runat="server" Text='<%# Eval("Tipo_plato") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Tipo_plato" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Costo">
                    <ItemTemplate>
                        <asp:Label ID="Label32" runat="server" Text='<%# Eval("Costo") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox48" runat="server" Text='<%# Eval("Costo") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Costo" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="Nombre">
                    <ItemTemplate>
                        <asp:Label ID="Label33" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox49" runat="server" Text='<%# Eval("Nombre") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                             <asp:TemplateField HeaderText="id_restaurante">
                    <ItemTemplate>
                        <asp:Label ID="Label34" runat="server" Text='<%# Eval("id_restaurante") %>'></asp:Label>
 
                    </ItemTemplate>
                        <EditItemTemplate >
                            <asp:TextBox ID="TextBox50" runat="server" Text='<%# Eval("id_restaurante") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <FooterTemplate>                        
                            <asp:TextBox ID="id_restaurante" runat="server"></asp:TextBox>
                        </FooterTemplate>
                 </asp:TemplateField>
                         

                  <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                        
            </Columns>

        </asp:GridView>
           <div id="close5"><a href="javascript:cerrar5();">cerrar</a></div>
          </div>










        
      </div>


  </div>
</div>



<div class="row-fluid" id="footer">
  <div id="footerf" class="span12"> 2019 &copy; compañia restaurante </div>
</div>











            
       
     


            <div class="modal" id="restaurant" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Agregar restaurante</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <asp:TextBox ID="TextBox1"  CssClass="form-control" placeholder="Zona" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox2"  CssClass="form-control" placeholder="Tamaño del restaurante" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox3"  CssClass="form-control" placeholder="Tipo de restaurante" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox4"  CssClass="form-control" placeholder="Tipo de servicio" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox5"  CssClass="form-control" placeholder="Tipo de comida" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox6"  CssClass="form-control" placeholder="Rango de precio" runat="server"></asp:TextBox>
           <br />
          <asp:TextBox ID="TextBox19"  CssClass="form-control" placeholder="Nombre del restaurante" runat="server"></asp:TextBox>
         
            <asp:FileUpload ID="FileUpload2" runat="server" />
          
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
          <asp:Image ID="Image2" runat="server" />
          <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Registrar" OnClick="Button2_Click" />
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
      </div>
      <div class="modal-footer">
         
      </div>
    </div>
  </div>
</div>


      <div class="modal" id="menus" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Agregar menu</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
           <asp:TextBox ID="TextBox7" CssClass ="form-control" placeholder="Tipo de platos" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox8" CssClass="form-control" placeholder="Costo" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox9" CssClass="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox10" CssClass="form-control" placeholder="Id restaurante" runat="server"></asp:TextBox>
       <br />
            <asp:FileUpload ID="FileUpload3" runat="server" />
          <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
          <asp:Image ID="Image3" runat="server" />
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
    <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Registrar" OnClick="Button3_Click" />
      </div>
    </div>
  </div>
</div>


                  <div class="modal" id="ofertas" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Agregar oferta</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <asp:TextBox ID="TextBox13" CssClass="form-control"  placeholder="Tipo de oferta"  runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox14"  CssClass="form-control" placeholder="Descripcion" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox15"  CssClass="form-control" placeholder="Fecha de inicio" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox16"  CssClass="form-control" placeholder="Fecha final" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox17"  CssClass="form-control" placeholder="Nombre del restaurante" runat="server"></asp:TextBox>
          <br />
          <asp:TextBox ID="TextBox18"  CssClass="form-control" placeholder="Precio" runat="server"></asp:TextBox>
          <br />
            <asp:TextBox ID="TextBox11"  CssClass="form-control" placeholder="Id restaurante" runat="server"></asp:TextBox>
          <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
          <br />
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          <asp:Image ID="Image1" runat="server" />
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Registrar" OnClick="Button1_Click" />
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
      </div>
      <div class="modal-footer">
         
      </div>
    </div>
  </div>
</div>


            <div id="ta">

            



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


           
       </div>
    </form>
</body>
</html>
