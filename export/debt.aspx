<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="debt.aspx.cs" Inherits="export.debt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.js"></script>

    <script>
        $(document).ready(function () {
            $("#ctl00_ContentPlaceHolder2_txtstartdate").datepicker({
                minDate: 0,

            });

            $("#txtenddate").datepicker({});

        });
    </script>

    <script>
        $(document).ready(function () {
            $("#ctl00_ContentPlaceHolder2_txtstartdatee").datepicker({
                minDate: 0,

            });

            $("#txtenddate").datepicker({});

        });
    </script>

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
<p><asp:Label ID="LabelName" runat="server" Text="Label" Font-Bold="True"></asp:Label></p>
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
        <p>We are in touch with debt collectors and bad debt buyers from across the world</p>
       
</div>
<div class="row">

    <div class="col-sm-12 overseas">
      <asp:Panel ID="panelaudit" runat="server">
                                                <hr>	     
<div class="panel-group" id="accordion4">
  <div class="panel panel-default assignment">
    <div class="panel-heading insurance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion4">Confirmation</a>
      </h4>
    </div>
    <div id="collapse11" class="panel-collapse">
      <div class="panel-body">

         
          <div id="legal_service_request" class="tab-pane talk_legal active">


<div class="row jurisdiction">

<div class="col-md-6">

<div class="form-group">
<label>Company Name</label>

<asp:TextBox ID="TextBoxCname" class="form-control register-input" required="required" value="" name="Name" runat="server"></asp:TextBox>

</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Company Name (Others)</label>

<asp:TextBox ID="TextBoxCnameO" class="form-control register-input" required="required" value="" name="Name" runat="server"></asp:TextBox>
</div>
</div>

</div>
<div class="row">


<div class="col-md-6">
<div class="form-group">
<label>Country </label>
<asp:DropDownList ID="DropDownCountry" name="Country" runat="server" class="form-control register-input"
                                                                    Style="width: 100%;">
                                                                    <asp:ListItem>-- Select Country --</asp:ListItem>
                                                                </asp:DropDownList>

</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>State</label>
<asp:DropDownList ID="DropDownState" name="State" runat="server" class="form-control register-input"
                                                                    Style="width: 100%;">
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
                                                                
</div>
</div>
</div>

<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>City</label>
<asp:TextBox ID="TextBoxCity" name="City" required="required" class="form-control register-input" value="" runat="server"></asp:TextBox>
                                                                
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Address </label>
<asp:TextBox ID="TextBoxAddress" class="form-control register-input" name="Address" required="required" runat="server"></asp:TextBox>
                                                                
    </div>
</div>
</div>

<div class="row">
<div class="col-md-6">
<div class="form-group">
<label>Contact Person</label>

<asp:TextBox ID="TextBoxCperson" class="form-control register-input" required="required" value="" name="Name" runat="server"></asp:TextBox>
</div>
</div>

<div class="col-md-6">
<div class="form-group">
<label>Position</label>
<asp:TextBox ID="TextBoxPosition" class="form-control register-input" required="required" value="" name="Name" runat="server"></asp:TextBox>
</div>
</div>
</div>
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Tel No.</label>

    <asp:TextBox ID="TextBoxTel" ValidationGroup="EditProfile" class="form-control register-input" placeholder="" runat="server" MaxLength="13" ></asp:TextBox>
        
    </div>
</div>


<div class="col-md-6">
<div class="form-group">
<label>Fax No.</label>

<asp:TextBox ID="TextBoxFax" ValidationGroup="EditProfile" class="form-control register-input" placeholder="" runat="server" MaxLength="13" ></asp:TextBox>
         
    </div>
</div>


</div>
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Email ID </label>
<asp:TextBox ID="TextBoxEmail"  class="form-control register-input" placeholder="Email ID" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail"  Display="Dynamic" ErrorMessage="*" ForeColor="Red" ToolTip="Enter Valid Email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Website</label>
 <asp:TextBox ID="TextBoxWeb" class="form-control register-input" placeholder="Website" runat="server"></asp:TextBox>
                                                
</div>

</div>


</div>

        </div>

 
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading insurance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion4">About the Debtor</a>
      </h4>
    </div>
    <div id="collapse11" class="panel-collapse">
      <div class="panel-body">
          <div id="legal_service_request" class="tab-pane talk_legal active">


<div class="row jurisdiction">

