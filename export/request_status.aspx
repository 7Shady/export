<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="request_status.aspx.cs" Inherits="export.request_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
<section class="page-section legal_service">
 <div class="registration">
<div class="container">
 <div class="row">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="sure_legal">
<ul class="nav nav-tabs request_nav">
<!--<li class="active"><a data-toggle="tab" href="#home">Home</a></li>-->
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
<p>CL/001</p>
</div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 full_name">
<p>Client Name:</p></div>
<div class="col-lg-4 col-md-4 col-sm-3 col-xs-3 client_legal">
<p>Pankaj Rana</p>
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



<hr>
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
        <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
    <tr align="center" class="industryid">
<th align="center" scope="col">#</th>
<th align="center" scope="col">TalkID</th>
<th align="center" scope="col">Industry</th>
<th align="center" scope="col">Function Area</th>
<th align="center" scope="col">Timeframe of query resolution</th>
<th align="center" scope="col">Status</th>
<th align="center" scope="col">View</th>
</tr>
<tr>
<td align="center">1.</td>
<td align="center">TAL/CL/14/997</td>
<td align="center">Construction </td>
<td align="center">Actuarial/Statistics</td>
<td align="center">
20 &nbsp; (Days)
</td>
<td align="center">
<a class="btn btn-xs btn-info" href="#">Pending</a>
</td>
<td align="center" style="height:40px;">
<a href="buyer_financial_view.aspx" class="btn btn-primary btn-xs">View</a>

</td>
</tr>

</tbody>
</table>
          </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse5">2. Completed Assignments</a>
      </h4>
    </div>
    <div id="collapse5" class="panel-collapse collapse">
      <div class="panel-body">
            <div class="table-responsive">
        <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>
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
        <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>

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
          <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr align="center" class="industryid">
<th align="center" scope="col">#</th>
<th align="center" scope="col">ID</th>
<th align="center" scope="col">Industry</th>
<th align="center" scope="col">Function Area</th>
<th align="center" scope="col">Times</th>
<th align="center" scope="col">Status</th>
<th align="center" scope="col">View</th>
</tr>
<tr>
<td align="center">1.</td>
<td align="center">TAL/CL/14/997</td>
<td align="center">Construction </td>
<td align="center">Actuarial/Statistics</td>
<td align="center">
20 &nbsp; (Days)
</td>
<td align="center">
<a class="btn btn-xs btn-info" href="#">Pending</a>
</td>
<td align="center" style="height:40px;">
<a href="credit_insurance_table.aspx" class="btn btn-primary btn-xs">View</a>

</td>
</tr>
</tbody>
</table>
          </div>
        
        </div>
    </div>
  </div>
  <div class="panel panel-default assignment">
    <div class="panel-heading legal_assignments">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion2" href="#collapse2">2. Completed Assignments</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
          <div class="table-responsive">
<table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>
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
<table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>
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
       <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr align="center"  class="industryid">
<th align="center" scope="col">#</th>
<th align="center" scope="col">ID</th>
<th align="center" scope="col">Industry</th>
<th align="center" scope="col">Function Area</th>
<th align="center" scope="col">Times</th>
<th align="center" scope="col">Budget($)</th>
<th align="center" scope="col">Status</th>
<th align="center" scope="col">View</th>
</tr>
<tr>
<td align="center"></td>
<td align="center">1.</td>
<td align="center">TAL/CL/14/997</td>
<td align="center">Construction </td>
<td align="center">Actuarial/Statistics</td>
<td align="center">
20 &nbsp; (Days)
</td>
<td align="center">
<a class="btn btn-xs btn-info" href="#">Pending</a>
</td>
<td align="center" style="height:40px;">
<a href="debt_collection_table.aspx" class="btn btn-primary btn-xs">View</a>

</td>
</tr>
</tbody>
</table>
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
        <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>
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
        <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>
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
         <table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr align="center"  class="industryid">
<th align="center" scope="col">#</th>
<th align="center" scope="col">ID</th>
<th align="center" scope="col">Opportunity Title</th>
<th align="center" scope="col">Organization Name</th>
<th align="center" scope="col">Industry</th>
<th align="center" scope="col">Budget</th>
<th align="center" scope="col">Nature</th>
<th align="center" scope="col">Location</th>
<th align="center" scope="col">BidDeadline</th>
<th align="center" scope="col">ProjectTimeline</th>
<th align="center" scope="col">Status</th>
<th align="center" scope="col">View</th>
</tr>
<tr>
<td align="center">1.</td>
<td align="center">OPT/CL/3/996</td>
<td align="center">Test Opportunity</td>
<td align="center">Glocalthinkers</td>
<td align="center">Advertising </td>
<td align="center">8</td>
<td align="center">Onsite</td>
<td align="center">delhi</td>
<td align="center">9/16/2016</td>
<td align="center">2 Years</td>
<td align="center">
<a class="btn btn-xs btn-info" href="#">Pending</a>
 </td>
<td align="center" style="height:40px;">
<a href="#" class="btn btn-primary btn-xs">View</a>
</td>
		</tr>
</tbody>
</table>

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
<table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>
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
<table cellspacing="0" cellpadding="4" rules="rows" class="talkid">
<tbody>
<tr>
<td>
<h3>No Records..</h3>
</td>
</tr>
</tbody>
</table>
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

