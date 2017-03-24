<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="export.Admin.table" %>
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
					
					<table id="studentTable" width="100%" align="center" cellpadding="2" cellspacing="2" border="0" bgcolor="#EAEAEA" >  
                    <tr align="left" style="background-color:#004080;color:White;" >  
                        <td>Name </td>  
                        <td>EmailAddress</td>  
                        <td>Role</td>  
                    </tr><%=getStudentData()%>  
                </table> 

                  </div>
                </div>
              </div>
            

        </div>
		
		
		
		</div>
        <!-- /page content -->

</asp:Content>