<div class="col-md-6">

<div class="form-group">
<label>Debtor’s Company Name</label>

 <asp:TextBox ID="TextBoxDname" class="form-control register-input" placeholder="Name"  runat="server"></asp:TextBox>
                                                <div id='myform_Name_errorloc' class="error_strings"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Registration / VAT No.</label>
 <asp:TextBox ID="TextBoxReg" class="form-control register-input" placeholder="Registration / VAT No."  runat="server"></asp:TextBox>
                                                <div id='myform_Registration_errorloc' class="error_strings"></div>
</div>
</div>

</div>
<div class="row">


<div class="col-md-6">
<div class="form-group">
<label>Country </label>
<asp:DropDownList ID="DropDownCountryD" name="Country" runat="server" class="form-control register-input" Style="width: 100%;">
<asp:ListItem>-- Select Country --</asp:ListItem>
</asp:DropDownList>

</div>

</div>
<div class="col-md-6">
<div class="form-group">
    <label>State</label>
<asp:DropDownList ID="DropDownStateD" name="State" runat="server" class="form-control register-input" Style="width: 100%;">
  <asp:ListItem>Select State</asp:ListItem>
  <asp:ListItem>Andaman & Nicobar Islands</asp:ListItem>
  <asp:ListItem>Andhra Pradesh</asp:ListItem>
  <asp:ListItem>Arunachal Pradesh</asp:ListItem>
  <asp:ListItem>Assam</asp:ListItem>
  <asp:ListItem>Bihar</asp:ListItem>
  <asp:ListItem>Chandigarh</asp:ListItem>
  <asp:ListItem>Chattisgarh</asp:ListItem>
  </asp:DropDownList>
  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownStateD" Display="Dynamic" ErrorMessage="Please Enter Your State Name"
                                                                    ForeColor="Red" Operator="NotEqual" ValueToCompare="Select State" Type="String" ToolTip="Select from list"></asp:CompareValidator>
                                                                
<div id='myform_State_errorloc' class="error_strings"></div>
</div>

</div>
</div>

<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>City</label>
 <asp:TextBox ID="TextBoxCityD" name="City" required="required" class="form-control register-input" value="" runat="server"></asp:TextBox>
                                                                
<div id='myform_City_errorloc' class="error_strings"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Address </label>

<asp:TextBox ID="TextBoxAddressD" class="form-control register-input" name="Address" required="required" runat="server"></asp:TextBox>
 <div id='myform_Address_errorloc' class="error_strings"></div>
    </div>
</div>


</div>
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Contact Person</label>
<asp:TextBox ID="TextBoxpersonD" Rows="2" cols="20" name="Description" class="form-control register-input" required="required" value="" runat="server" Style="height: 28px;"></asp:TextBox>
                                                                
<div id='myform_Contact_errorloc' class="error_strings"></div>
</div>
</div>


<div class="col-md-6">
<div class="form-group">
<label>Position</label>
<asp:TextBox ID="TextBoxPositionD" class="form-control register-input" required="required" value="" name="Position" runat="server"></asp:TextBox>

<div id='myform_Address_errorloc' class="error_strings"></div>
</div>
</div>


</div>
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Tel No.</label>
<asp:TextBox ID="TextBoxTelD" ValidationGroup="EditProfile" class="form-control register-input" placeholder="" runat="server" MaxLength="13" ></asp:TextBox>
         <div id='myform_Contact_errorloc' class="error_strings"></div>
    </div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Fax No.</label>
<asp:TextBox ID="TextBoxFaxD" ValidationGroup="EditProfile" class="form-control register-input" placeholder="" runat="server" MaxLength="13" ></asp:TextBox>
         <div id='myform_Contact_errorloc' class="error_strings"></div>
    </div>

</div>


</div>
<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Email ID </label>
<asp:TextBox ID="TextBoxEmailD"  class="form-control register-input" placeholder="Email ID" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxEmail"  Display="Dynamic" ErrorMessage="*" ForeColor="Red" ToolTip="Enter Valid Email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<div id='myform_Email_errorloc' class="error_strings"></div>
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Website</label>
<asp:TextBox ID="TextBoxWebD" class="form-control register-input" placeholder="Website" runat="server"></asp:TextBox>
  
<div id='myform_Email_errorloc' class="error_strings"></div>
</div>

</div>


