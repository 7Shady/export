<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="mail.aspx.cs" Inherits="export.mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     Email ID <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
Subject  <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox><br />
Body <asp:TextBox ID="txtbody" runat="server" TextMode="MultiLine"></asp:TextBox><br />
<asp:Button ID="btnSendmail" runat="server"  Text="Send"
   onclick="btnSendmail_Click"/>

</asp:Content>

