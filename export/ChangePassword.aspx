<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="export.ChangePassword" %>

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
                                    <h2>Change Password</h2>

                                    <div id="testform">
                                        <div class="col-sm-12">
                                            <div>
                                                <asp:Panel ID="Panel1" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1" Style="padding: 25px;">
                                                    <p>
                                                        <label>Current Password</label>
                                                        <asp:TextBox ID="TextBoxCurPass" class="form-control register-input" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RFV1" ControlToValidate="TextBoxCurPass" runat="server" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </p>
                                                    <p>
                                                        <label>New Password</label>
                                                        <asp:TextBox ID="TextBoxNewPass" class="form-control register-input" runat="server" TextMode="Password"></asp:TextBox>
                                                    </p>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxCurPass" runat="server" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <p>
                                                        <label>Confirm Password</label>
                                                        <asp:TextBox ID="TextBoxNewPassC" class="form-control register-input" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxCurPass" runat="server" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="comparePasswords"
                                                            runat="server"
                                                            ControlToCompare="TextBoxNewPass"
                                                            ControlToValidate="TextBoxNewPassC"
                                                            ErrorMessage="Passwords not matched!"
                                                            Display="Dynamic" />
                                                    </p>
                                                     <div class="col-sm-4">
                                                            <div>&nbsp;
                                                            </div>
                                                        </div><br />
                                                    <div class="form-group">
                                                        <asp:Button ID="ButtonSave" CssClass="btn btn-primary btn-success" runat="server" Text="Submit" />
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="ButtonCancel" runat="server" CssClass="btn btn-primary btn-primary" Text="Cancel" CausesValidation="False" />
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
            </section>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">
</asp:Content>





