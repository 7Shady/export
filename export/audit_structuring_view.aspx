<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="audit_structuring_view.aspx.cs" Inherits="export.audit_structuring_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        
<section class="page-section legal_service">
<div class="registration">
<div class="container">
 <div class="row">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="sure_legal">
<ul class="nav nav-tabs training">
<li><a data-toggle="tab" href="#legal_service" class="legal_certification">Audit & structuring of a customized process</a></li>

</ul>

<div id="legal_service" class="tab-pane talk_legal active">
<div class="bg-yellow">
<div class="col-sm-12 bg-primary consultant_id">
<div class="row">
<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
    <div class="row opportunities">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 client_legal client_buyer">
<p><b>Client ID:</b></p>
</div>
<div  class="col-lg-2 col-md-2 col-sm-3 col-xs-3 client_legal">
<p><asp:Label ID="LabelClientId" runat="server" Text="Label" Font-Bold="True"></asp:Label></p>
</div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 full_name">
<p>Client Name:</p></div>
<div class="col-lg-4 col-md-4 col-sm-3 col-xs-3 client_legal">
<p><asp:Label ID="LabelName" runat="server" Text="Label" Font-Bold="True"></asp:Label></p>
</div>
</div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
<div class="arrow">
<a href="request_status.aspx" class="btn btn-primary share" title="Back">
<span class="glyphicon glyphicon-arrow-left"></span>
</a>
</div>
</div>
</div>
</div>
</div>



<div class="inner_padding legal_table">

<div class="table-responsive">

<table class="table-bordered table-hover table">
<tbody>
<tr>
<td class="bg-green-light">Audit Id</td>
<td><asp:Label ID="LabelAuditId" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td>

<td class="bg-green-light">Person to be contacted for Audit</td>
<td><asp:Label ID="LabelBName" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td>

</tr>

<tr>
<td class="bg-green-light">Country</td>
<td><asp:Label ID="LabelCountry" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td>

<td class="bg-green-light">State</td>
<td><asp:Label ID="LabelState" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td>

</tr>

<tr>
<td class="bg-green-light">City </td>
<td><asp:Label ID="LabelCity" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td><td class="bg-green-light">Address</td>
<td><asp:Label ID="LabelAddress" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td>

</tr>

<tr>


<td class="bg-green-light">Email ID of the person </td>
<td><asp:Label ID="LabelEmail" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td>
<td class="bg-green-light">Telephone Number of the person</td>
<td><asp:Label ID="LabelNumber" runat="server" Text="Label" Font-Bold="True"></asp:Label>
</td>
</tr>
    

 

<tr>
<td class="bg-green-light">Status</td>
<td>
<div class="btn btn-info btn-xs">Pending</div>
</td>


<td class="bg-green-light">AttachmentPath</td>
<td>
<div>
 <asp:Button ID="ButtonDload" runat="server" Text="Download" CssClass="btn btn-info btn-xs" OnClick="ButtonDload_Click" />

<input type="hidden" value="">
</div>
</td>
</tr>

<tr>
<td class="bg-green-light"></td>
<td>
<div>
<br>
</div>
</td>
<td class="bg-green-light">

</td>
<td></td>
</tr>

</tbody>
</table>
    </div>
<div style="text-align: center;">
<input type="submit" value="Back" onclick="location.href='request_status.aspx'" class="btn btn-primary back_table">
<br>
</div>



 

</div>


</div>

</div>
</div>
</div>
</div>
</div>
</section>


</asp:Content>

