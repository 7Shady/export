<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InIm.aspx.cs" Inherits="export.InIm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" /> 
      
<link href="css/select2.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/exporters.css" />

<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/redmond/jquery-ui.css" />

</head>
<body>
    <form id="form1" runat="server">
       
        
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <div>
                <h4>Save images into the database</h4>

                Select file:
                <asp:FileUpload ID="FileUpload1" runat="server" />

                <asp:Button ID="btnSubmit" runat="server" Text="Upload & Save" OnClick="UploadAndSaveIntoDatabase" />

                <p>
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false"
                        ForeColor="Green" />
                </p>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
            </div>

        <section class="page-section legal_service">
<div class="registration"> 
<div class="container">
<div class="row">
        

    <div class="col-sm-12 overseas">
         <div class="panel panel-default assignment">
        <div id="collapse12" class="panel-collapse">
      <div class="panel-body">
        <div id="legal_service_request" class="tab-pane talk_legal active">
            <br /><br />
         <div class="row"> 
            <div class="col-md-6">
     <div class="form-group">
<label>State</label>
            <select id="dropd" runat="server" class="form-control register-input" name="State" style="width:100%;">
<option value="select_State">Select State</option>
<option value="">Andaman & Nicobar Islands</option>
<option value="">Andhra Pradesh</option>
<option value="">Arunachal Pradesh</option>
<option value="">Assam</option>
<option value="">Bihar</option>
<option value="">Chandigarh</option>
<option value="">Chattisgarh</option>
</select> 
<br /><br />
         <asp:DropDownList ID="DropDownList1" CssClass="form-control register-input" Width="100%"  runat="server" >
             <asp:ListItem></asp:ListItem>
             <asp:ListItem></asp:ListItem>
             <asp:ListItem></asp:ListItem>
             <asp:ListItem></asp:ListItem>
             <asp:ListItem></asp:ListItem>
         </asp:DropDownList>

     </div></div></div></div></div></div></div></div></div></div></div></section>
       
        
         
    </form>
     
<script src="js/jquery.min.js"></script>
<script src="js/select2.min.js"></script>
<script src="js/form-select2.js"></script>

</body>
</html>
