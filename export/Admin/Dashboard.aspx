<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="export.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

       
    <div class="right_col" role="main">
 
    <div class="">
        <div class="page-title">
          
 
            <!-- top tiles -->
        <div class="row tile_count">
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Total Clients</span>
              <div><asp:Label ID="LabelClient" CssClass="count green" runat="server" ></asp:Label></div>
              
            </div>
          </div>
             <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Total Pending Request</span>
              <div><asp:Label ID="LabelPending" CssClass="count green" runat="server" ></asp:Label></div>             
              
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-clock-o"></i> Buyer Financial Reports</span>
              <div><asp:Label ID="LabelBuyer" CssClass="count green" runat="server" ></asp:Label></div>             
              
              
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Credit Insurance Cover</span>
              <div><asp:Label ID="LabelCredit" CssClass="count green" runat="server" ></asp:Label></div>
              
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Debt Collection </span>
              <div><asp:Label ID="LabelDebt" CssClass="count green" runat="server" ></asp:Label></div>

            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Audit & structuring</span>
              <div><asp:Label ID="LabelAudit" CssClass="count green" runat="server" ></asp:Label></div>

              
            </div>
          </div>
         

        </div>
        <!-- /top tiles -->
        </div>
        <div class="clearfix"></div>
 
        <div class="row">
            <div class="col-md-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Page title <small>Page subtile </small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a></li>
                                    <li><a href="#">Settings 2</a></li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>


                    <div class="x_content">
                        <!-- content starts here -->
                        


      <!-- content ends here -->
                    </div>
                </div>
            </div>
        </div>



    </div>
</div>
   

</asp:Content>

