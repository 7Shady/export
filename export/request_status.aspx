﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="request_status.aspx.cs" Inherits="export.request_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <section class="page-section legal_service">
 <div class="registration">
<div class="container" style="width:90%;">
 <div class="row" >
    <div class="col-sm-10 col-sm-offset-1">
        <div class="sure_legal" >
<ul class="nav nav-tabs request_nav">
<li><a data-toggle="tab" href="#menu1" class="request_status">Request Status</a></li>
</ul>

<div id="menu1" class="tab-pane talk_legal active">
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
<a href="Default.aspx" class="btn btn-primary share" title="Back">
<span class="glyphicon glyphicon-arrow-left"></span>
</a>
</div>
</div>
</div>
</div>
</div>


<div class="inner_padding business">

<p>Will use the same logic as the existing platform</p>



<hr />
<div>
<ul class="nav nav-tabs status_request">

<li><a data-toggle="tab" href="#buyer_financial" class="request_legal">Buyer Financial Reports</a></li>
<li><a data-toggle="tab" href="#credit_insurance" class="request_training">Credit Insurance Cover</a></li>
<li><a data-toggle="tab" href="#debt_collection" class="request_finance">Debt Collection</a></li>
<li><a data-toggle="tab" href="#audit_structuring" class="request_insurance">Audit & structuring of a customized process</a></li>

</ul>
<div class="tab-content">

<div id="buyer_financial" class="tab-pane service_legal active">
<div class="row">
<div class="col-md-12 services_certification">
    
    <div class="panel-group" id="accordion1">
  <div class="panel panel-default assignment">
    <div class="panel-heading assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse4">1. Pending Assignments</a>
      </h4>
    </div>
    <div id="collapse4" class="panel-collapse collapse in">
      <div class="panel-body">
            <div class="table-responsive">
                
         <asp:GridView ID="GridViewBFP" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewBFP_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="BuyerId" HeaderText="ID" SortExpression="BuyerId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" ItemStyle-width="16%" />
                   <asp:BoundField DataField="AmountofOrder" HeaderText="AmountofOrder" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-info" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                    <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                   </asp:CommandField>
               </Columns>
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>     
                
          </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse5">2. Completed Assignments </a> </h4>  </div>
    <div id="collapse5" class="panel-collapse collapse">
      <div class="panel-body">
            <div class="table-responsive">
       
              <asp:GridView ID="GridViewBFA" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewBFA_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                    <asp:BoundField DataField="BuyerId" HeaderText="ID" SortExpression="BuyerId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" ItemStyle-width="16%" />
                   <asp:BoundField DataField="AmountofOrder" HeaderText="AmountofOrder" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-success" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>


          </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse6">3. Declined Assignments</a>
      </h4>
    </div>
    <div id="collapse6" class="panel-collapse collapse">
      <div class="panel-body">
            <div class="table-responsive">
        
<asp:GridView ID="GridViewBFD" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewBFD_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                    <asp:BoundField DataField="BuyerId" HeaderText="ID" SortExpression="BuyerId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" ItemStyle-width="16%" />
                   <asp:BoundField DataField="AmountofOrder" HeaderText="AmountofOrder" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-danger" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>


          </div>
        
        </div>
    </div>
  </div>
</div>
    
    
    
    
    
    
 
</div>
</div>
</div>


<div id="credit_insurance" class="tab-pane certification">
<div class="row">
<div class="col-md-12 services_certification">
    
    <div class="panel-group" id="accordion2">
  <div class="panel panel-default assignment">
    <div class="panel-heading legal_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion2" href="#collapse1">1. Pending Assignments</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body">
        <div class="table-responsive">
           <asp:GridView ID="GridViewCICP" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewCICP_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="CreditId" HeaderText="ID" SortExpression="CreditId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="ValueofConsignment" HeaderText="ValueofConsignment" SortExpression="ValueofConsignment" ItemStyle-width="16%" />
                   <asp:BoundField DataField="TermsofDelivery" HeaderText="TermsofDelivery" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-info" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
               
                 </asp:GridView>
            
          </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading legal_assignments">
      <h4 class="panel-title">
        <a runat="server" data-toggle="collapse" data-parent="#accordion2" href="#collapse2" onclick="LoadCICA">2. Completed Assignments</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
          <div class="table-responsive">
              <asp:GridView ID="GridViewCICA" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewCICA_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="CreditId" HeaderText="ID" SortExpression="CreditId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="ValueofConsignment" HeaderText="ValueofConsignment" SortExpression="ValueofConsignment" ItemStyle-width="16%" />
                   <asp:BoundField DataField="TermsofDelivery" HeaderText="TermsofDelivery" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-success" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>

</div>
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading legal_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion2" href="#collapse3">3. Declined Assignments</a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
      <div class="panel-body">
        <div class="table-responsive">
<asp:GridView ID="GridViewCICD" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewCICD_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="CreditId" HeaderText="ID" SortExpression="CreditId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="ValueofConsignment" HeaderText="Value of Consignment" SortExpression="ValueofConsignment" ItemStyle-width="16%" />
                   <asp:BoundField DataField="TermsofDelivery" HeaderText="Terms of Delivery" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-danger" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>
</div>
        
        </div>
    </div>
  </div>
</div>
    </div>

</div>
</div>


