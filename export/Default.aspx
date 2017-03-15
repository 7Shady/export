<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="export.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">

    <div id="about">
        <!-- Head Section -->

        <!-- End Head Section -->
        <!-- About Section -->
        <section class="top-page-section">
            <div class="container customContainer">
                <div class="section-text">
                    <div class="row">
                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 profile_img">
                            <asp:Image ID="ImageClient" runat="server" ImageUrl="images/user.png" Width="144" Height="144" />
                            <p><asp:Label ID="LabelNameB" runat="server"></asp:Label> <asp:Button ID="ButtonSignOut" Style="border:none; font-weight:normal;color:#808080; font-size:small;" runat="server" Text=" SignOut " OnClick="ButtonSignOut_Click"  /></p>
                        </div>

                        <div class="col-lg-4 col-md-3 col-sm-9 col-xs-8 con_address">
                            <p><i class="fa fa-user-circle"></i> <asp:Label ID="LabelName" runat="server"></asp:Label></p>
							<p><i class="fa fa-envelope"></i> <asp:Label ID="LabelEmail" runat="server"></asp:Label></p>
							<p><i class="fa fa-phone-square"></i> <asp:Label ID="LabelContact" runat="server"></asp:Label></p>
							<p><i class="fa fa-calendar-check-o"></i> <asp:Label ID="LabelUpdateDate" runat="server" Text="Label"></asp:Label></p>
                            <asp:Button ID="ButtonViewProfile" CssClass="btn btn-primary submit_login" runat="server" Text="View / Edit Profile" OnClick="ButtonViewProfile_Click" />
                        </div> 

                        <div class="con_refer">
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 view_request">
                            <div class="panel panel-default">
                                <div class="panel-body earn_panel">
                                <div class="view-yellow">
                                    <span class="fa fa-bookmark-o"></span>
                                </div>
                                <h3 style="">View Request</h3>
                                <p>View Status of Assignments</p>
                                <a class="btn btn-warning btn-primary con_apply" href="#">View Request</a>
                            </div>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 view_request">
                            <div class="panel panel-default">
                                <div class="panel-body earn_panel">
                                <div class="bg-green">
                                    <span class="fa  fa-users"></span>
                                </div>
                              <h3>Annual Login</h3>
                                <p>Post query all<br>365 days</p>
                                <a class="btn btn-success btn-primary coming_apply">Coming soon..</a>
                            </div>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 view_request">
                            <div class="panel panel-default">
                                <div class="panel-body earn_panel">
                                <div class="bg-blue">
                                    <span class="fa fa-paper-plane"></span>
                                </div>
                               <h3>Refer Opportunities</h3>
                                <p>Earn upto 25% of the topline value</p>
                                <a class="btn btn-primary share_apply" href="#">Share Opportunity</a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="user_section">
                <div class="profile_user">
                  
                            <a href="profile.aspx" class="btn btn-primary btn-xs user_buttom">User Profile</a>
                       
            </div>
                </div> 
        </section>

        <!-- End About Section -->
       <!-- Testimonials Section -->

        <section class="page-section">
            <div class="container customContainer">

                <div class="section-text">
                    <div class="row legal">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="text_padding">
                                <asp:HyperLink ID="buyer_financial" CssClass="legal_heading legal_orange" NavigateUrl="#" runat="server">
                                <%--<a href="buyer_financial.aspx" class="legal_heading legal_orange">--%>
                                    <div class="rounds_1 bg-orange legal_doctor">
                                        <img src="images/exporter/buyer.png" />
                                    </div>
                                    <h2>Buyer Financial Reports</h2>
                                 </asp:HyperLink>   
                                <%--</a>--%>
                               
                                <p>It analyzes their financial history including their credit history to advise the risk profile of the buyer. </p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="text_padding">
                                 <asp:HyperLink ID="credit_insurance" CssClass="legal_heading legal_green" NavigateUrl="#" runat="server">
                                    <div class="rounds_1 bg-green legal_doctor">
                                        <img src="images/exporter/credit.png">
                                    </div>
                                    <h2>Credit Insurance Cover</h2>
                                </asp:HyperLink>
                                <p>Provides the exporter with a ‘receivable default risk cover’ in instances where the export transaction is being carried out without a LC</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="text_padding">
                                <asp:HyperLink ID="debt_collection" CssClass="legal_heading legal_purple" NavigateUrl="#" runat="server">                                
                                    <div class="rounds_1 bg-purple legal_doctor">
                                        <img src="images/exporter/debt_collection.png">
                                    </div>
                                    <h2>Debt Collection</h2>
                                </asp:HyperLink>
                                <p>We are in touch with debt collectors and bad debt buyers from across the world</p>
                            </div>
                        </div>


                    </div>
                    
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="text_padding">
                                <asp:HyperLink ID="audit_structuring" CssClass="legal_heading legal_blue" NavigateUrl="#" runat="server">                                
                                    <div class="rounds_1 bg-blue legal_doctor">
                                        <img src="images/exporter/audit.png">
                                    </div>
                                    <h2>Audit & structuring of a customized process </h2>
                                </asp:HyperLink>
                                <p>This documented process will have to be adhered to at all time there on</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="text_padding">
                                <asp:HyperLink ID="request_status" CssClass="legal_heading legal_purple" NavigateUrl="#" runat="server">                               
                                    <div class="rounds_1 view-yellow legal_doctor">                                        
                                        <span class="fa fa-eye-slash logo_span"></span>
                                    </div>
                                    <h2>Request Status</h2>
                                 </asp:HyperLink>
                                <p>You can view the status of your assignments with Glocal Thinkers in this section.</p>
                                <br>
                            </div>
                        </div>

                       
                    </div>
                   
                   
                </div>
            </div>
        </section>

        <!-- End Testimonials Section -->

    </div>

</asp:Content>

