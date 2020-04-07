<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interfazpedido.aspx.cs" Inherits="Restaurante.Vista.Interfazpedido" %>

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
        body{
               background-color:maroon
        }
        .contenedor{
 padding: 10px; float: left; width: 45%; text-align: justify;

}
         h4
        {
color:white
        }


         #galeria {
            margin: 1rem auto;
            width:100%;
            max-width:960px;
            column-count: 3;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

               <div class="contenedor">
             <h4>Menu</h4>

                                       <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" Width="100%" RepeatColumns="2" SelectCommand="SELECT * FROM [Menus] WHERE ([id_menu] = @id_menu)"  >
                    <ItemTemplate>

                  
  
        <div class="table-responsive">
          <table class="table-responsive-sm">
                   <tbody id="tablapersonalisada">

                        <tr >
                            <td>

                                <asp:Image ID="Image1" runat="server" Height="135px" ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("Imagen" )) %>' Width="135px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" ForeColor="White" Font-Size="10" Text='<%# Eval("Tipo_plato") %>'></asp:Label>
                            </td>
                        </tr>    
                       <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" ForeColor="White" Font-Size="10" Text='<%# Eval("Costo") %>'></asp:Label>
                            </td>
                        </tr>  
                       <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" ForeColor="White" Font-Size="10" Text='<%# Eval("Nombre") %>'></asp:Label>
                            </td>
                        </tr>  
                      
                       
              </tbody>
                      </table>  
        </div>
    

                    <br />
                    <br />
                            
                </ItemTemplate>



            </asp:DataList>

         
                   <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="contenedor">

         <h4>Ingresar datos</h4>
            
              <br />
            <asp:TextBox ID="TextBox1" CssClass="form-control"  placeholder="Tipo de Pedido" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" CssClass="form-control"  placeholder="Cantidad" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" CssClass="form-control"  placeholder="Direccion" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" CssClass="form-control"  placeholder="Costo Total" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" CssClass="form-control"  placeholder="Nombre" runat="server"></asp:TextBox>
             <br />
            <asp:TextBox ID="TextBox6" CssClass="form-control"  placeholder="Ciudad" runat="server"></asp:TextBox>
             <br />
            <asp:TextBox ID="TextBox7" CssClass="form-control"  placeholder="Telefono" runat="server"></asp:TextBox>
             <br />
            <asp:TextBox ID="TextBox8" CssClass="form-control"  placeholder="Direccion" runat="server"></asp:TextBox>
             <br />
            <asp:TextBox ID="TextBox9" CssClass="form-control"  placeholder="Apellido" runat="server"></asp:TextBox>
            <br />
              <asp:TextBox ID="TextBox10" CssClass="form-control"  placeholder="Gmail" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" CssClass="btn btn-secondary" runat="server" Text="Realizar Pedido" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        </div>
    </form>
</body>
</html>
