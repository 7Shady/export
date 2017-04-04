<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admino.Master" AutoEventWireup="true" CodeBehind="DebtView.aspx.cs" Inherits="export.Admin.DebtView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMiddle" runat="server">

      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="">
<div class="page-title">
    <div class="title_left">
        <h3>Buyer Financial Reports <small></small>
        </h3>
    </div>

    <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for..." />
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button">Go!</button>
                </span>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>

<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>
                    <asp:Label ID="LabelNamee" runat="server"></asp:Label>
                    <small></small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

                    <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                </ul>
                <div class="clearfix"></div>
            </div>


            <div class="x_content">
                <!-- content starts here -->


                <div class="inner_padding legal_table">
                    <div class="table-responsive">
                        <table class="table-bordered table-hover table">
                            <tbody>
                                <tr>
                                    <th class="bg-green-light">Client ID</th>
                                    <th>
                                        <asp:Label ID="LabelClientId" runat="server"></asp:Label>
                                    </th>

                                    <th class="bg-green-light">Client Name:</th>
                                    <th>
                                        <asp:Label ID="LabelCName" runat="server"></asp:Label>
                                    </th>

                                </tr>
                                <tr>
                                    <td class="bg-green-light">Debt Id</td>
                                    <td>
                                        <asp:Label ID="LabelDebtId" runat="server"></asp:Label>
                                    </td>

                                    <td class="bg-green-light">Name of the Buyer</td>
                                    <td>
                                        <asp:Label ID="LabelBName" runat="server"></asp:Label>
                                    </td>

                                </tr>

                                <tr>
                                    <td class="bg-green-light">Country</td>
                                    <td>
                                        <asp:Label ID="LabelCountry" runat="server"></asp:Label>
                                    </td>

                                    <td class="bg-green-light">State</td>
                                    <td>
                                        <asp:Label ID="LabelState" runat="server"></asp:Label>
                                    </td>

                                </tr>

                                <tr>
                                    <td class="bg-green-light">City </td>
                                    <td>
                                        <asp:Label ID="LabelCity" runat="server"></asp:Label>
                                    </td>
                                    <td class="bg-green-light">Address</td>
                                    <td>
                                        <asp:Label ID="LabelAddress" runat="server"></asp:Label>
                                    </td>

                                </tr>

                                <tr>
                                    <td class="bg-green-light">Description </td>
                                    <td>
                                        <asp:Label ID="LabelDescription" runat="server"></asp:Label>
                                    </td>
                                    <td class="bg-green-light">Value of the Consignment<</td>
                                    <td>
                                        <asp:Label ID="LabelConsig" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>


<td class="bg-green-light">Terms of Delivery </td>
<td><asp:Label ID="LabelDelivery" runat="server" ></asp:Label>
</td>
<td class="bg-green-light">Terms of Payment</td>
<td><asp:Label ID="LabelPayment" runat="server" ></asp:Label>
</td>
</tr>

  <tr>


<td class="bg-green-light">Delivery Done On</td>
<td><asp:Label ID="LabelDeliveryDone" runat="server" ></asp:Label>
</td>
<td class="bg-green-light">Payment Due Date</td>
<td><asp:Label ID="LabelPaymentDue" runat="server" ></asp:Label>
</td>
</tr>

     <tr>
<td class="bg-green-light">Remarks</td>
<td><asp:Label ID="LabelRemarks" runat="server" ></asp:Label>
</td>
<td class="bg-green-light"></td>
<td>
</td>
</tr>


                                <tr>
                                    <td class="bg-green-light">Status</td>
                                    <td>
                                        <asp:Label ID="LabelSatus" CssClass="btn btn-info btn-xs" runat="server"></asp:Label>
                                        <asp:LinkButton runat="server" ID="edit" Text="<i class='fa fa-pencil'></i> Edit" 
                                            CssClass="btn btn-dark btn-xs" OnClick="edit_Click" />
                                        <asp:DropDownList ID="DropDownStatus" runat="server" Visible="false" class="form-control register-input">
                                            <asp:ListItem>Pending</asp:ListItem>
                                            <asp:ListItem>Approved</asp:ListItem>
                                            <asp:ListItem>Rejected</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>

                                    <td class="bg-green-light">AttachmentPath</td>
                                    <td>
                                        <div>
                                            <asp:Button ID="ButtonDload" runat="server" Text="Download" CssClass="btn btn-info btn-xs" OnClick="ButtonDload_Click" />
                                            <input type="hidden" value="" />
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
                                    <td class="bg-green-light"></td>
                                    <td></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <div style="text-align: center;">
                        <asp:Button ID="Update" CssClass="btn btn-sm btn-primary" runat="server" Text="Update" OnClick="Update_Click" Enabled="False" />
                        <a href="Dashboard.aspx" class="btn btn-sm btn-primary">Back </a>
                        <br />
                    </div>

                </div>

                <!-- content ends here -->
            </div>
        </div>
    </div>
</div>

</div>



</asp:Content>

