<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Supervisor.aspx.cs" Inherits="Produccion.Supervisor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%@ OutputCache Location="None" %> 

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
                  <li><a href="MenuSupervisor.aspx">Menu de Vistas.</a></li>  
               </ul>
          </div>
       </div>           

              <div class="col-lg-12">
                                  <asp:Label ID="lblmensaje" runat="server" Font-Size="Larger" ForeColor="Red"></asp:Label> 
                                                </div> 

             <!-- Formulario tiempo estimado-->

                <div class="col-lg-3">  
                   <div id="Estimados-form" class="form-container" >
                      <div class="row">
                         <div class="form-title">
                           <span>Tiempo Estimado</span>
                         </div>
                      </div>


                       <!--Contenedor del formulario-->
                   <div class="input-container">
                      <div class="row">            
                                                                                                        <div class="col-lg-12">
                                             <asp:Label ID="Label5" runat="server" Font-Size="Larger">Maquína.</asp:Label>    
                                          </div>
                          <br />
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
                            <asp:ListItem>Digital</asp:ListItem>
                                       </asp:DropDownList>  
                                   </div>
                                                         <br />                  
                                                              <div class="col-lg-12"></div>
                                                                  <br />    

                                                                              <div class="col-lg-12">
                                             <asp:Label ID="Label1" runat="server" Font-Size="Larger">Orden.</asp:Label>    
                                          </div>
                          <br />
                                   <div class="col-lg-12">   
                                         <asp:RequiredFieldValidator  ID="RFVEstimado" runat="server" ControlToValidate="txtOrden" ValidationGroup="RFVDatoss" ErrorMessage="Inserte Dato" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtOrden"  class="form-control" placeholder="Orden de Trabajo."></asp:TextBox>    </div>
                                                         <br />                  
                                                              <div class="col-lg-12"></div>
                                                                  <br />    
                          <div class="col-lg-12"></div>
                                                                  <br />               
                                                              <div class="col-lg-12">
                                             <asp:Label ID="Label2" runat="server" Font-Size="Larger">Metros.</asp:Label>    
                                          </div>                                                
                                             <br />                                
                        <div class="col-lg-12"></div>
                         
                                      <div class="col-lg-12">
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcantidad" ValidationGroup="RFVDatoss" ErrorMessage="Inserte Dato" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                                        <asp:TextBox runat="server" ID="txtcantidad"  class="form-control" placeholder="Cantidad en metros."></asp:TextBox>    
                                  </div>

                            <div class="col-lg-12">
                                             <asp:Label ID="Label4" runat="server" Font-Size="Larger">Velocidad.</asp:Label>    
                                          </div>
                          <br />
                                   <div class="col-lg-12">   
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="RFVDatoss" runat="server" ControlToValidate="txtvelocidad" ErrorMessage="Ingrese Dato" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtvelocidad"  class="form-control" placeholder="Velocidad"></asp:TextBox>    
                                   </div>         
                          
                                                                                                           <div class="col-lg-12">
                                             <asp:Label ID="Label8" runat="server" Font-Size="Larger">Arreglo.</asp:Label>    
                                          </div>
                          <br />
                                   <div class="col-lg-6">   
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="RFVDatoss" runat="server" ControlToValidate="txttiempoH" ErrorMessage="Ingrese Dato" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txttiempoH"  class="form-control" placeholder="Hora"></asp:TextBox>    
                                   </div>        
                                   <div class="col-lg-6">   
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="RFVDatoss" runat="server" ControlToValidate="txttiempoM" ErrorMessage="Ingrese Dato" BackColor="Yellow" ForeColor="#000066"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txttiempoM" class="form-control" placeholder="Minuto"></asp:TextBox>    
                                   </div>   
                                                             
                             <br />
                              <div class="col-lg-12"></div>                         
                          <br />
                              <div class="col-lg-12"></div>                         
                          <br />

                          
                                          <div class="col-lg-12">
                                             <asp:Label ID="Label3" runat="server" Font-Size="Larger">Hora de Inicio</asp:Label>    
                                          </div>
                                   <br />          
                                                  <div class="col-lg-12"></div>                          
                               <br />   
                          <br />                             
                        <div class="col-lg-12"></div>
                          <br /> 
                          <br />                             
                        <div class="col-lg-12"></div>
                          <br />                                                  
                                   <div class="col-lg-6">   
                                           <asp:DropDownList runat="server" ID="txthora"  class="form-control" >
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>00</asp:ListItem>
                                       </asp:DropDownList>   
                                   </div>
                                   <div class="col-lg-6">      
                                                    <asp:DropDownList runat="server" ID="txtminuto"  class="form-control" >
                            <asp:ListItem>00</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                            <asp:ListItem>32</asp:ListItem>
                            <asp:ListItem>33</asp:ListItem>
                            <asp:ListItem>34</asp:ListItem>
                            <asp:ListItem>35</asp:ListItem>
                            <asp:ListItem>36</asp:ListItem>
                            <asp:ListItem>37</asp:ListItem>
                            <asp:ListItem>38</asp:ListItem>
                            <asp:ListItem>39</asp:ListItem>
                            <asp:ListItem>40</asp:ListItem>
                            <asp:ListItem>41</asp:ListItem>
                            <asp:ListItem>42</asp:ListItem>
                            <asp:ListItem>43</asp:ListItem>
                            <asp:ListItem>44</asp:ListItem>
                            <asp:ListItem>45</asp:ListItem>
                            <asp:ListItem>46</asp:ListItem>
                            <asp:ListItem>47</asp:ListItem>
                            <asp:ListItem>48</asp:ListItem>
                            <asp:ListItem>49</asp:ListItem>
                            <asp:ListItem>50</asp:ListItem>
                            <asp:ListItem>51</asp:ListItem>
                            <asp:ListItem>52</asp:ListItem>
                            <asp:ListItem>53</asp:ListItem>
                            <asp:ListItem>54</asp:ListItem>
                            <asp:ListItem>55</asp:ListItem>
                            <asp:ListItem>56</asp:ListItem>
                            <asp:ListItem>57</asp:ListItem>
                            <asp:ListItem>58</asp:ListItem>
                            <asp:ListItem>59</asp:ListItem>
                            <asp:ListItem>60</asp:ListItem>
                                       
                                       </asp:DropDownList>    
                                   </div>   
                                       <br />                                
                        <div class="col-lg-12"></div>                          
                               <br />   
                          <br />                             
 

                          <div class="form-group">
                        <div class="col-md-12">
                            <asp:Button ID="btncalcular"  class="button" runat="server" Text="Calcular" OnClick="btncalcular_Click" />
                        </div>
                                                               </div>
                              
                      
                      </div>
                            <div class="col-lg-6">
                                  <asp:Label ID="lbl1" runat="server" Visible="False"></asp:Label> 
                                  <asp:Label ID="lbl2" runat="server" Visible="False"></asp:Label>  
                                  <asp:Label ID="lbl3" runat="server" Visible="False"></asp:Label>  
                                  <asp:Label ID="lblestimado" runat="server" Visible="False"></asp:Label>
                                </div>                                                                                                             
                                                             <div class="col-lg-6">
                                  <asp:Label ID="lblhora" runat="server" Visible="False"></asp:Label>  
                                                                 <asp:Label ID="lblfecha" runat="server" Visible="False"></asp:Label>
                          <asp:Label ID="lblmen" runat="server"></asp:Label>
                                                                 </div>             
        </div>
                </div>
              
                    </div>
    
           <div class="col-lg-8">
               <div style="overflow:scroll;height:480px;width:820px;">
                              <div style="width:820px;height:490px"> 
                                 <asp:GridView ID="dgvdatos" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" ClientIDMode="Static" CssClass="table table-striped table-hover table-condensed small-top-margin" DataKeyNames="IDTiempoEstimado" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">

                                      
                                      
                                       <Columns>
                                           <asp:BoundField DataField="IDTiempoEstimado" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IDTiempoEstimado" />
                                           <asp:BoundField DataField="TEMaquina" HeaderText="Maquína" SortExpression="TEMaquina" />
                                           <asp:BoundField DataField="TEot" HeaderText="Orden" SortExpression="TEot" />
                                           <asp:BoundField DataField="TEMetros" HeaderText="Metros" SortExpression="TEMetros" />
                                           <asp:BoundField DataField="TEVelocidad" HeaderText="Velocidad" SortExpression="TEVelocidad" />
                                           <asp:BoundField DataField="TEArreglo" HeaderText="Arreglo" SortExpression="TEArreglo" />
                                           <asp:BoundField DataField="TEInicio" HeaderText="Inicio" SortExpression="TEInicio" ItemStyle-CssClass="myStyle" />
                                           <asp:BoundField DataField="TEDias" HeaderText="Días" SortExpression="TEDias"/>
                                           <asp:BoundField DataField="TEFin" HeaderText="Fin" SortExpression="TEFin" ItemStyle-CssClass="myStyle"/>
                                           <asp:BoundField DataField="TETimEstimado" HeaderText="T. Estimado" SortExpression="TETimEstimado" />
                                           <asp:BoundField DataField="TEFecha" HeaderText="Fecha" SortExpression="TEFecha" DataFormatString="{0:dd-MM-yyyy}"/>
                                       </Columns>

                                      
                                      
                                       <FooterStyle BackColor="White" ForeColor="#000066" />
                                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                                      <RowStyle ForeColor="#000066" />
                                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                                  </asp:GridView>
                            
                                  
                            
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CCLPRODUCCIONConnectionString %>" SelectCommand="SELECT * FROM [TiempoEstimado]"></asp:SqlDataSource>
                            
                                  
                            
                         </div>                  
                 </div>
                    <!-- Formulario para eliminar registros-->

                <div class="col-lg-12">          
             <div id="Consultar-form" class="form-container" >                  
                                          <div class="form-group">
                                                                <div class="col-lg-3">      
                           <asp:Button ID="btneliminar" runat="server" class="button"  Text="Eliminar" OnClick="btneliminar_Click" /> 
                                                               </div>
                                          <div class="col-lg-3">                         
                                              <asp:TextBox runat="server" ID="txteliminar" class="form-control" placeholder="ID de registro." ></asp:TextBox>
                                          
                                          </div>  
                                              <div class="col-lg-3">
                                                   <asp:RequiredFieldValidator ID="RFVEliminar" ValidationGroup="RFVEliminar" runat="server" BackColor="Yellow" ControlToValidate="txteliminar" ErrorMessage="Inserte ID." ForeColor="#000066"></asp:RequiredFieldValidator>
                                                  </div>
                                             <div class="col-lg-3">
                                                <img src="Imagenes/png/scissors.png"; width="30"; height="30"/>
                                              </div>                                                                                                                                                                       
                                            </div>
                 <div class="col-lg-12"></div>
                 <br />



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