</div> 
<div class="row">
<div class="col-md-6">
<div class="form-group">
<label>Other Contact Information</label>
    <asp:TextBox ID="TextBoxContactD" class="form-control register-input" placeholder="Website" runat="server"></asp:TextBox>
 
<div id='myform_Contact_errorloc' class="error_strings"></div>

</div>

</div>
<div class="col-md-6">


</div>


</div> 
  </div>

 
        </div>
    </div>
  </div>
  
  <div class="panel panel-default assignment">
    <div class="panel-heading insurance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion4">About the Debt</a>
      </h4>
    </div>
    <div id="collapse12" class="panel-collapse">
      <div class="panel-body">
        <div id="legal_service_request" class="tab-pane talk_legal active">


<div class="row jurisdiction">

<div class="col-md-6">

<div class="form-group">
<label>Currency</label>
 <asp:TextBox ID="TextBoxCurrency" class="form-control register-input" placeholder="" ValidationGroup="EditProfile" runat="server"></asp:TextBox>
                                                
<div id='myform_Name_errorloc' class="error_strings"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Total Outstanding Balance </label>
 <asp:TextBox ID="TextBoxTotal" class="form-control register-input" placeholder="" ValidationGroup="EditProfile" runat="server"></asp:TextBox>

<div id='myform_Name_errorloc' class="error_strings"></div>

</div>
</div>

</div>
<div class="row">


<div class="col-md-6">
<div class="form-group">
<label>Reason for non-payment</label>
 <asp:TextBox ID="TextBoxReason" class="form-control register-input" placeholder="" ValidationGroup="EditProfile" runat="server"></asp:TextBox>


<div id='myform_Remarks_errorloc' class="error_strings"></div>
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Any dispute by the debtor ?</label>
     <asp:DropDownList ID="DropDownany" runat="server" class="form-control register-input">
 <asp:ListItem>-- Select --</asp:ListItem>
<asp:ListItem>Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>
</asp:DropDownList><asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DropDownany" Display="Dynamic" ErrorMessage="*" ForeColor="Red" Operator="NotEqual" ValueToCompare="< Select >"
 Type="String" ToolTip="Select from list"></asp:CompareValidator>

         <div id='myform_State_errorloc' class="error_strings"></div>
   
</div>

</div>
</div>

<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Have your company appointed another collections , Agency/ lawer to handle this case. ?</label>
  <asp:DropDownList ID="DropDowncase" runat="server" class="form-control register-input">
 <asp:ListItem>-- Select --</asp:ListItem>
<asp:ListItem>Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>
</asp:DropDownList><asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="DropDowncase" Display="Dynamic" ErrorMessage="*" ForeColor="Red" Operator="NotEqual" ValueToCompare="< Select >"
 Type="String" ToolTip="Select from list"></asp:CompareValidator>

         <div id='myform_State_errorloc' class="error_strings"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Have your company heard about any adverse information / rumors 
(financial difficulties, insolvency…..) about the debtor ?</label>
  <asp:DropDownList ID="DropDownListdebtor" runat="server" class="form-control register-input">
 <asp:ListItem>-- Select --</asp:ListItem>
<asp:ListItem>Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>
</asp:DropDownList><asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="DropDownListdebtor" Display="Dynamic" ErrorMessage="*" ForeColor="Red" Operator="NotEqual" ValueToCompare="< Select >"
 Type="String" ToolTip="Select from list"></asp:CompareValidator>
         <div id='myform_State_errorloc' class="error_strings"></div>
</div>
</div>


</div>

        </div>

 
        
        </div>
    </div>
  </div>
 <div class="panel panel-default assignment">
    <div class="panel-heading insurance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion4">Confirmation</a>
      </h4>
    </div>
    <div id="collapse11" class="panel-collapse">
      <div class="panel-body">
          <div id="legal_service_request" class="tab-pane talk_legal active">


<div class="row jurisdiction">

<div class="col-md-6">

<div class="form-group">
<label>Success fee rate (on collected amount in %)</label>
<asp:TextBox ID="TextBoxrate" name="" class="form-control register-input" required="required" value="" runat="server" Style="height: 28px;"></asp:TextBox>
                                                                
<div id='myform_Name_errorloc' class="error_strings"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>File opening fees</label>
<asp:TextBox ID="TextBoxfile"  name="" class="form-control register-input" required="required" value="" runat="server" Style="height: 28px;"></asp:TextBox>

