<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="export.forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:ScriptManager ID="ScriptManagerm" runat="server"></asp:ScriptManager>

<div class="sure_loginm">

<!---service-->
<section id="service">
<div class="container">
<div class="row">
<div class="col-sm-12 col-sm-offset-1">
<div class="sure_service">
<div class="col-sm-1"></div>
<div class="col-sm-5 service_login">
<div class="service_form">
<ul class="register_user">
<li><a href="#">Forgot Password</a></li>
<li class="user_new"><a href="login.aspx">Login</a></li>
</ul>
<div class="existing_line"></div>
<div style="margin-top: 80px;">
<div class="form-group">

<%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>--%>
<asp:TextBox ID="TextBoxUserName" CssClass="form-control register-input" placeholder="Username" runat="server" OnTextChanged="TextBoxUserName_TextChanged" required="required" AutoPostBack="True"></asp:TextBox>
<%--</ContentTemplate>
</asp:UpdatePanel>--%>


<div id='myform_Email_errorloc' class="error_strings">
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" ControlToValidate="TextBoxUserName" 
        runat="server" Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>
</div>
</div>

<div class="form-group">
    <asp:TextBox ID="TextBoxEmail"  CssClass="form-control register-input" placeholder="Email" runat="server"></asp:TextBox>
    <div class="error_strings">
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="TextBoxEmail" 
        runat="server" Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail"
Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red"
ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
</div>
</div>




<asp:Button ID="submit" runat="server" Text="Submit" value="Submit" class="btn btn-primary submit_read" OnClick="submit_Click" />
<asp:Label ID="LabelPass" runat="server" Text="" ForeColor="White"></asp:Label>
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

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">
</asp:Content>