<div id="debt_collection" class="tab-pane account">
<div class="row">
<div class="col-md-12 services_certification">
    
    <div class="panel-group" id="accordion3">
  <div class="panel panel-default assignment">
    <div class="panel-heading finance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion3" href="#collapse7">1. Pending Assignments</a>
      </h4>
    </div>
    <div id="collapse7" class="panel-collapse collapse in">
      <div class="panel-body">
            <div class="table-responsive">
           <asp:GridView ID="GridViewDCP" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewDCP_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="DebtId" HeaderText="ID" SortExpression="DebtId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="ValueofConsignment" HeaderText="ValueofConsignment" SortExpression="ValueofConsignment" ItemStyle-width="16%" />
                   <asp:BoundField DataField="TermsofDelivery" HeaderText="TermsofDelivery" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-info" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
               
                 </asp:GridView>
                
                    </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading finance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion3" href="#collapse8">2. Completed Assignments</a>
      </h4>
    </div>
    <div id="collapse8" class="panel-collapse collapse">
      <div class="panel-body">
            <div class="table-responsive">
        <asp:GridView ID="GridViewDCA" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewDCA_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="DebtId" HeaderText="ID" SortExpression="DebtId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="ValueofConsignment" HeaderText="ValueofConsignment" SortExpression="ValueofConsignment" ItemStyle-width="16%" />
                   <asp:BoundField DataField="TermsofDelivery" HeaderText="TermsofDelivery" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-success" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>

                
                   </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading finance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion3" href="#collapse9">3. Declined Assignments</a>
      </h4>
    </div>
    <div id="collapse9" class="panel-collapse collapse">
      <div class="panel-body">
            <div class="table-responsive">
       
<asp:GridView ID="GridViewDCD" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewDCD_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="DebtId" HeaderText="ID" SortExpression="CreditId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="ValueofConsignment" HeaderText="Value of Consignment" SortExpression="ValueofConsignment" ItemStyle-width="16%" />
                   <asp:BoundField DataField="TermsofDelivery" HeaderText="Terms of Delivery" SortExpression="TermsofDelivery" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-danger" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>


          </div>
        
        
        </div>
    </div>
  </div>
</div>
    
    
    

</div>

</div>
</div>

<div id="audit_structuring" class="tab-pane insurance_req">
<div class="row">
<div class="col-md-12 services_certification">
    
    
    
    
<div class="panel-group" id="accordion4">
  <div class="panel panel-default assignment">
    <div class="panel-heading insurance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion4" href="#collapse10">1. Pending Assignments</a>
      </h4>
    </div>
    <div id="collapse10" class="panel-collapse collapse in">
      <div class="panel-body">
        <div class="table-responsive">
         <asp:GridView ID="GridViewASP" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewASP_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="AuditId" HeaderText="ID" SortExpression="AuditId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ItemStyle-width="16%" />
                   <asp:BoundField DataField="contactnumber" HeaderText="contactnumber" SortExpression="contactnumber" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-info" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
               
                 </asp:GridView>
           
          </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading insurance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion4" href="#collapse11">2. Completed Assignments</a>
      </h4>
    </div>
    <div id="collapse11" class="panel-collapse collapse">
      <div class="panel-body">
          <div class="table-responsive">
                <asp:GridView ID="GridViewASA" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewASA_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="AuditId" HeaderText="ID" SortExpression="AuditId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ItemStyle-width="16%" />
                   <asp:BoundField DataField="contactnumber" HeaderText="contactnumber" SortExpression="contactnumber" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-success" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>
              
          </div>
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading insurance_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion4" href="#collapse12">3. Declined Assignments</a>
      </h4>
    </div>
    <div id="collapse12" class="panel-collapse collapse">
      <div class="panel-body">
        <div class="table-responsive">
                  
<asp:GridView ID="GridViewASD" CellSpacing="0" CellPadding="4" runat="server" Width="100%" OnSelectedIndexChanged="GridViewASD_SelectedIndexChanged" 
                     GridLines="None"  
                      AutoGenerateColumns="False" CssClass="Grid" EmptyDataText="No Records..">
               <Columns>
                   <asp:TemplateField HeaderText="#">
                       <ItemTemplate>
                           <%# Container.DataItemIndex + 1 %>
                       </ItemTemplate>
                       <ItemStyle Width="4%" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="AuditId" HeaderText="ID" SortExpression="AuditId" ItemStyle-width="20%" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-width="20%"  />
                   <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ItemStyle-width="16%" />
                   <asp:BoundField DataField="contactnumber" HeaderText="contactnumber" SortExpression="contactnumber" ItemStyle-width="16%"  />
                   <asp:TemplateField HeaderText="Status" SortExpression="Status">
                       <ItemTemplate>
                           <asp:Label ID="LabelStatus" runat="server" CssClass="btn btn-xs btn-danger" Text='<%# Bind("Status") %>'></asp:Label>
                       </ItemTemplate>
                       <ItemStyle Width="14%" />
                   </asp:TemplateField>
                   <asp:CommandField HeaderText="View" ButtonType="Link" SelectText="View" ControlStyle-CssClass="btn btn-primary btn-xs" ShowSelectButton="True" ControlStyle-ForeColor="#ffffff" ControlStyle-Font-Underline="false">
                       
                   </asp:CommandField>
               </Columns>
                     <HeaderStyle CssClass="industryid" />
                     <RowStyle HorizontalAlign="Center" CssClass="gd-border"  />
                     <EmptyDataRowStyle Font-Size="18" />
                 </asp:GridView>

        </div>
        
        </div>
    </div>
  </div>
</div>
    
    
    

    </div>

</div>
</div>

</div>
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