<div id='myform_Name_errorloc' class="error_strings"></div>
</div>
</div>

</div>
<div class="row">


<div class="col-md-6">
<div class="form-group">
<label>Effective Date</label>
 <div class="input-group">
     <div class="input-group-addon"><i class="fa fa-calendar" style="z-index: 1;"></i></div>
     <asp:TextBox ID="txtstartdate" class="form-control register-input" required="required" runat="server" ReadOnly="true"></asp:TextBox>
</div>

<div id='myform_Payment_Due_errorloc' class="error_strings"></div>
</div>

</div>
<div class="col-md-6">
<div class="form-group">
<label>Reason for non-payment</label>
<asp:TextBox ID="TextBoxReasonnon" class="form-control register-input" placeholder="" runat="server"></asp:TextBox>
<div id='myform_Remarks_errorloc' class="error_strings"></div>
</div>
</div>
</div>


<div class="row">



   <div class="col-sm-12">
        <div class="about_debt">
        
        <ol>
        <span><span class="sure_circle"></span><li> The Client / Creditor have read, understood and agreed to be bound by the General Terms set out overleaf.</li></span>
        <span><span class="sure_circle"></span><li> The Client / Creditor confirm the above information is true and correct.</li></span>        
        <span><span class="sure_circle"></span><li> The Client / Creditor confirm and understand that once the case id effective, are obliged to pay the fee according to the predetermined term & fee schedule above. </li></span>
        
        </ol>
            </div>
        </div>

</div>





<div class="row">

<div class="col-md-6">
<div class="form-group">
<label>Name & Position</label>
<asp:TextBox ID="TextBoxNameP" class="form-control register-input" placeholder="" runat="server"></asp:TextBox>
<div id='myform_Remarks_errorloc' class="error_strings"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Date</label>
 <div class="input-group">
     <div class="input-group-addon"><i class="fa fa-calendar" style="z-index: 1;"></i></div>
     <asp:TextBox ID="txtstartdatee" class="form-control register-input" required="required" runat="server" ReadOnly="true"></asp:TextBox>
</div>


<div id='myform_Payment_Due_errorloc' class="error_strings"></div>
</div>
</div>
</div>

   
    
        </div>

 
        </div>
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
<span class="upload_file">
<asp:RegularExpressionValidator ID="ValidFile" runat="server" Text="(Upload .xls/.xlsx/.pdf/.doc/.docx) file only"
ToolTip="(Upload .xls/.xlsx/.pdf/.doc/.docx) file only" ControlToValidate="uploadpanlegal_second" ValidationExpression="[a-zA-Z0_9].*\b(.xls|.xlsx|.pdf|.doc|.docx)\b"
ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator></span>
<div id='myform_Attached_errorloc' class="error_strings"></div>
                                                           
</div>

</div>


</div> 
<div class="row">
<div class="col-md-6">
   <div class="form-group">
   <input type="checkbox" name="terms" id="terms">  I have read  
   <a href="#" data-toggle="modal" data-target="#myModal">Contract Parties and Terms</a>   

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div style="width:80%;" class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Contract Parties and Terms</h4>
        </div>
        <div class="modal-body">
		<div>
		<h4>Scope :</h4>
<p>1.1 We will provide a debt collection service (the “service”) to you for each debt owed to you by you debtors (each a “debtor”) that you place with us for collection. The service includes among other things:</p>

<div class="about_debt">
        
        <ol>
        <span><li>a . Urging debtors to pay their debts;</span></li><li>b. Negotiating and following up of payment plans and /or of final settlements;</li>
<li>c. Initiating and following up legal action and /or insolvency procedures.</li>

<br/>
<li><b>2</b> A ”Debt” is defined as the full amount outstanding to you from your debtor: principle amount plus interest and cost (where applicable ). You may place such debts for collection by submitting it to us by letter, email or placement form. Such submission will be considered as a mandate for us to collect the debt.</li>

<li><b>3</b> All our affiliated companies and their branch offices (the “affiliates”) may perform as subcontractors the services for debts placed by you. Therefore you explicitly authorize us to include any of our affiliates into the provisions of the service at our sole discretion.</li>
</ol>
 </div>

<h4>Authorization :</h4>

<p>2.1 You hereby authorize us to :</p>

