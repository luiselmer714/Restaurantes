<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interfazoferta.aspx.cs" Inherits="Restaurante.Vista.Interfazoferta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


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
            img {
                height:250px;
                weight:180px
                
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

            

                                 <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" Width="100%" RepeatColumns="4"   >
                    <ItemTemplate>

                  <div class="container">
  <div class="row">
    <div class="col-xl-12 col-lg-12 col-md-12  col-sm-12">
        <div class="table-responsive">
          <table class="table-responsive-sm">
                   <tbody id="tablapersonalisada">

                        <tr >
                            <td>

                                <asp:Image ID="Image1" runat="server" Height="135px" ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("imagen" )) %>' Width="135px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" ForeColor="White" runat="server" Font-Size="10" Text= '<%# Eval("Tipo") %>'></asp:Label>
                            </td>
                        </tr>    
                        <tr>
                            <td>
                              <p>  <asp:Label ID="Label2" ForeColor="White" runat="server"  Font-Size="Small" Text='<%# Eval("Descripcion") %>'> bs</asp:Label></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" ForeColor="White" runat="server" Font-Size="10" Text='<%# Eval("Fecha_inicio") %>'></asp:Label>
                            </td>
                        </tr>    
                        <tr>
                            <td>
                              <p>   <asp:Label ID="Label4" ForeColor="White" runat="server"  Font-Size="Small" Text='<%# Eval("Fecha_final") %>'> bs</asp:Label></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" ForeColor="White" runat="server" Font-Size="10" Text='<%# Eval("Nombre_restaurante") %>'></asp:Label>
                            </td>
                        </tr>    
                        <tr>
                            <td>
                              <p>   <asp:Label ID="Label6" ForeColor="White" runat="server"  Font-Size="Small" Text='<%# Eval("Precio") %>'> bs</asp:Label></p>
                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-secondary" Text="ver restaurante" BackColor="#FF6600"    />

                            </td>
                        </tr>
              </tbody>
                      </table>  
        </div>
    </div>
  </div>
</div>
                    <br />
                    <br />
                            
                </ItemTemplate>



            </asp:DataList>




        </div>
    </form>
</body>
</html>
