<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MenuSupervisor.aspx.cs" Inherits="Produccion.MenuSupervisor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <!-- Etiquetas Meta del proyecto -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Meú para consulta de datos registrados para uso de los supervisores" />
    <meta name="author" content="Samantha Guzman"/>
    <!-- Bootstrap Core CSS -->
    <link href="CSS/bootstrap.css" rel="stylesheet" />

    <!-- Hoja de Estilos -->
    <link href="CSS/sb-admin-2.css" rel="stylesheet" />
 
    <!-- Fuentes personalizadas-->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

      <script  type="text/javascript">
          if (history.forward(1))
              location.replace(history.forward(1))
            </script>

            <meta http-equiv="Expires" content="0" />
            <meta http-equiv="Pragma" content="no-cache" />
        
    <!-- Contenedor -->

       <div class="container">

    <!-- barra de navegación responsiva -->
        <div class="navbar navbar-inverse" style="background: #006">
           <div class="navbar-header" >
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
               </button>
                  <a class="navbar-brand" href="#">
                 <img src="Imagenes/header_logo_ccl_mexico.gif"; width="50"; height="30"/>
                 </a>
           </div>
     
      
           <div class="navbar-collapse collapse navbar-inverse-collapse" style="background: #006">
               <ul class="nav navbar-nav navbar-right">
                  <li><a href="Login.aspx">Salir</a></li>  
                  <li><a href="Supervisor.aspx">Regresar</a></li> 
               </ul>
           </div>
       </div>
        <!-- Contenedor del panel de consultas-->
          <div class="col-lg-12">  
                   <div id="Estimados-form" class="form-container" >
                      <div class="row">                     
                          
                          <!-- Vista de los datos registrados por el supervisor -->
                           <div class="col-lg-4 text-center" >
                                 <a  href="VistasSupervisor.aspx">
                                 <img src="Imagenes/png/calendar-1.png"; width="120"; height="120"/>
                                 </a>
                               <h3>Ordenar por Fecha Tiempo Estimado</h3>
                           </div>
                          <!-- Vista de los datos registrados por el operador (Por Fecha)-->
                              <div class="col-lg-4 text-center">
                                 <a href="VistasOperador.aspx">
                                 <img src="Imagenes/png/calendar (2).png"; width="120"; height="120"/>
                                 </a>
                                  <h3>Ordenar por Fecha Tiempo Real</h3>
                           </div>
                         <!-- Vista de los datos registrados por el operador (Por Nombre)-->
                              <div class="col-lg-4 text-center">
                                 <a  href="V_OperadorXNombre.aspx">
                                 <img src="Imagenes/png/calendar.png"; width="120"; height="120"/>
                                 </a>
                                  <h3>Ordenar por Prensista Tiempo Real</h3>
                           </div>
                          <br />
                          <div class="col-lg-12"></div>
                          <br />
                           <br />
                          <div class="col-lg-12"></div>
                          <br />
                        <!-- Vista de la eficiencia de los operadores (Por Fecha) -->
                                                     <div class="col-lg-4 text-center" >
                                 <a  href="EficienciaVista.aspx">
                                 <img src="Imagenes/png/search.png"; width="120"; height="120"/>
                                 </a>
                                 <h3>Buscar Eficiencia por Fecha</h3>
                           </div>
                        <!-- Vista de los datos programado y eficiencia-->
                              <div class="col-lg-4 text-center">
                                 <a href="VistasXProduccion.aspx">
                                 <img src="Imagenes/png/magnifying-glass.png"; width="120"; height="120"/>
                                 </a>
                                  <h3>Programa y Eficiencia</h3>
                           </div>

                                        <div class="col-lg-4 text-center">
                                 <a href="VistasXHorario.aspx">
                                 <img src="Imagenes/png/clock (2).png"; width="120"; height="120"/>
                                 </a>
                                  <h3>Orden de Producción por Horas</h3>
                           </div>
                                          <br />
                          <div class="col-lg-12"></div>
                          <br />
                           <br />
                          <div class="col-lg-12"></div>
                          <br />

                                                                  <div class="col-lg-4 text-center">
                                 <a href="VistasSupYNom.aspx">
                                 <img src="Imagenes/png/machinery-40.png"; width="120"; height="120"/>
                                 </a>
                                  <h3>Orden de Trabajo por Máquina</h3>
                           </div>



                                                                   <div class="col-lg-4 text-center">
                                 <a href="Producction.aspx">
                                 <img src="Imagenes/png/machinery-39.png"; width="120"; height="120"/>
                                 </a>
                                  <h3>Orden de Producción del Día</h3>
                           </div>

                                                                                <div class="col-lg-4 text-center">
                                 <a href="RegistroUsuarios.aspx">
                                 <img src="Imagenes/png/id-card.png"; width="120"; height="120"/>
                                 </a>
                                  <h3>Registro de Usuarios</h3>
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