<div class="about_debt">        
        <ol>
        <li>a. Collect payments in respect of the placed debt, to endorse cheques and to issue receipts in relation thereto;</li>
		<li>b. to appoint on your behalf third parties e.g. lawyers (“Third Party”) to provide (parts of) the service;</li>
		<li>c. instruct any Third party to pass any amounts they collect to us.</li>
		</ol>
</div>

<p>2.2 We will not :</p>

<div class="about_debt">        
        <ol>
        <li>a. start any legal action;</li>
		<li>b. initiate any insolvency procedure;</li>
		<li>c. approve any final settlement; without your prior approval from you.</li>
		</ol>
</div> 

<h4>Rights and Obligations :</h4>

<p>3.1 We will provide the service with due care and diligence.</p>

<p>3.2 After placing the debt with us, you cannot waive any rights to payment from the debtor without informing us first and you should not start any other collection activity with respect to the debt. When you have placed a debt with us for collection you are required to provide us with information and documentation as soon as reasonably possible. These include :</p>

<div class="about_debt">        
        <ol>
        <li>a. Debtor details</li>
		<li>b. Copies of invoices, statement of accounts, credit notes, delivery notes and orders;</li>
		<li>c. Details of payment received</li>
		<li>d. Rights and liens encumbering the debt</li>
		<li>e. Disputes</li>
		<li>f. Amounts and rights reducing the debt;</li>
		<li>g. Power of attorney;</li>
		<li>h. Bills of exchange, cheques;</li>
		<li>i. Terms and conditions of sales;</li>
		<li>j. Correspondence, Emails.</li>
</ol>
</div> 

<p>3.3 We will keep you informed of :</p>
<div class="about_debt">        
        <ol>
<li>a. relevant contacts with debtors</li>
<li>b. payments, payment plans;</li>
<li>c. final settlements</li>
<li>d. disputes;</li>
<li>e. third party involvement;</li>
<li>f. legal actions;</li>
<li>g. enforcement of retention of title;</li>
<li>h. insolvency and / or other proceedings</li>
<li>i. case closure.</li>
</ol>
</div> 
<p>Communication between you and us may occur via letter, email, phone, fax.</p>

<p>3.4 We have the right to set off any amount collected by us or collected via a third party, under this agreement against any amount you owe to us under this agreement.</p>

<p>3.5 We may cease our service with respect to a single debt collection case when the service will not have a cost effective result or when a dispute cannot be solved by us.</p>

<p>3.6 You may withdraw a mandate to collect a debt subject to prior written notice. Before withdrawing a mandate we advice you to take into consideration potential withdrawal fees foreseen in article 9.5. We will cease to provide our services with respect to the debt for which the mandate has been withdrawn as of the moment we have received such withdrawal.</p>

<p>3.7 We endeavour to transfer all collected amounts due for transfer to you within fourteen (14) days after collection. Where we receive debtor payments by cheque the transfer will be made once the funds are cleared.</p>

<p>3.8 By accessing and using our services, you agree to be bound by the terms and conditions applying to the use of our processes available via the pages of this application.</p>

 

<h4>Duration, Termination and Run-off :</h4>

<p>4.1 This agreement commences on the effective date and shall remain in force until the case is closed by us or withdrawn by you in accordance with articles 3.6 and 9.5.</p>

<p>4.2 Without prejudice to provisions under applicable laws, each party has the right to terminate this agreement with immediate effect, or at a date to be determined by the party that terminates this agreement, (i) when the other party becomes subject of any bankruptcy or insolvency procedure under the law of its country or (ii) when the other party fails to observe or breaches a material provision of this agreement and such failure or breach, to the extent possible, is not remedied within a reasonable period of time to be determined by prior written notice of the terminating party.</p>

 

<h4>Liability, Indemnification and hold harmless</h4>

<p>5.1 Parties will be liable towards each other for any loss, cost, claim or damage, excluding any loss of business or profits and any consequential damages, which either party might suffer or incur as an result of the other party’s gross negligence, willful misconduct or non observance of any of its explicit or implied obligations under this agreement</p>

<p>5.2 You will indemnify us, any of our employees and any third party involved in the service and hold them and us harmless against any damage, obligations towards any third party, legal proceedings, costs and expenses arising at any time – whether directly or indirectly – relating to data protection, except if the liabilities were caused by negligence on our part.</p>

 

<h4>Data Protection :</h4>

