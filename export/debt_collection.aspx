<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="debt_collection.aspx.cs" Inherits="export.debt_collection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
<section class="page-section legal_service">
<div class="registration"> 
<div class="container">
<div class="row">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="sure_legal">
<ul class="nav nav-tabs bet_nav">
<li><a data-toggle="tab" href="#legal_service" class="finance_account">Debt Collection</a></li>

</ul>

<div id="legal_service" class="tab-pane talk_legal active">
<div class="bg-yellow">
<div class="col-sm-12 bg-primary consultant_id">
<div class="row">
<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
    <div class="row opportunities">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 client_legal client_buyer">
<p><b>Client ID:</b></p>
</div>
<div  class="col-lg-2 col-md-2 col-sm-3 col-xs-3 client_legal">
<p><asp:Label ID="LabelClientId" runat="server" Text="Label" Font-Bold="True"></asp:Label></p>
</div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 full_name">
<p>Client Name:</p></div>
<div class="col-lg-4 col-md-4 col-sm-3 col-xs-3 client_legal">
<p><asp:Label ID="LabelName" runat="server" Text="Label" Font-Bold="True"></asp:Label></p></p>
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
        <p>We are in touch with debt collectors and bad debt buyers from across the world</p>
       
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
<asp:TextBox ID="TextBoxBname" class="form-control register-input" required="required" value="" name="Name" runat="server"></asp:TextBox>

<div id='myform_Name_errorloc' class="error_strings"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Country </label>
<asp:DropDownList ID="DropDownCountry" name="Country" runat="server" class="form-control register-input"
     style="width:100%;">
   <asp:ListItem>-- Select Country --</asp:ListItem>
   
   
   
   
   
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
 <asp:TextBox ID="TextBoxCity" name="City" required="required" class="form-control register-input" value="" runat="server"></asp:TextBox>
<div id='myform_City_errorloc' class="error_strings"></div>
</div>

</div>
</div>

<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Address </label>
 <asp:TextBox ID="TextBoxAddress" class="form-control register-input" name="Address" required="required" runat="server"></asp:TextBox>   
<div id='myform_Address_errorloc' class="error_strings"></div>
</div>
</div>


<div class="col-md-6">
<div class="form-group">
<label>Description </label>
 <asp:TextBox ID="TextBoxDec" rows="2" cols="20" name="Description" class="form-control register-input" required="required" value="" runat="server" style="height:28px;"></asp:TextBox>
<div id='myform_Description_errorloc' class="error_strings"></div>
</div>
</div>


</div>
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Value of the Consignment</label>
    <asp:TextBox ID="TextBoxConsig" name="Consignment" class="form-control register-input" required="required" value="" runat="server"></asp:TextBox>
<div id='myform_Consignment_errorloc' class="error_strings"></div>
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Terms of Delivery</label>
<asp:TextBox ID="TextBoxDeli" class="form-control register-input" required="required" name="Delivery" value="" runat="server"></asp:TextBox>
<div id='myform_Delivery_errorloc' class="error_strings"></div>
</div>

</div>


</div>
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Terms of Payment</label>
<asp:TextBox ID="TextBoxPay" name="Payment" class="form-control register-input" required="required" value="" runat="server"></asp:TextBox>
<div id='myform_Payment_errorloc' class="error_strings"></div>
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Delivery Done On</label>
<asp:TextBox ID="TextBoxDone" name="Delivery_Done" class="form-control register-input" required="required" value="" runat="server"></asp:TextBox>

<div id='myform_Delivery_Done_errorloc' class="error_strings"></div>
</div>

</div>


</div> 
<div class="row">
<div class="col-md-6">
<div class="form-group">
<label>Payment Due Date</label>
<div class="input-group">
      <div class="input-group-addon"><i class="fa fa-calendar" style="z-index: 1;"></i> </div>
    <asp:TextBox ID="txtstartdate" name="txtstartdate" class="form-control register-input" required="required" value="" runat="server"></asp:TextBox>
    
    <!--<input type="text" id="txtstartdate" name="Payment_Due" class="form-control register-input" value="" readonly="">-->
         
    </div>

<div id='myform_Payment_Due_errorloc' class="error_strings"></div>
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Remarks</label>
<asp:TextBox ID="TextBoxRemarks" name="Remarks" class="form-control register-input" value="" runat="server"></asp:TextBox>
     
<div id='myform_Remarks_errorloc' class="error_strings"></div>
</div>

</div>


</div> 
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Attach Document</label>

<div class="row">
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7 pan_input">  
<i class="fa fa-paperclip" aria-hidden="true"></i>
<input id="uploadFilelegal_second" class="form-control file_input" placeholder="Choose File" disabled="disabled" />
</div>
<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
<div class="fileUpload btn btn-primary">
<span>Choose File</span>
    <asp:FileUpload ID="uploadpanlegal_second" name="Attached" type="file" class="upload" runat="server" />
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
<asp:Button ID="debtsubmit" runat="server" Text="Submit" value="Submit" class="btn btn-primary" OnClick="debtsubmit_Click" />
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

