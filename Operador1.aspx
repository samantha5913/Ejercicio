<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Operador1.aspx.cs" Inherits="Produccion.Eficiencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Etiquetas Meta del proyecto -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Vista de todos los datos almacenados en la base de datos" />
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
                  <li><a href="OrdenProduccion.aspx">Orden de Producción</a></li> 
                   <li><a href="Eficiencia.aspx">Eficiencia</a></li>  
               </ul>
          </div>   
       </div>

             <div class="col-lg-12">
                                  <asp:Label ID="lblmensaje" runat="server" Font-Size="Medium" ForeColor="#000066"></asp:Label> 
                                                </div>  


                            
                     

 <!-- Formulario tiempo estimado-->

                <div class="col-lg-3">  
                   <div id="Estimados-form" class="form-container" >

                <!--Contenedor del formulario-->
                   <div class="input-container">
                      <div class="row">        

    
                                         <div class="col-lg-6">
                                             <asp:Label ID="Label1" runat="server" Font-Size="Medium">Línea.</asp:Label>    
                                          </div>
                  
                                                                              <!-- Agrupación de label y textbox-->
                                                                        <div class="col-lg-6">
                                             <asp:Label ID="Label3" runat="server" Font-Size="Medium">Turno.</asp:Label>    
                                          </div>
                        
                                   <div class="col-lg-6">   
                                     
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



                                   <div class="col-lg-6">   
                                      
                        <asp:DropDownList runat="server" ID="ddlturno"  class="form-control" >
                            <asp:ListItem>1ro</asp:ListItem>
                            <asp:ListItem>2do</asp:ListItem>
                                       </asp:DropDownList>                  
                          </div>       
                     


                          <!-- Agrupación de label y textbox-->

                                                                        <div class="col-lg-12">
                                             <asp:Label ID="Label2" runat="server" Font-Size="Medium">Prensista.</asp:Label>    
                                          </div>
                                         
                                   <div class="col-lg-12">                                        
                                       <asp:RequiredFieldValidator ID="RFVDato1" runat="server" BackColor="Maroon" ControlToValidate="txtnombre" ErrorMessage="Inserte Dato" ValidationGroup="RFVDatoss" Font-Size="Small"></asp:RequiredFieldValidator>                                    
                        <asp:TextBox runat="server" ID="txtnombre"  class="form-control" placeholder="Nombre Trabajador"></asp:TextBox>    
                                   </div>                                                  
                            <br />
                              <div class="col-lg-12"></div>                         
                          <br />
                              <div class="col-lg-12"></div>                         
                          <br />
                       

                          <!-- Agrupación de label y textbox-->
                          <!-- Agrupación de label y textbox-->

                                                           <div class="col-lg-12">
                                             <asp:Label ID="Label4" runat="server" Font-Size="Medium">Nómina.</asp:Label>    
                                          </div>
                          
                                   <div class="col-lg-12">   
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="RFVDatoss" runat="server" ControlToValidate="txtnomina" ErrorMessage="Ingrese Dato" BackColor="#990000" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtnomina"  class="form-control" placeholder="Nomina Trabajador"></asp:TextBox>    
                                   </div>                                               
                             <br />
                              <div class="col-lg-12"></div>                         
                          <br />
                              <div class="col-lg-12"></div>                         
                          <br />
                     
                          <!-- Agrupación de label y textbox-->

                                                                        <div class="col-lg-6">
                                             <asp:Label ID="Label6" runat="server" Font-Size="Medium">Orden.</asp:Label>    
                                          </div>
                                                            <div class="col-lg-6">
                                             <asp:Label ID="Label5" runat="server" Font-Size="Medium">Metros.</asp:Label>    
                                          </div>
                    
                                  <div class="col-lg-6">   
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="RFVDatoss" runat="server" ControlToValidate="txtorden" ErrorMessage="Ingrese Dato" BackColor="#990000" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtorden"  class="form-control" placeholder="Orden"></asp:TextBox>    
                                  </div>                                             
            
                          
                          <!-- Agrupación de label y textbox-->

                                     
                          
                                  <div class="col-lg-6">   
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ValidationGroup="RFVDatoss" runat="server" ControlToValidate="txtmetros" ErrorMessage="Ingrese Dato" BackColor="#990000" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:TextBox runat="server" ID="txtmetros"  class="form-control" placeholder="Metros"></asp:TextBox>    
                                  </div>                 



                                          <div class="col-lg-12">
                                             <asp:Label ID="Label7" runat="server" Font-Size="Larger">Hora de Inicio</asp:Label>    
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
                                           <asp:DropDownList runat="server" ID="txthoraIni"  class="form-control" >
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
                                                    <asp:DropDownList runat="server" ID="txtminutoIni"  class="form-control" >
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
             

                              <div class="col-lg-12">
                                             <asp:Label ID="Label8" runat="server" Font-Size="Larger">Hora Fin Cambio.</asp:Label>    
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
                                           <asp:DropDownList runat="server" ID="ddlhoracambio"  class="form-control" >
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
                                                    <asp:DropDownList runat="server" ID="ddlminutocambio"  class="form-control" >
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
                              <div class="col-lg-12">  </div>                       



                            <div class="col-lg-12">
                                             <asp:Label ID="Label10" runat="server" Font-Size="Larger">Hora Fin Ajuste.</asp:Label>    
                                          </div>
                                   <br />          
                                                  <div class="col-lg-12"></div>                          

 
                           <div class="col-lg-6">   
                                           <asp:DropDownList runat="server" ID="ddlhoraajuste"  class="form-control" >
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
                                                    <asp:DropDownList runat="server" ID="ddlminutoajuste"  class="form-control" >
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
             

                              <div class="col-lg-12">
                                             <asp:Label ID="Label9" runat="server" Font-Size="Larger">Hora Final</asp:Label>    
                                          </div>
                                   <br />          
                                                  <div class="col-lg-12"></div>                          
                               <br />   


 <div class="col-lg-6">   
                                           <asp:DropDownList runat="server" ID="ddlhorafin"  class="form-control" >
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
                                                    <asp:DropDownList runat="server" ID="ddlminutofin"  class="form-control" >
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
                              <div class="col-lg-12">  </div>                       
                            <br />
                           <br />
                                            
                        <!-- Agrupación de botón-->
                                                  <div class="col-md-12">
                            <asp:Button ID="btncalcular"  class="button" runat="server" Text="Calcular" OnClick="btncalcular_Click"  />
                        </div>

                       <!-- Labeles invisibles, contienen resultados de los calculos-->
                               
                          
                              </div>                                                         
                            <div class="col-lg-6">
                                  <asp:Label ID="lbltestimado" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lblvelocidad" runat="server" Visible="False"></asp:Label>  
                                <asp:Label ID="lblInicio" runat="server" Visible="False"></asp:Label> 
                                <asp:Label ID="lblCambio" runat="server" Visible="False"></asp:Label> 
                                  <asp:Label ID="lblArreglo" runat="server" Visible="False"></asp:Label>  
                                <asp:Label ID="lblFin" runat="server" Visible="False"></asp:Label>
                                  <asp:Label ID="lblfecha" runat="server" Visible="False"></asp:Label>
                                </div>
                                                                
                            <!-- Contenedor del Gridview-->
        
                </div>
              </div>
                   </div>
            <div class="col-lg-7">
               <div style="overflow:scroll;height:500px;width:840px;">
                              <div style="width:850px;height:510px"> 

                     
                                  <asp:GridView ID="dgvdatos" runat="server" AutoGenerateColumns="False"   CssClass="table table-striped table-hover table-condensed small-top-margin" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IDTiempoReal" DataSourceID="SqlDataSource1">
                                      <Columns>

                                          <asp:BoundField DataField="IDTiempoReal" HeaderText="ID" SortExpression="IDTiempoReal" />
                                          <asp:BoundField DataField="TRot" HeaderText="Orden" SortExpression="TRot" ItemStyle-CssClass="myStyleTree"/>
                                          <asp:BoundField DataField="TRPrensa" HeaderText="Prensa" SortExpression="TRPrensa" />
                                          <asp:BoundField DataField="TRNombreOpe" HeaderText="Prensista" SortExpression="TRNombreOpe" />
                                          <asp:BoundField DataField="TRTurno" HeaderText="Turno" SortExpression="TRTurno" />
                                          <asp:BoundField DataField="TRNomina" HeaderText="Nómina" SortExpression="TRNomina" />
                                          <asp:BoundField DataField="TRMetros" HeaderText="Metros" SortExpression="TRMetros" />                                          
                                          <asp:BoundField DataField="TRInicio" HeaderText="Inicio" SortExpression="TRInicio" ItemStyle-CssClass="myStyle" />
                                          <asp:BoundField DataField="TRCambio" HeaderText="Cambio" SortExpression="TRCambio" ItemStyle-CssClass="myStyletwo"/>
                                          <asp:BoundField DataField="TRTiempoEtArreglo" HeaderText="Arreglo" SortExpression="TRTiempoEtArreglo"  ItemStyle-CssClass="myStyleFor"/>            
                                          <asp:BoundField DataField="TRFin" HeaderText="Fin" SortExpression="TRFin" ItemStyle-CssClass="myStyle"/>
                                          <asp:BoundField DataField="TRTimReal" HeaderText="T. Real" SortExpression="TRTimReal"/>
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
                               

                     
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CCLPRODUCCIONConnectionString %>" SelectCommand="SELECT * FROM [TiempoReal]"></asp:SqlDataSource>
                               

                     
                         </div>                  
                 </div>
                
                
                <div class="col-lg-12">          
             <div id="Consultar-form" class="form-container" >                  
                                          <div class="form-group">
                                                                <div class="col-lg-3">      
                           <asp:Button ID="btneliminar" runat="server" class="button"  Text="Eliminar" OnClick="btneliminar_Click"/> 
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

                                   <!-- Formulario para el proceso de eliminar un dato-->
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
