<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrdenProduccion.aspx.cs" Inherits="Produccion.OrdenProduccion" %>
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

        <!-- Bootstrap Core CSS -->


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
                  <li><a href="Operador1.aspx">Registro de Tiempo Real</a></li> 
                   <li><a href="Eficiencia.aspx">Eficiencia</a></li>   
               </ul>
          </div>
       </div>

             <!-- Formulario de la vista del operador-->

                <div class="col-lg-3">  
                   <div id="Estimados-form" class="form-container" >
                      <div class="row">
                         <div class="form-title">
                           <span>Buscar.</span>
                         </div>
                      </div>


                       <!--Contenedor del formulario-->
                   <div class="input-container">
                      <div class="row">            
                                                                              
                                                            
                        </div>


                        <div class="col-lg-12">   
                                     
                        <asp:DropDownList runat="server" ID="ddlprensa"  class="form-control" >
                            <asp:ListItem>Ars 1</asp:ListItem>
                            <asp:ListItem>Ars 2</asp:ListItem>
                            <asp:ListItem>Ars 3</asp:ListItem>
                            <asp:ListItem>Ars 4</asp:ListItem>
                            <asp:ListItem>Ars 5</asp:ListItem>
                            <asp:ListItem>Ars 6</asp:ListItem>
                            <asp:ListItem>Ars 7</asp:ListItem>
                            <asp:ListItem>MR1</asp:ListItem>
                            <asp:ListItem>MR3</asp:ListItem>
                            <asp:ListItem>MR4</asp:ListItem>
                            <asp:ListItem>MR7</asp:ListItem>
                            <asp:ListItem>MS4</asp:ListItem>
                            <asp:ListItem>ABG</asp:ListItem>
                            <asp:ListItem>Dgl</asp:ListItem>
                                       </asp:DropDownList>    

                                   </div>
                                           <br />    
                          <div class="col-lg-12"></div>
                                                                  <br /> 



                                       <div class="col-lg-12">
                               <div class="input-group clockpicker">
                                    <asp:TextBox runat="server" ID="Hora1" type="text" class="form-control" value="09:30"> </asp:TextBox>
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-time"></span>
                                    </span>
                              </div>
  </div>
           <br />    
                          <div class="col-lg-12"></div>
                                                                  <br /> 

                          <div class="col-lg-12">
                               <div class="input-group clockpicker">
                                    <asp:TextBox runat="server" type="text" ID="Hora2" class="form-control" value="09:30"> </asp:TextBox>
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-time"></span>
                                    </span>
                              </div>
  </div>
                                                 <br />    
                          <div class="col-lg-12"></div>
                                                                  <br />    
                       
                     

                            <div class="col-lg-8">   
                        <asp:TextBox runat="server" ID="txtfecha1"  class="form-control" placeholder="Fecha."></asp:TextBox>   
                                   </div>
                                                 <div class="col-lg-2"> 
                                                              <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="Imagenes/png/calendar (2).png"  Width="34px" OnClick="ImageButton1_Click"/>
                                   </div>
                       <div class="col-lg-12"></div>
                          <br />   
                          <div class="col-lg-12"></div> 
                          <br />
                          <div class="col-lg-12">
                              <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged1">
                                  <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                  <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                  <OtherMonthDayStyle ForeColor="#999999" />
                                  <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                  <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                  <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                  <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                  <WeekendDayStyle BackColor="#CCCCFF" />
                              </asp:Calendar>
                          </div>
                                              <div class="col-lg-12"></div>
                          <br />   
                          <div class="col-lg-12"></div> 
                          <br />
                                              <div class="col-lg-12"></div>
                          <br />   
                          <div class="col-lg-12"></div> 
                          <br />
                                              <div class="col-lg-12"></div>
                          <br />   
                          <div class="col-lg-12"></div> 
                          <br />
                                              <div class="col-lg-12"></div>
                          <br />   
                          <div class="col-lg-12"></div> 
                          <br />




                                            
                                      
                                                           
 


                                                               </div>
                              </div>
                </div>

           <div class="col-lg-8">
               <div style="overflow:scroll;height:470px;width:820px;">
                              <div style="width:800px;height:500px"> 
                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-condensed small-top-margin" DataKeyNames="IDTiempoEstimado" 
                                     CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" DataSourceID="SqlDataSource1">
                                      <Columns>
                                          
                                          <asp:BoundField DataField="TEMaquina" HeaderText="Máquina" SortExpression="TEMaquina" />
                                          <asp:BoundField DataField="TEot" HeaderText="Orden" SortExpression="TEot" />
                                          <asp:BoundField DataField="TEMetros" HeaderText="Metros" SortExpression="TEMetros" />
                                          <asp:BoundField DataField="TEVelocidad" HeaderText="Velocidad" SortExpression="TEVelocidad" />
                                          <asp:BoundField DataField="TEArreglo" HeaderText="Arreglo" SortExpression="TEArreglo" />
                                          <asp:BoundField DataField="TEInicio" HeaderText="Inicio" SortExpression="TEInicio" ItemStyle-CssClass="myStyle"/>
                                          <asp:BoundField DataField="TEDias" HeaderText="Días" SortExpression="TEDias" />
                                          <asp:BoundField DataField="TEFin" HeaderText="Fin" SortExpression="TEFin" ItemStyle-CssClass="myStyle" />
                                          <asp:BoundField DataField="TETimEstimado" HeaderText="T. Estimado" SortExpression="TETimEstimado" />
                                          <asp:BoundField DataField="TEFecha" HeaderText="Fecha" SortExpression="TEFecha" DataFormatString="{0:dd-MM-yyyy}"/>
                                      </Columns>
                                      <FooterStyle BackColor="White" ForeColor="#000066" />
                                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                      <RowStyle ForeColor="#000066" />
                                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                                  </asp:GridView>
                                 
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CCLPRODUCCIONConnectionString %>" SelectCommand="Tiempo_Orden" SelectCommandType="StoredProcedure">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="ddlprensa" Name="Maquina" PropertyName="SelectedValue" Type="String" />
                                          <asp:ControlParameter ControlID="Hora1" DbType="Time" Name="Hora1" PropertyName="Text" />
                                          <asp:ControlParameter ControlID="Hora2" DbType="Time" Name="Hora2" PropertyName="Text" />
                                          <asp:ControlParameter ControlID="txtfecha1" DbType="Date" Name="Fecha1" PropertyName="Text" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
                                 
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
