<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ProfileSuccess.aspx.cs" Inherits="export.ProfileSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="wrap">
        <div class="main">
            <div class="about-top">
                <div class="cont1 span_2_of_a about_desc" style="width: 90%;">
                    <div class="coln span_2_of_3n" style="text-align: center;">
                        <div class="contact-form">
                            <br />
                            <h3>Registered Successfully</h3>
                            <div class="underline"></div>
                            <br />
                            <br />
                            <h4>Client Id:
                                <asp:Label ID="LabelClientID" runat="server" Text="" Font-Bold="True" ForeColor="#4a9dd9"></asp:Label></h4>
                            <p>Soon you will be contacted by registration incharge.<br />
                                Keep this Id for future refernce</p>
                            <br />
                            <p>
                                <asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/login.aspx" CssClass="btn btn-sm btn-success"> Login </asp:HyperLink></p>
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
                <div class="clear">
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">
</asp:Content>