<p>6.1 You agree that we are entitled to store and use the data provided by you necessary for the service. You agree that we share and transfer the date to entities within our associates and their parties for the purpose of rendering the service contemplated in this agreement, creating and maintaining credit scoring models or reports, assisting other companies to conduct credit checks and collect debts.</p>

<p>6.2 You confirm that you are authorized to provide us with such data regarding your debtors.</p>

<p>6.3 We will process the data mentioned under 6.1 in compliance with applicable data protection laws. In the event the rights under articles 6.1 and 6.2 above shall cease or if you are no longer entitled to provide such data, we have the right to cease our services and / or cancel the agreement with immediate effect.</p> 

<h4>Entire Agreement, Severability and Amendments</h4>

<p>7.1 This agreement constitutes the entire agreement and understanding of the parties and supersedes any previous agreement between the parties relating to the subject matter of this agreement.</p>

<p>7.2 A provision in this agreement might be void, invalid or not enforceable under the law,. This will not affect the validity or enforceability of any other provisions in the agreement.</p>

<p>Amendments to this agreement must be approved by you and us in writing.</p>

<h4>8. Applicable law and Jurisdiction</h4>

<p>8.1 The laws of India will exclusively govern this agreement. Any dispute will be subject to the exclusive jurisdiction of the courts in Mumbai, India.</p> 

<h4>Fees and Costs</h4>

<p>9.1 Fees for our services (“fees”) will be charged according to the schedule of fees and costs below.</p>

<p>9.2 Costs for third part services, including legal proceedings, will be charged where applicable in addition to these fees regardless of the result provided that you have given prior approval to start the debt collection activity that generates such costs. We may request you an advance payment from you for such costs.</p>

<p>9.3 Fees will also apply to debts settled by a counter-trade or a credit note in respect of a return of goods. The fees will be calculated on the amount of the issued credit note or the offset in relation to the counter-trade.</p>

<p>9.4 For any money transfer we may charge you with any potential consequential costs.</p>

<p>9.5 In the event you withdraw prematurely a mandate to collect we charge the success fee payable on the full outstanding amount of the debt except if :</p>

<div class="about_debt">        
        <ol>
<li>a. we estimate that the debt cannot be collected anymore or</li>
<li>b. you withdraw a mandate to collect within fourteen (14) calendar days after we have advised to start legal action / proceedings or an insolvency procedure.</li>
</ol>
</div> 
<p>In the following situations we also deem the mandate to collect, withdrawn by you :
<div class="about_debt">        
        <ol>
<li><b>a</b>You do not comply with your obligations to provide information to us, such as foreseen under article 3.2 of this agreement and have not remedied such failure with a period of time fixed by prior written notice of us,</li>

<li><b>b</b>You take any action to collect the debt without our agreement.</li>
</ol>
</div> 
<p>9.6 All amounts invoiced to you have to be paid at the latest on the due date communicated in writing by us or, if such date has not been specified, within 30 calendar days of the date of our invoice. In case of late payment we are entitled to charge you as from the due date a default interest of 10% per annum of the outstanding invoiced amount which continues to accrues until we receive full payment of the outstanding invoiced amount plus an indemnity fee of 10% of the outstanding invoiced amount.</p>
 

<h4>Schedule of Fees and Costs.</h4>

<p>10.1 File opening fees are non-refundable fees that are charged for each debt that is placed for collection with us.</p>
<p>10.2 The success fees (“Success fee”), calculated as a percentage of the collected amounts, will apply of the total amounts collected on a debt after we have initiated our service for such debt, irrespective of who received the amounts, who intervened in relation to the collection of the debt and whether or not these amounts relate to the principal sum, interest or costs.</p>
<p>10.3 All amount are exclusive of ay applicable VAT or Tax.</p>


<p>For and on behalf For and on behalf</p>

<p>of the <b>Client / Creditor of IRCCMS Private Limited</b></p>

</div> 


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
   </div>
   </div>
</div>

   <div class="row"> 
<div class="form-group">
<div class="col-md-6 back_buttom">
<asp:Button ID="debtsubmit" runat="server" Text="Submit" value="Submit" class="btn btn-primary" OnClick="debtsubmit_Click" />
<a href="Default.aspx" class="btn btn-info">Back</a>
<asp:Button ID="ButtonAddMorei" runat="server" Text="Add More Debt" CssClass="btn-lg" Visible="False" OnClick="ButtonAddMore_Click" />
                                                            
</div>
</div>
</div>
          </asp:Panel>
 
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

