<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Interfazlogin.aspx.cs" Inherits="Restaurante.Vista.Interfazlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="estilologin.css" >
    <style>
        h5 {
            color:white
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content">
                <div class="col-12 user-img">
                    <img src="img/gallery/images.jpg"/>
                </div>
                <form class="col-12">
                   
     <h5>Login </h5>
                    <div class="form-group" id="user-group">
                       
                    <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Usuario" runat="server"></asp:TextBox>

                    </div>
              
                    <div class="form-group" id="contrasena-group">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Contraseña" runat="server"></asp:TextBox>
                    </div>
                 <i class="fas fa-sign-in-alt"></i> 
                    <asp:Button ID="Button1"  CssClass="btn btn-primary"  runat="server" Text="Siguiente" OnClick="Button1_Click" />
                      <asp:Button ID="Button2"  CssClass="btn btn-primary" runat="server" Text="Iniciar" OnClick="Button2_Click" />
                </form>
              
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                <div class="col-12 forgot">
                 
                </div>
            </div>
        </div>
    </div>
        </div>
    </div>



        </div>
    </form>
</body>
</html>
