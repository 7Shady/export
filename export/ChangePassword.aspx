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
                                                <asp:Panel ID="PanelCP" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1" Style="padding: 25px;">
                                                    <p>
                                                        <label>Old Password</label>
                                                                <asp:TextBox ID="TextBoxCurPass" CssClass="form-control register-input" runat="server" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RFV1" ControlToValidate="TextBoxCurPass" runat="server" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                        <label>
                                                            New Password</label>
                                                        <asp:TextBox ID="TextBoxNewPass" runat="server" class="form-control register-input" TextMode="Password"></asp:TextBox>
                                                    </p>
                                                    <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="TextBoxNewPass" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    <p>
                                                        <label>
                                                            Confirm Password</label>
                                                        <asp:TextBox ID="TextBoxNewPassC" runat="server" class="form-control register-input" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RFV3" runat="server" ControlToValidate="TextBoxNewPassC" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="comparePasswords" runat="server" ControlToCompare="TextBoxNewPass" ControlToValidate="TextBoxNewPassC" Display="Dynamic" ErrorMessage="Passwords not matched!" />
                                                    </p>
                                                    <div class="col-sm-4">
                                                        <div>
                                                            &nbsp;
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="form-group">
                                                        <asp:Button ID="ButtonSave" runat="server" CssClass="btn btn-primary btn-success" OnClick="ButtonSave_Click" Text="Submit" />
                                                        &nbsp;&nbsp;&nbsp;
                                                            <asp:Button ID="ButtonCancel" runat="server" CausesValidation="False" CssClass="btn btn-primary btn-primary" Text="Cancel" OnClick="ButtonCancel_Click" />
                                                    </div>

                                                    <p>
                                                    </p>

                                                    <p>
                                                    </p>

                                                    <p>
                                                    </p>

                                                    <p>
                                                    </p>

                                                    <p>
                                                    </p>
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







