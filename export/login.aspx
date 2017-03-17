<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="export.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="sure_loginm">

<!---service-->
<section id="service">
<div class="container">
    <div class="row">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="sure_service">
            <div class="col-sm-1"></div>
   <div class="col-sm-5 service_basic">
        <div class="about_service">
        <h2>Exporters Receivable Management</h2>
        <ol>
        <span><span class="sure_circle"></span><li> <a href="#">Buyer Financial Reports</a></li></span>
        <span><span class="sure_circle"></span><li> <a href="#">Credit Insurance Cover</a></li></span>
        <span><span class="sure_circle"></span><li> <a href="#">Debt Collection</a> </li></span>
        <span><span class="sure_circle"></span><li> <a href="#">Audit & structuring of a customized process </a> </li></span>
        
        </ol>
            </div>
        </div>
		 <div class=""></div>
<div class="col-sm-5 service_login">
<!-- <h2>Corporate Essential Services</h2> -->

    <div class="service_form">
        <ul class="register_user">
            <li><a href="#">Existing User</a></li>
            <li class="user_new"><a href="registration.aspx">New User</a></li>
        </ul>
<div class="existing_line"></div>
<!-- <form name="myform" id="myform" method="post" action=""> -->

  <div class="form-group">
    <label>E-mail</label>
     
      <asp:TextBox ID="TextBoxEmail" name="E-mail" class="form-control existing-form" placeholder="" runat="server"></asp:TextBox>
	<div id='myform_Email_errorloc' class="error_strings"></div>
  </div>
  <div class="form-group">
   <label>Password</label>
      <asp:TextBox ID="TextBoxPass" class="form-control existing-form" value="" runat="server" TextMode="Password"></asp:TextBox>

      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
	<div id='myform_Password_errorloc' class="error_strings"></div>
  </div>
    <ul class="remember">
        <li>
    <div class="checkbox">
    <label>
        <asp:CheckBox ID="CheckBoxPersist" Text=" Remember me" runat="server" />
      
    </label>
  </div>
        </li>
        <li><a href="#">Forgot Password</a></li>
        </ul>
        <asp:Button ID="submit" runat="server" Text="Login" value="Login" class="btn btn-primary submit_read" OnClick="submit_Click" />
  
    <div style="font-size:12px;">Payment Method</div>
                                    <div>
                                        <div>
                                            <a href="https://www.paypal.com/in/webapps/mpp/paypal-popup" title="How PayPal Works" onclick="javascript:window.open('https://www.paypal.com/in/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;">
                                                <img src="https://www.paypalobjects.com/webstatic/en_IN/mktg/logos/AM_SbyPP_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark" style="width:100%;">
                                            </a>
                                        </div>
   
</form>

</div>
    
    
</div>
        
 </div>
    </div>
    </div>
 
</div>
</section>
<!---service End-->

    
    
    
    
 </div>  


</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <footer id="footer">
<div class="container">
<div class="row">
<div class="col-sm-12 copyright">
<p>Copyright 2016 Powered by : <a href="http://glocalthinkers.com/" target="_blank">Glocal Thinkers</a></p>
</div>
</div>
</div>
</footer>
 
</asp:Content>


