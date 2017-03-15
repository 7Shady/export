<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ProfileSuccess.aspx.cs" Inherits="export.ProfileSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="wrap">
        <div class="main">
            <div class="about-top">
                <div class="cont1 span_2_of_a about_desc" style="width:90%;">
                       
                            <div class="coln span_2_of_3n" style="text-align:center;">
                                <div class="contact-form">
                                <h3>Registered Successfully</h3><div class="underline"></div>
                                <p>Client Id: <asp:Label ID="LabelClientID" runat="server" Text="" Font-Bold="True" ForeColor="#489BDA"></asp:Label></p>
                                <p>Soon you will be contacted by registration incharge. Keep this Id for future refernce</p>
                                <p><asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/login.aspx">Goto Login</asp:HyperLink></p>
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

