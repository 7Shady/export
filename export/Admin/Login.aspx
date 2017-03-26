<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="export.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <!-- page content -->
        <div class="right_col" role="main">
        
        <div>
 <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                 
                  <div>
                   
                    <section>
        
            <h1>Login Form</h1>
            <div>
                <asp:TextBox ID="TextBoxUser" name="User Name" class="form-control existing-form" required="required" placeholder="Username" runat="server"></asp:TextBox>
              <br />
            </div>
            <div>
                <asp:TextBox ID="TextBoxPass" class="form-control existing-form" placeholder="Password" required="required" runat="server" TextMode="Password"></asp:TextBox>
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
            <div><br />
                <asp:CheckBox ID="CheckBoxPersist" runat="server" Text="Remember Me" /><br />
                <asp:Button ID="submit" runat="server" Text="Log In" value="Login" class="btn btn-default submit" OnClick="submit_Click" />
              
              <a class="reset_pass" href="#">Lost your password?</a>
            </div>
            <div class="clearfix"></div>
            <div class="separator">

              <p class="change_link">New to site?
                <a href="#toregister" class="to_register"> Create Account </a>
              </p>
              <div class="clearfix"></div>
              <br />
              <div>
                
              </div>
            </div>
         
        </section>
        
					
					
                  </div>
                </div>
              </div>
            

        </div>
		
		
		
		</div>
        <!-- /page content -->
</asp:Content>

