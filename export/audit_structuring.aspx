<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="audit_structuring.aspx.cs" Inherits="export.audit_structuring" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
 <section class="page-section legal_service">
<div class="registration"> 
<div class="container">
<div class="row">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="sure_legal">
<ul class="nav nav-tabs insurance">
<li><a data-toggle="tab" href="#legal_service" class="insurance_account">Audit & structuring of a customized process</a></li>

</ul>

<div id="legal_service" class="tab-pane talk_legal active">
<div class="bg-yellow">
<div class="col-sm-12 bg-primary consultant_id">
<div class="row">
<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
    <div class="row opportunities">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 client_legal client_buyer">
<p><b>Client ID :</b></p>
</div>
<div  class="col-lg-2 col-md-2 col-sm-3 col-xs-3 client_legal">
<p><asp:Label ID="LabelClientId" runat="server" Text="Label" Font-Bold="True"></asp:Label></p>
</div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 full_name">
<p>Client Name :</p></div>
<div class="col-lg-4 col-md-4 col-sm-3 col-xs-3 client_legal">
<p><asp:Label ID="LabelName" runat="server" Text="Label" Font-Bold="True"></asp:Label></p>
</div>
</div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
<div class="arrow">
<a href="Default.aspx" class="btn btn-primary share" title="Back">
<span class="glyphicon glyphicon-arrow-left"></span>
</a>
</div>
</div>
</div>
</div>
</div>



<div class="inner_padding business">
<div class="buyer_finance">
        <p>We will audit your existing receivable management process and structure a customized and best suited receivables process.</p>
       
</div>
<div class="row">

    <div class="col-sm-12 overseas">
     <hr>
<div id="legal_service_request" class="tab-pane talk_legal active">
<form name="myform" id="myform" method="post" action="">
    
<div class="row jurisdiction">
   
<div class="col-md-6">
     <div class="form-group">
<label>Person to be contacted for Audit</label>
 <asp:TextBox ID="TextBoxAname" class="form-control register-input" required="required" value="" runat="server"></asp:TextBox>

         <div id='myform_Person_errorloc' class="error_strings"></div>
    </div>
</div>
    <div class="col-md-6">
<div class="form-group">
<label>Country </label>
    <asp:DropDownList ID="DropDownCountry" runat="server" class="form-control register-input"
     style="width:100%;">
   <asp:ListItem>India</asp:ListItem>
   
   
   
   
   
   </asp:DropDownList>
</div>
</div>
    
</div>
<div class="row">


<div class="col-md-6">
<div class="form-group">
<label>State</label>
    <asp:DropDownList ID="DropDownState" name="State" runat="server" class="form-control register-input"
     style="width:100%;">
   <asp:ListItem>Select State</asp:ListItem>
   <asp:ListItem>Andaman & Nicobar Islands</asp:ListItem>
   <asp:ListItem>Andhra Pradesh</asp:ListItem>
   <asp:ListItem>Arunachal Pradesh</asp:ListItem>
   <asp:ListItem>Assam</asp:ListItem>
   <asp:ListItem>Bihar</asp:ListItem>
   <asp:ListItem>Chandigarh</asp:ListItem>
   <asp:ListItem>Chattisgarh</asp:ListItem>
   </asp:DropDownList>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownState" Display="Dynamic" ErrorMessage="Please Enter Your State Name" 
     ForeColor="Red" Operator="NotEqual" ValueToCompare="Select State" Type="String" ToolTip="Select from list"></asp:CompareValidator>

<div id='myform_State_errorloc' class="error_strings"></div>
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>City</label>
    <asp:TextBox ID="TextBoxCity" class="form-control register-input" required="required" value="" runat="server"></asp:TextBox>

<div id='myform_City_errorloc' class="error_strings"></div>
</div>

</div>
        

</div>
<div class="row">
    
    <div class="col-md-6">
     <div class="form-group">
<label>Email ID of the person</label>
<asp:TextBox ID="TextBoxEmail" type="email" class="form-control register-input" required="required" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail"
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" ToolTip="Enter Valid Email"
                                                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         <div id='myform_Email_errorloc' class="error_strings"></div>
    </div>
</div>
<div class="col-md-6">
     <div class="form-group">
<label>Telephone Number of the person </label>
<asp:TextBox ID="TextBoxMob"  pattern='[0-9]{10}' size="10" maxlength="10"  class="form-control register-input" runat="server" ></asp:TextBox>
            <div id='myform_Contact_errorloc' class="error_strings"></div>
         
    </div>
</div>
        

</div>
<div class="row">
       
        <div class="col-md-6">
     <div class="form-group">
<label>Address <span class="collecting">(for collecting information)</span></label>
 <asp:TextBox ID="TextBoxAddress" class="form-control register-input" required="required" runat="server"></asp:TextBox>   
         <div id='myform_Address_errorloc' class="error_strings"></div>
    </div>

</div>
        
    <div class="col-md-6">
     <div class="form-group">
<label>Attach Financials</label>

<div class="row">
        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7 pan_input">  
            <i class="fa fa-paperclip" aria-hidden="true"></i>
       
    <input id="uploadFilelegal_second" class="form-control file_input" placeholder="Choose File" disabled="disabled" />
        </div>
    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
<div class="fileUpload btn btn-primary">
    <span>Choose File</span>
    <asp:FileUpload ID="uploadpanlegal_second" name="Attached" type="file" class="upload" runat="server" />
    <%--accept="application/ms-word"--%>
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
<asp:Button ID="auditsubmit" runat="server" Text="Submit" value="Submit" class="btn btn-primary" OnClick="auditsubmit_Click" />

<a href="Default.aspx" class="btn btn-info">Back</a>
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

  
    
