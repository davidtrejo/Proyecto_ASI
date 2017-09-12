<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmLoginAdmin.aspx.vb" Inherits="coope.frmLoginAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="https://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Stylesheet -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" media="all">

<!-- jquery-ui Stylesheets -->
<link rel="stylesheet" href="assets/jui/css/jquery-ui.css" media="screen">
<link rel="stylesheet" href="assets/jui/jquery-ui.custom.css" media="screen">

<!-- Main Layout Stylesheet -->
<link rel="stylesheet" href="assets/css/fonts/icomoon/style.css" media="screen">
<link rel="stylesheet" href="assets/css/main-style.css" media="screen">
<link rel="stylesheet" href="assets/css/login.css" media="screen">


<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/general.css">

<script type="text/javascript">
    var lhnAccountN = "25295-1";
    var lhnButtonN = 7141;
    var lhnChatPosition = 'default';
    var lhnInviteEnabled = 1;
    var lhnWindowN = 0;
    var lhnDepartmentN = 0;
</script>

<title>Cooperativa</title>
    <link rel = "shortcut icon" type = "image/x-icon"  href="acsa.ico" />
</head>
<body>

    <div style="border-top: 3px solid #1d407b;height:100%; " >
	    <div class="wrap">
		<!-- Inicia logo/banners -->
			<div class="logo" style="float:left;width:165px;height:61px;">
				<a href="https://acsa.com.sv"><img  src="images/logo.jpg"></a>
			</div>
			
			<div class="banner1" style="float:left;width:454px;height:61px;">
				<img src="images/banner_temporada01.jpg">
			</div>
			<div class="banner2" style="float:left;width:202px;height:61px;">
				<%--<img src="images/banner_chatenlinea.jpg">--%>
                <script src="//www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.js" type="text/javascript" id="lhnscript"></script>
			</div>
			<div class="banner3" style="float:left;width:174px;height:61px;">
				<a href="https://www.acsa.com.sv/formllamada.html"><img src="https://www.acsa.com.sv/images/comente.jpg"></a>
			</div>
			<div class ="spases3px" style="clear:both;"></div>
			
		<!--termina logo/banners -->
		</div>
		<div class ="notsee" style=" margin: 3px 0 0;background-color:#e3e3e3; height:35px;"> 
			<div class="wrap" style="padding:10px 0px 10px 0px;background-color:#e3e3e3;width: 986px;">
			<!-- inicia submenu -->
				 
				
				<div style="clear:both;"> </div>
			<!-- termina submenu -->
			</div>
		</div>
        </div>
		<div class="degrade" style="width:100%;height: 38px; border: 1px solid #808284; background: -moz-linear-gradient(center top , #FFFFFF, #CACCCE); "></div>


        <br />
        <br />
        <br />

    <div class="wrap">
     <span class="titular1 block linea1bottom">ACSA POLO</span>
   <br />
       
			 
			       <div class="imagen_ocultar left" style=" padding-top: 1px;margin:0 auto;">
			            <img src="images/login-icon.png" height ="200" width ="200">
			        </div>


    <div class ="form_mobile" style="padding-bottom: 15px;">
	<form id="Form1" name="Form1" method="post" runat ="server">
    <div style="width:307px; padding-left:10px;margin:0 auto;" class="left leftcentermobile460">
			
                <div id="login-circle">
				<div  class="login-inner-form">
					
						<div class="control-group-merged">
							<div class="control-group">
                                <asp:TextBox ID="txtUsuario" placeholder="Usuario"  class="big"  
                                    runat="server" ></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtUsuario" CssClass="field-validation-error" 
                                    ErrorMessage="El nombre de usuario es requrido." ForeColor="#FF3300" />
							</div>
							<div class="control-group">
                                <asp:TextBox ID="txtPassword"  placeholder="Contrase&ntilde;a"   class="big" 
                                    runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtPassword" CssClass="field-validation-error" 
                                    ErrorMessage="La contrase&ntilde;a es requerida." ForeColor="#FF3300" />
								
							</div>  
                            <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls">
                                    <label class="checkbox">
								        <input type="checkbox" id="checkrecordar" runat="server" class="uniform-checker"> Recordar usuario</input>
							        </label>
                                    <asp:Label ID="lblError" Visible ="false"  runat="server" ForeColor ="Red"  Text="Usuario o Contraseña incorrecta"></asp:Label>
                                </div>                                
                            </div>  
                            
						</div>
						
						<div >
                            
                           
					    	
                        </div>
                       
                        <br />
					
				</div>
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass ="btn " />
                
               <%-- <asp:Button ID="cmdLogin" runat="server" class="btn btn-primary" 
                                Text="Ingresar" ></asp:Button>--%>
				
			</div>

        
                  
                   
      
      

        <table width="50%" align="center"  >
                        <!--tr>
                            <td width="30%">
                                <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/frmCambioCredencial.aspx">Olvido su contrase&ntilde;a</asp:HyperLink>
                            </td>
                        </tr-->

        </table>
</div>
    </form>	
    </div>	
 </div>  
   <!-- Core Scripts -->
	<script src="assets/js/libs/jquery-1.8.3.min.js"></script>
	<script src="assets/js/libs/jquery.placeholder.min.js"></script>
    
    <!-- Login Script -->
    <script src="assets/js/login.js"></script>

    <!-- Validation -->
    <script src="plugins/validate/jquery.validate.min.js"></script>
    
    <!-- Uniform Script -->
    <script src="plugins/uniform/jquery.uniform.min.js"></script>

</body>


</html>