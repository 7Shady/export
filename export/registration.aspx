<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="export.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="registration">
        <div class="">
            <!---service-->
            <section id="service">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 doc_login">
                            <div class="doc_register">
                                <div class="register_form">
                                    <h2>Registration</h2>

                                    <div id="testform">

                                        <div class="form-group">
                                            <label>Name</label>
                                            <asp:TextBox ID="TextBoxName" class="form-control register-input" placeholder="Name" value="" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="nameReq"
                                                runat="server" Font-Size="Small"
                                                ControlToValidate="TextBoxName"
                                                ErrorMessage="Name required!"
                                                SetFocusOnError="True" Display="Dynamic" />
                                        </div>

                                        <asp:UpdatePanel ID="UpdatePanelEmail" runat="server">
                                            <ContentTemplate>
                                                <div class="form-group">
                                                    <label>Email Id</label>
                                                    <asp:TextBox ID="TextBoxEmail" class="form-control register-input" placeholder="Email Id" value="" runat="server" OnTextChanged="TextBoxEmail_TextChanged" AutoPostBack="True"></asp:TextBox>
                                                    <asp:Label ID="LabelEmailCheck" runat="server" Text=""></asp:Label>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                                                        runat="server" ControlToValidate="TextBoxEmail"
                                                        Display="Dynamic" ErrorMessage="Enter valid email"
                                                         ForeColor="Red" Font-Size="Small"
                                                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                                    </asp:RegularExpressionValidator>

                                                    <asp:RequiredFieldValidator ID="emailReq"
                                                        runat="server"
                                                        ControlToValidate="TextBoxEmail" Font-Size="Small"
                                                        ErrorMessage="Email required!"
                                                        SetFocusOnError="True" Display="Dynamic" />
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>

                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox ID="TextBoxPass" class="form-control register-input" placeholder="Password" value="" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="passwordReq"
                                            runat="server" Font-Size="Small"
                                            ControlToValidate="TextBoxPass"
                                            ErrorMessage="Password required!"
                                            SetFocusOnError="True" Display="Dynamic" />
                                        <asp:RegularExpressionValidator ID="REVPass" 
                                            runat="server" Font-Size="Small"
                                            ErrorMessage="• At least one upper case english letter<br> • At least one lower case english letter<br> • At least one digit<br> • At least one special character (#?!@$%^&*-)<br> • Minimum 8 in length<br> • Ex: A@abcd12" 
                                            ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" 
                                            ControlToValidate="TextBoxPass" SetFocusOnError="True" 
                                            Display="Dynamic"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <asp:TextBox ID="TextBoxPassc" class="form-control register-input" placeholder="Confirm Password" value="" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorReP"
                                            runat="server"
                                            ControlToValidate="TextBoxPassc" Font-Size="Small"
                                            ErrorMessage="Confirm password required!"
                                            SetFocusOnError="True" Display="Dynamic" />

                                        <asp:CompareValidator ID="comparePasswords"
                                            runat="server" Font-Size="Small"
                                            ControlToCompare="TextBoxPass"
                                            ControlToValidate="TextBoxPassc"
                                            ErrorMessage="Passwords not matched!"
                                            Display="Dynamic" />
                                    </div>

                                    <asp:Button ID="submit" runat="server" Text="Submit" value="Submit" class="btn btn-primary submit_button" OnClick="submit_Click" />
                                    <asp:HyperLink ID="HyperLinkLogin" CssClass="btn btn-primary submit_button" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!---service End-->
            <!---service End-->
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolderMenu">
   
</asp:Content>


