<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="export.editprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
<div class="form-group col-sm-6">
    <lable>Name</lable>
        <asp:TextBox ID="TextBoxCname" class="form-control register-input" placeholder="Name" required="required" runat="server"></asp:TextBox>
    
  </div>
   <div class="form-group col-sm-6">
    <lable>Email ID</lable>
      <asp:TextBox ID="TextBoxEmail" class="form-control register-input" placeholder="Email ID" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail"
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" ToolTip="Enter Valid Email"
                                                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>





       <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
   </div>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Fields>
        </asp:DetailsView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [Name], [Email] FROM [tblClientRegistration] WHERE ([ClientId] = @ClientId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="CL/8961969" Name="ClientId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    


</asp:Content>

