<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Buyer.aspx.cs" Inherits="export.Admin.Buyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


<!-- page content -->
<div class="right_col" role="main">

<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">

<div class="x_panel">
<div class="x_title">
<h2>Buyer Financial Reports  <small>Pending Assignments</small></h2>

<div class="clearfix"></div>
</div>
<div class="x_content">

<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
<thead>
<tr>
<th>TalkID</th>
<th>Name</th>
<th>PQ/CL/4/995</th>
<th>Industry</th>
<th>Aerospace</th>
<th>E-mail</th>
</tr>
</thead>
<tbody>
<tr>
<td>Functional Area</td>
<td>Satish Kumar</td>
<td>Engineering</td>
<td>Frame</td>
<td>10</td>
<td>satish@klickkarma.com</td>
</tr>

</tbody>
</table>


</div>
</div>


<div class="x_panel">
<div class="x_content">
<div class="x_title">
<h2>Buyer Financial Reports  <small>Pending Assignments</small></h2>

<div class="clearfix"></div>
</div>


<asp:GridView ID="GridViewBFP" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewBFP_SelectedIndexChanged"
GridLines="None"
AutoGenerateColumns="False" CssClass="table table-striped table-bordered dt-responsive nowrap" EmptyDataText="No Records..">
<Columns>
<asp:TemplateField HeaderText="#">
<ItemTemplate>
<%# Container.DataItemIndex + 1 %>
</ItemTemplate>
<ItemStyle Width="4%" />
</asp:TemplateField>
<asp:BoundField DataField="ClientId" HeaderText="Client ID" SortExpression="BuyerId" ItemStyle-Width="20%" />
<asp:BoundField DataField="BuyerId" HeaderText="Buyer ID" SortExpression="BuyerId" ItemStyle-Width="20%" />
<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-Width="20%" />
<asp:BoundField DataField="City" HeaderText="City" SortExpression="City" ItemStyle-Width="16%" />
<asp:BoundField DataField="AmountofOrder" HeaderText="AmountofOrder" SortExpression="TermsofDelivery" ItemStyle-Width="16%" />
<asp:TemplateField HeaderText="Status" SortExpression="Status">
<ItemTemplate>
<asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-info" Text='<%# Bind("Status") %>'></asp:Label>
</ItemTemplate>
<ItemStyle Width="14%" />
</asp:TemplateField>
<asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false"></asp:CommandField>
</Columns>
<EmptyDataRowStyle Font-Size="18" />
</asp:GridView>

</div>
</div>
</div>


</div>



</div>
<!-- /page content -->




</asp:Content>

