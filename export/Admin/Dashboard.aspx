<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admino.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="export.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMiddle" runat="server">

<div class="">



<!-- top tiles -->
<div class="row tile_count">

    <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
              <div class="tile-stats">
                <div class="icon">
                    <%--<i class="fa fa-user"></i>--%>
                </div>
                <div class="count"><asp:Label ID="LabelClient" Text="1242" CssClass="count green" runat="server"></asp:Label></div>

                <h3>Total<br />Clients</h3>
               
              </div>
            </div>

    <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon">
                <%--<i class="fa fa-clock-o"></i>--%>
            </div>
            <div class="count">
                <asp:Label ID="LabelPending" CssClass="count green" Text="142" runat="server"></asp:Label>
            </div>
            <h3>Pending Request</h3>
        </div>
    </div>

    <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon">
                <%--<i class="fa fa-bar-chart-o"></i>--%>
            </div>
            <div class="count">
                <asp:Label ID="LabelBuyer" CssClass="count green" Text="Buyer" runat="server"></asp:Label>
            </div>
            <h3>Financial Reports</h3>
        </div>
    </div>

    <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon">
                <%--<i class="fa fa-credit-card"></i>--%>
            </div>
            <div class="count">
                <asp:Label ID="LabelCredit" CssClass="count green" Text="Credit" runat="server"></asp:Label>
            </div>
            <h3>Insurance Cover</h3>
        </div>
    </div>
   
      <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon">
                <%--<i class="fa fa-rupee"></i>--%>
            </div>
            <div class="count">
                <asp:Label ID="LabelDebt" CssClass="count green" Text="Total" runat="server"></asp:Label>
            </div>
            <h3>Debt Collection</h3>
        </div>
    </div>

    <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon">
                <%--<i class="fa fa-search-plus"></i>--%>
            </div>
            <div class="count">
                <asp:Label ID="LabelAudit" CssClass="count green" Text="All" runat="server"></asp:Label>
            </div>
            <h3>Audit & structuring</h3>
        </div>
    </div>
    


</div>
    
<div class="clearfix"></div>
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>Dashboard <small>Panel </small></h2>
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

            <h1>Dashboard</h1>
            <!-- content ends here -->
        </div>
    </div>
</div>
</div>



</div>


</asp:Content>

