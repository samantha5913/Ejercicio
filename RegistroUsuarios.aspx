<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="Produccion.RegistroUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Etiquetas Meta del proyecto -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Es una aplicación diseñada para la gestión de tiempos de producción en la empresa CCL." />
    <meta name="author" content="Samantha Guzman"/>
    <!-- Bootstrap Core CSS -->
    <link href="CSS/bootstrap.css" rel="stylesheet" />



    <!-- Hoja de Estilos -->
    <link href="CSS/sb-admin-2.css" rel="stylesheet" />
 
    <!-- Fuentes personalizadas-->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- Reloj con Bootstrap -->

    <link href="CSS/bootstrap-clockpicker.css" rel="stylesheet" />

     <link href="CSS/jquery-clockpicker.css" rel="stylesheet" />


      <script  type="text/javascript">
          if (history.forward(1))
              location.replace(history.forward(1))
            </script>

            <meta http-equiv="Expires" content="0" />
            <meta http-equiv="Pragma" content="no-cache" />
        
    <!-- barra de navegación responsiva -->
       <div class="container">
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
                  <li><a href="MenuSupervisor.aspx">Regresar</a></li>  
               </ul>
          </div>
       </div>


             <!-- Formulario de la vista del operador-->

                <div class="col-lg-5">  
                   <div id="Supervisores-form" class="form-container" >
                                                                    <div class="row">
                         <div class="form-title">
                           <span>Supervisores</span>
                         </div>
                      </div>


                       <!--Contenedor del formulario-->
                   <div class="input-container">
                      <div class="row">            
   
                       <div class="col-lg-12">
                                             <asp:Label ID="Label1" runat="server" Font-Size="Medium">Nick Name.</asp:Label>    
                                          </div>




                            <div class="col-lg-12">   
                                <asp:RequiredFieldValidator ID="Rfq1" ValidationGroup="RFVSupe" runat="server" ErrorMessage="Ingrese Dato" ControlToValidate="TxtNickName" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="TxtNickName"  class="form-control" placeholder="Usuario."></asp:TextBox>   
                                   </div>
                       
                       <div class="col-lg-12"></div><br />

                       <div class="col-lg-12">
                                             <asp:Label ID="Label2" runat="server" Font-Size="Medium">Password.</asp:Label>    
                                          </div>
                        <br />    
                        <div class="col-lg-12"></div><br />
                                                 <div class="col-lg-12">   
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ValidationGroup="RFVSupe" runat="server" ErrorMessage="Ingrese Dato" ControlToValidate="txtContraseña" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtContraseña"  class="form-control" placeholder="Contraseña."></asp:TextBox>   
                                   </div>                                                      
                        <br />    
                        <div class="col-lg-12"></div><br />
                        
                        <div class="col-lg-12"></div><br />
                                                                    

                            
                        <div class="col-lg-4">
                            <asp:Button ID="btnGuardarsup"  class="button" runat="server" Text="Cargar" OnClick="btnGuardar_Click" />
                        </div>
      

                                               <div class="col-lg-4">
                            <asp:Button ID="btneliminarsup"  class="button" runat="server" Text="Eliminar" OnClick="btneliminarsup_Click" />
                        </div>
   
     
                                                                         <div class="col-lg-4">
                            <asp:Button ID="btnmodificarsup"  class="button" runat="server" Text="Modificar" OnClick="btnmodificarsup_Click" />
                        </div>

                                            
                          <br />   
                          <div class="col-lg-12"></div> 
                          <br />                   
                           <div class="col-lg-12"></div>

                                                               </div>
                              </div>
                         

                    </div>
                         
  
                </div>
           <div class="col-lg-2"></div>
          <!-- Contenedores de lo gridview datos -->
             <div class="row">  
                 <div class="col-lg-4"> 
                                           <div style="overflow:scroll;height:250px;">
                              <div style="width:380px;height:400px">    
                      <asp:GridView ID="dgvdatossupervisor" runat="server" AutoGenerateColumns="False" ClientIDMode="Static" CssClass="table table-striped table-hover table-condensed small-top-margin" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" >
                              <Columns>
                                 
                                  <asp:BoundField DataField="Usuarios" HeaderText="Usuarios" SortExpression="Usuarios" />
                                  <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña"  />
                              </Columns>
                              <FooterStyle BackColor="White" ForeColor="#000066" />
                              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="#CCCCFF" />
                              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                              <RowStyle ForeColor="#000066" />
                              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F1F1F1" />
                              <SortedAscendingHeaderStyle BackColor="#007DBB" />
                              <SortedDescendingCellStyle BackColor="#CAC9C9" />
                              <SortedDescendingHeaderStyle BackColor="#00547E" />
                             </asp:GridView>                   
                                
                                 
                                
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CCLPRODUCCIONConnectionString %>" SelectCommand="SELECT [Usuarios], [Contraseña] FROM [Supervisor]"></asp:SqlDataSource>
                                
                                 
                                
                                 </div>
                                               </div>
                     </div>
                 </div>
           <div class="col-lg-3"></div>
             
                 <div class="col-lg-4"> 
                                           <div style="overflow:scroll;height:250px;">
                              <div style="width:380px;height:400px">    
                      <asp:GridView ID="gvdatosoperador" runat="server" AutoGenerateColumns="False" ClientIDMode="Static" CssClass="table table-striped table-hover table-condensed small-top-margin" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2">
                              <Columns>
                                  
                                  <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                  <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                              </Columns>
                              <FooterStyle BackColor="White" ForeColor="#000066" />
                              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="#CCCCFF" />
                              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                              <RowStyle ForeColor="#000066" />
                              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F1F1F1" />
                              <SortedAscendingHeaderStyle BackColor="#007DBB" />
                              <SortedDescendingCellStyle BackColor="#CAC9C9" />
                              <SortedDescendingHeaderStyle BackColor="#00547E" />
                             </asp:GridView>                   
                                
                                
                                
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CCLPRODUCCIONConnectionString %>" SelectCommand="SELECT [Nombre], [Contraseña] FROM [Operador]"></asp:SqlDataSource>
                                
                                
                                
                                 </div>
                                               </div>
                     </div>
             
           <div class="col-lg-2"></div>
                                  <!-- Formulario de la vista del operador-->

                <div class="col-lg-5">  
                   <div id="Operadores-form" class="form-container" >
                                             <div class="row">
                         <div class="form-title">
                           <span>Operadores</span>
                         </div>
                      </div>


                       <!--Contenedor del formulario-->
                   <div class="input-container">
                      <div class="row">            
   
                       <div class="col-lg-12">
                                             <asp:Label ID="Label3" runat="server" Font-Size="Medium">Nick Name.</asp:Label>    
                                          </div>




                            <div class="col-lg-12">   
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ValidationGroup="RFVOpe" runat="server" ErrorMessage="Ingrese Dato" ControlToValidate="txtnombre" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtnombre"  class="form-control" placeholder="Usuario."></asp:TextBox>   
                                   </div>
                       
                       <div class="col-lg-12"></div><br />

                       <div class="col-lg-12">
                                             <asp:Label ID="Label4" runat="server" Font-Size="Medium">Password.</asp:Label>    
                                          </div>
                        <br />    
                        <div class="col-lg-12"></div><br />
                                                 <div class="col-lg-12">   
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="RFVOpe"  runat="server" ErrorMessage="Ingrese Dato" ControlToValidate="txtcontra" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtcontra"  class="form-control" placeholder="Contraseña."></asp:TextBox>   
                                   </div>                                                      
                        <br />    
                        <div class="col-lg-12"></div><br />
                        
                        <div class="col-lg-12"></div><br />
                                                                    

                            
                        <div class="col-md-4">
                            <asp:Button ID="btnguardaroperador"  class="button" runat="server" Text="Cargar" OnClick="btnguardaroperador_Click"   />
                        </div>

                                               <div class="col-md-4">
                            <asp:Button ID="btneliminaroperador"  class="button" runat="server" Text="Eliminar" OnClick="btneliminaroperador_Click" />
                        </div>

                                            

                             <div class="col-md-4">
                            <asp:Button ID="btnmodificaroperador"  class="button" runat="server" Text="Modificar" OnClick="btnmodificaroperador_Click" />
                        </div>
            
                          <br />   
                          <div class="col-lg-12"></div> 
                          <br />                   
                           <div class="col-lg-12"></div>

                                                               </div>
                              </div>
                         

                    </div>
                         
  
                </div>


                                 









              </div>


  <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>


    <script src="js/bootstrap-clockpicker.js"></script>


    <script src="js/jquery-clockpicker.js"></script>




    


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



<script type="text/javascript">
    $('.clockpicker').clockpicker();
</script>

</asp:Content>
