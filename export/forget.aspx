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
                                    <div style="margin-top:80px;">
                                    <div class="form-group">

                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                        <asp:TextBox ID="TextBoxEmail" CssClass="form-control register-input" placeholder="Email" runat="server" OnTextChanged="TextBoxEmail_TextChanged" required="required" AutoPostBack="True"></asp:TextBox>
                                                </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <asp:Label ID="LabelEmailCheck" runat="server" Text=""></asp:Label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail"
                                            Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red"
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <div id='myform_Email_errorloc' class="error_strings"></div>
                                    </div>

                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                       <div class="form-group">
                                           <label>Do you remember the last password!</label>
                                        <br />
                                            <asp:RadioButtonList ID="RadioButtonListYN" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonListYN_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem>&nbsp;Yes&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                                <asp:ListItem>&nbsp;No&nbsp;</asp:ListItem>
                                            </asp:RadioButtonList>
                                           <asp:TextBox ID="TextBoxRP" CssClass="form-control register-input"  runat="server" placeholder="Password" TextMode="Password" Visible="False"></asp:TextBox>
                                           </div>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>
                                        
                                    <asp:Button ID="submit" runat="server" Text="Submit" value="Submit" class="btn btn-primary submit_read" OnClick="submit_Click" />
                                        <asp:Label ID="LabelPass" runat="server" Text="" ForeColor="White"></asp:Label>
                                        </div>
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


