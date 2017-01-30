<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Eficiencia.aspx.cs" Inherits="Produccion.Eficiencia1" %>
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
                  <li><a href="OrdenProduccion.aspx">Orden de Producción</a></li> 
                   <li><a href="Operador1.aspx">Registro de Tiempo Real</a></li>  
               </ul>
          </div>
       </div>
              <div class="row">
            <div class="col-md-12">
               <h1>Consulta de la Eficiencia.</h1>
            </div>
          </div>

             <!-- Formulario tiempo estimado-->

                <div class="col-lg-3">  
                   <div id="Estimados-form" class="form-container" >
                      <div class="row">
                         <div class="form-title">
                           <span>Fecha</span>
                         </div>
                      </div>


                       <!--Contenedor del formulario-->
                   <div class="input-container">
                      <div class="row">            
                                                                              
                          <br />
                                   <div class="col-lg-9">   
                        <asp:TextBox runat="server" ID="txtfecha1"  class="form-control" placeholder="Fecha."></asp:TextBox>  
                                       </div>
                          <div class="col-lg-2"> <asp:ImageButton ID="ImageButton1" runat="server" Height="29px"
            ImageUrl="Imagenes/png/calendar (2).png"  Width="34px" OnClick="ImageButton1_Click"  />
                                   </div>
                                         <br />    
                          <div class="col-lg-12"></div>
                                                                  <br /> 
                                                         <br />   
                           <div class="col-lg-9">   
                        <asp:TextBox runat="server" ID="txtfecha2"  class="form-control" placeholder="Fecha."></asp:TextBox>   
                                   </div>
                                                 <div class="col-lg-2"> <asp:ImageButton ID="ImageButton2" runat="server" Height="29px"
            ImageUrl="Imagenes/png/calendar (2).png"  Width="34px" OnClick="ImageButton2_Click" />
                                   </div>
                                                         <br />    
                          <div class="col-lg-12"></div>                                          
                                <br />    
                                                              <div class="col-lg-12">

                                                                  <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged">
                                                                      <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                                      <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                                      <OtherMonthDayStyle ForeColor="#999999" />
                                                                      <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                                      <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                                      <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                                                      <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                                      <WeekendDayStyle BackColor="#CCCCFF" />
                                                                  </asp:Calendar>



                                                                  <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px" OnSelectionChanged="Calendar2_SelectionChanged">
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
                                                                  <br />    
                          <div class="col-lg-12"></div>                                          
                                <br />    


              
                                            

                              </div>
                </div>
              </div>
                    </div>

           <div class="col-lg-6">
               <div style="overflow:scroll;height:370px;width:820px;">
                              <div style="width:820px;height:470px"> 
                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-condensed small-top-margin" DataSourceID="SqlDataSource1" 
                                      CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                      <Columns>
                                          <asp:BoundField DataField="Prensa" HeaderText="Prensa" SortExpression="Prensa" />
                                          <asp:BoundField DataField="Orden" HeaderText="Orden" SortExpression="Orden" />
                                          <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                          <asp:BoundField DataField="Turno" HeaderText="Turno" SortExpression="Turno" />
                                          <asp:BoundField DataField="Nomina" HeaderText="Nómina" SortExpression="Nomina" />
                                          <asp:BoundField DataField="Eficiencia" HeaderText="Eficiencia" SortExpression="Eficiencia" ReadOnly="True" ItemStyle-CssClass="myStyle" />
                                          <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:dd-MM-yy}"/>
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


                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CCLPRODUCCIONConnectionString %>" SelectCommand="EficienciaVista" SelectCommandType="StoredProcedure">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="txtfecha1" DbType="Date" Name="Fecha1" PropertyName="Text" />
                                          <asp:ControlParameter ControlID="txtfecha2" DbType="Date" Name="Fecha2" PropertyName="Text" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>


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
