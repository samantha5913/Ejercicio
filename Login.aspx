<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Produccion.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <meta name="description" content="Aplicación web de American Airlines"/>   
    <meta charset="utf-8" />

    <link rel= "stylesheet" href="css/bootstrap.css" type="text/css"/>
    <link href="CSS/sb-admin-2.css" rel="stylesheet" />
    <script src="jquery/bootstrap.js" type="text/javascript"></script>
    <script src="js/npm.js" type="text/javascript"></script>






    <div class="container">

        <div class="navbar navbar-inverse">
           <div class="navbar-header" style="background: #006">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
               </button>
                  <a class="navbar-brand" href="#">
                 <img src="Imagenes/header_logo_ccl_mexico.gif"; width="50"; height="30"/>
                 </a>
           </div>
           <div class="navbar-collapse collapse navbar-inverse-collapse"  style="background: #006" >
               <ul class="nav navbar-nav navbar-right">
                  <li><a href="Instructivo/Manual De Usuario.pdf">Instructivo</a></li>
                  <li><a href="video.aspx">Video</a></li>   
               </ul>
          </div>
       </div>
          <div class="row">
            <div class="col-md-4">
               <h1>Etiquetas CCL.</h1>
            </div>
          </div>
          <br />
          <br />
    <div class="row">
        <div class="col-lg-6">
             <img src="Imagenes/huellas.gif"; width="300"; height="200"/>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading" style="background: #006; color:white">
                    <span class="glyphicon glyphicon-lock"></span> Login</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">


                    <div class="form-group">
                        <label for="inputUsuario3" class="col-sm-3 control-label">
                            Usuario</label>
                        <div class="col-sm-9">
                           <asp:TextBox runat="server" ID="txtusuario"  class="form-control" placeholder="Usuario"  type="Usuario" required></asp:TextBox>
                        </div>
                    </div>

                     <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <div >
                                <label>

                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputContraseña3" class="col-sm-3 control-label">
                            Contraseña</label>
                        <div class="col-sm-9">
                            <asp:TextBox runat="server" ID="txtcontraseña"  class="form-control" placeholder="Contraseña"  type="password" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <div class="checkbox">
                                <asp:label runat="server" ID="lblmensaje">

                                </asp:label>                          
                            </div>
                        </div>
                    </div>
                    <div class="form-group last">
                        <div class="col-sm-offset-3 col-sm-9">                            
                                <asp:Button ID="btningresar" class="btn btn-lg btn-primary btn-sm" runat="server" Text="Ingresar" OnClick="btningresar_Click" >
                                </asp:Button>
                                <asp:Button ID="btncancelar" class="btn btn-lg btn-primary btn-sm" runat="server" Text="Cancelar" OnClick="btncancelar_Click">
                                </asp:Button>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="panel-footer">
                    No esta registrado? Solicite Registro. 
            </div>
        </div>
    </div>
        </div>
</div>
     <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
        function htmlbodyHeightUpdate() {
            var height3 = $(window).height()
            var height1 = $('.nav').height() + 50
            height2 = $('.main').height()
            if (height2 > height3) {
                $('html').height(Math.max(height1, height3, height2) + 10);
                $('body').height(Math.max(height1, height3, height2) + 10);
            }
            else {
                $('html').height(Math.max(height1, height3, height2));
                $('body').height(Math.max(height1, height3, height2));
            }

        }
        $(document).ready(function () {
            htmlbodyHeightUpdate()
            $(window).resize(function () {
                htmlbodyHeightUpdate()
            });
            $(window).scroll(function () {
                height2 = $('.main').height()
                htmlbodyHeightUpdate()
            });
        });
        </script>
</asp:Content>
