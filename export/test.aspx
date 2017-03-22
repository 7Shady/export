<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="export.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <section class="page-section legal_service">
<div class="registration"> 
<div class="container">
<div class="row">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="sure_legal">
<ul class="nav nav-tabs buyer_nav">
<li><a data-toggle="tab" href="#legal_service" class="expert_legal">Buyer Financial Reports</a></li>

</ul>

<div id="legal_service" class="tab-pane talk_legal active">
<div class="bg-yellow">
<div class="col-sm-12 bg-primary consultant_id ">
<div class="row">
<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
    <div class="row opportunities">

<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 client_legal client_buyer">
<p><b>Client ID :</b></p>
</div>
<div  class="col-lg-2 col-md-2 col-sm-3 col-xs-3 client_legal">
<p>CL/001</p>
</div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 full_name">
<p>Client Name :</p></div>
<div class="col-lg-4 col-md-4 col-sm-3 col-xs-3 client_legal">
<p>Pankaj Rana</p>
</div>
</div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">

<div class="arrow">
<a href="index.html" class="btn btn-primary share" title="Back">
<span class="glyphicon glyphicon-arrow-left"></span>
</a>
</div>
</div>
    </div>

</div>
</div>



<div class="inner_padding business">
<div class="buyer_finance">
        <p>Available for both domestic and overseas buyers</p>
       
                        </div>
<div class="row">

    <div class="col-sm-12 overseas">
    <hr>
<div id="legal_service_request" class="tab-pane talk_legal active">
    

<form name="myform" id="myform" method="post" action="">
    
<div class="row jurisdiction">
   
<div class="col-md-6">
    
     <div class="form-group">
<label>Name of the Buyer</label>

<input type="text" name="Name" class="form-control register-input" value="">
         <div id='myform_Name_errorloc' class="error_strings"></div>
    </div>
</div>
    <div class="col-md-6">
     <div class="form-group">
<label>Country </label>

<select class="form-control register-input" name="Country" style="width:100%;">

<option value="">India</option>


</select>

    </div>
</div>

</div>
<div class="row">
     
  

<div class="col-md-6">
     <div class="form-group">
<label>State</label>
<select class="form-control register-input" name="State" style="width:100%;">
<option value="select_State">Select State</option>
<option value="">Andaman & Nicobar Islands</option>
<option value="">Andhra Pradesh</option>
<option value="">Arunachal Pradesh</option>
<option value="">Assam</option>
<option value="">Bihar</option>
<option value="">Chandigarh</option>
<option value="">Chattisgarh</option>

</select>
         <div id='myform_State_errorloc' class="error_strings"></div>
    </div>

</div>
    <div class="col-md-6">
     <div class="form-group">
<label>City</label>
<input type="text" name="City" class="form-control register-input" value="">
         <div id='myform_City_errorloc' class="error_strings"></div>
    </div>

</div>
</div>
  <div class="row">
           
    <div class="col-md-6">
     <div class="form-group">
<label>Email ID </label>

<input type="email" name="Email" class="form-control register-input" value="">
         <div id='myform_Email_errorloc' class="error_strings"></div>
    </div>
</div>
    <div class="col-md-6">
     <div class="form-group">
<label>Contact</label>

<input type="number" name="Contact" pattern='[0-9]{10}' size="10" maxlength="10" class="form-control register-input" value="">
         <div id='myform_Contact_errorloc' class="error_strings"></div>
    </div>
</div>


</div>
    
    <div class="row">
             
    <div class="col-md-6">
     <div class="form-group">
<label>Address </label>

<input type="text" name="Address" class="form-control register-input" value="">
         <div id='myform_Address_errorloc' class="error_strings"></div>
    </div>
</div>
    <div class="col-md-6">
     <div class="form-group">
<label>Product Description </label>

<textarea rows="2" cols="20" name="Description" class="form-control register-input" style="height:28px;"></textarea>
         <div id='myform_Description_errorloc' class="error_strings"></div>
    </div>
</div>


</div>
    <div class="row">
        
        <div class="col-md-6">
     <div class="form-group">
<label>Amount of Order</label>
<input type="text" name="Amount" class="form-control register-input" value="">
         <div id='myform_Amount_errorloc' class="error_strings"></div>
    </div>

</div>
    <div class="col-md-6">
     <div class="form-group">
<label>Attach Relevant Document</label>

<div class="row">
        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7 pan_input">  
            <i class="fa fa-paperclip" aria-hidden="true"></i>
    <input id="uploadFilelegal_second" class="form-control file_input" placeholder="Choose File" disabled="disabled" />
        </div>
    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
<div class="fileUpload btn btn-primary">
    <span>Choose File</span>
    <input name="Attached" id="uploadpanlegal_second" type="file" class="upload" />
</div>
</div>
    
        </div> 
<span class="upload_file">(Upload .xls/.pdf/.doc/.docx) file only</span>
         <div id='myform_Attached_errorloc' class="error_strings"></div>
    </div>

</div>


</div>
    
    
<div class="row">
 <div class="form-group">
<div class="col-md-6 back_buttom">
<input type="submit"class="btn btn-primary"  value="Submit" />

<a href="index.html" class="btn btn-info">Back</a>
</div>
    </div>
</div>
  </form>  
    
    </div>

    </div>
    
    
    
    
    
    </div>
    
    
</div>


</div>
</div>
</div>
</div>
</div>
</div>
</section>


</asp:Content>

