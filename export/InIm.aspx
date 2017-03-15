<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InIm.aspx.cs" Inherits="export.InIm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <div>
    <h4>Save images into the database</h4>

       Select file: <asp:FileUpload ID="FileUpload1" runat="server" />

       <asp:Button ID="btnSubmit" runat="server" Text="Upload & Save" OnClick="UploadAndSaveIntoDatabase" />

        <p><asp:Label ID="lblMessage" runat="server" EnableViewState="false" 

ForeColor="Green" /></p>
    </div>
    </form>
</body>
</html>
