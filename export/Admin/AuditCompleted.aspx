﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admino.Master" AutoEventWireup="true" CodeBehind="AuditCompleted.aspx.cs" Inherits="export.Admin.AuditCompleted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolderMiddle">
<div class="">
<div class="page-title">
<div class="title_left">
<h3></h3>
</div>

<div class="title_right">
<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
</div>
</div>
</div>
<div class="clearfix"></div>

<div class="row">

<div class="col-md-12 col-sm-12 col-xs-12">
<div class="x_panel">
<div class="x_title">
<h2>Audit & structuring  <small>Completed Assignments</small></h2>

<div class="clearfix"></div>
</div>


<asp:GridView ID="GridViewASA" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewASA_SelectedIndexChanged"
GridLines="None"
AutoGenerateColumns="False" CssClass="table table-striped table-bordered dt-responsive nowrap" EmptyDataText="No Records..">
<Columns>
<asp:TemplateField HeaderText="#">
<ItemTemplate>
<%# Container.DataItemIndex + 1 %>
</ItemTemplate>
<ItemStyle Width="4%" />
</asp:TemplateField>
<asp:BoundField DataField="ClientId" HeaderText="Client ID" SortExpression="AuditId" ItemStyle-Width="20%" />
<asp:BoundField DataField="AuditId" HeaderText="ID" SortExpression="AuditId" ItemStyle-Width="20%" />
<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-Width="20%" />
<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ItemStyle-Width="16%" />
<asp:BoundField DataField="contactnumber" HeaderText="contactnumber" SortExpression="contactnumber" ItemStyle-Width="16%" />
<asp:TemplateField HeaderText="Status" SortExpression="Status">
<ItemTemplate>
<asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-success" Text='<%# Bind("Status") %>'></asp:Label>
</ItemTemplate>
<ItemStyle Width="14%" />
</asp:TemplateField>
<asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false"></asp:CommandField>
</Columns>
<HeaderStyle CssClass="industryid" />
<RowStyle HorizontalAlign="Center" CssClass="gd-border" />
<EmptyDataRowStyle Font-Size="18" />
</asp:GridView>

</div>
</div>
</div>
</div>
<!-- /page content -->


</asp:Content>

