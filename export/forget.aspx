<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="export.forget" %>
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
 
<div class="col-sm-5 service_login">
<!-- <h2>Corporate Essential Services</h2> -->

    <div class="service_form">
        <ul class="register_user">
            <li><a href="#">Forgot Password</a></li>
            
        </ul>
<div class="existing_line"></div>
<!-- <form name="myform" id="myform" method="post" action=""> -->

  <div class="form-group">
    <label>Enter Your E-mail</label>
     
      <asp:TextBox ID="TextBoxemail" name="E-mail" class="form-control existing-form" placeholder="" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBoxemail" ErrorMessage="This field can not blank">*</asp:RequiredFieldValidator>
	<div id='myform_Email_errorloc' class="error_strings"></div>
  </div>

  <asp:Label ID="Label1" runat="server" style="color: #FF0000; font-weight: 700" 
            Text="*"></asp:Label>
        <asp:Button ID="submit" runat="server" Text="Submit" value="Submit" class="btn btn-primary submit_read" OnClick="submit_Click"/>
  
    


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

