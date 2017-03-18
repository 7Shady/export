<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="export.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ShowpImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) { $('#ctl00_ContentPlaceHolder2_previewImage').attr('src', e.target.result); }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <div id="wrapper">
        <div class="registration">
            <!---service-->
            <section id="service">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-10 col-sm-offset-1">
                            <div class="sure_register">
                                <div class="col-sm-4 register_profile">
                                    <div class="profile_service">
                                        <asp:Image ID="previewImage" runat="server" Width="125" Height="125" ImageUrl="~/images/adduser.png" />
                                        <span class="btn btn-file profile_picture">
                                            <span class="profile">upload your profile picture</span>
                                            <input type="hidden" />
                                            <asp:FileUpload ID="UpClientImg" runat="server" accept='image/*' onchange="ShowpImagePreview(this);" />
                                            <asp:RegularExpressionValidator ID="ValidImage" runat="server" Text="(Upload .jpg/.png/.gif) file only"
                                                ToolTip="(Upload .jpg/.png/.gif) file only" ControlToValidate="UpClientImg" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.gif|.GIF)\b"
                                                ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-1"></div>
                                <div class="col-sm-7 service_login">
                                    <div class="register_form">
                                        <div id="testform">
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Name</label>
                                                    <asp:TextBox ID="TextBoxCname" class="form-control register-input" placeholder="Name" ValidationGroup="EditProfile" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>Name of the Company</label>
                                                    <asp:TextBox ID="TextBoxCom" class="form-control register-input" placeholder="Name of the Company" ValidationGroup="EditProfile" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Country of Incorporation</label>
                                                    <asp:TextBox ID="TextBoxCin" class="form-control register-input" placeholder="Country of Incorporation" ValidationGroup="EditProfile" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>Company Type</label>
                                                    <asp:DropDownList ID="DropDownCompany" runat="server" class="form-control register-input">
                                                        <asp:ListItem>-- Select Company Type --</asp:ListItem>
                                                        <asp:ListItem>Company Type 2</asp:ListItem>
                                                        <asp:ListItem>Company Type 3</asp:ListItem>
                                                        <asp:ListItem>Company Type 3</asp:ListItem>
                                                        <asp:ListItem>Company Type 4</asp:ListItem>
                                                        <asp:ListItem>Company Type 5</asp:ListItem>
                                                    </asp:DropDownList><asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownCompany"
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" Operator="NotEqual" ValueToCompare="< Select >"
                                                        Type="String" ToolTip="Select from list"></asp:CompareValidator>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Industry</label>
                                                    <asp:DropDownList ID="DropDownIndustry" runat="server" class="form-control register-input">
                                                        <asp:ListItem>-- Select Industry --</asp:ListItem>
                                                        <asp:ListItem>Industry 1</asp:ListItem>
                                                        <asp:ListItem>Industry 2</asp:ListItem>
                                                        <asp:ListItem>Industry 3</asp:ListItem>
                                                        <asp:ListItem>Industry 4</asp:ListItem>
                                                        <asp:ListItem>Industry 5</asp:ListItem>
                                                    </asp:DropDownList><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownIndustry"
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" Operator="NotEqual" ValueToCompare="< Select >"
                                                        Type="String" ToolTip="Select from list"></asp:CompareValidator>
                                                </div>
                                                <div class="form-group col-sm-6">
                                                    <label>Address</label>
                                                    <asp:TextBox ID="TextBoxAddress" class="form-control register-input" placeholder="Address" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Country</label>
                                                    <asp:DropDownList ID="DropDownCountry" runat="server" class="form-control register-input">
                                                        <asp:ListItem>-- Select Country --</asp:ListItem>
                                                        <asp:ListItem>Country 1</asp:ListItem>
                                                        <asp:ListItem>Country 2</asp:ListItem>
                                                        <asp:ListItem>Country 3</asp:ListItem>
                                                        <asp:ListItem>Country 4</asp:ListItem>
                                                        <asp:ListItem>Country 5</asp:ListItem>
                                                    </asp:DropDownList><asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DropDownCountry"
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" Operator="NotEqual" ValueToCompare="< Select >"
                                                        Type="String" ToolTip="Select from list"></asp:CompareValidator>
                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>City </label>
                                                    <asp:DropDownList ID="DropDownCity" runat="server" class="form-control register-input">
                                                        <asp:ListItem>-- Select Country --</asp:ListItem>
                                                        <asp:ListItem>City 1</asp:ListItem>
                                                        <asp:ListItem>City 2</asp:ListItem>
                                                        <asp:ListItem>City 3</asp:ListItem>
                                                        <asp:ListItem>City 4</asp:ListItem>
                                                        <asp:ListItem>City 5</asp:ListItem>
                                                    </asp:DropDownList><asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="DropDownCity"
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" Operator="NotEqual" ValueToCompare="< Select >"
                                                        Type="String" ToolTip="Select from list"></asp:CompareValidator>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Zip Code</label>
                                                    <asp:TextBox ID="TextBoxZipCode" class="form-control register-input" placeholder="Zip Code" runat="server" MaxLength="6"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxZipCode"
                                                        ErrorMessage="*" ForeColor="Red" ToolTip="Number Only" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>Website</label>
                                                    <asp:TextBox ID="TextBoxWeb" class="form-control register-input" placeholder="Website" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Contact Number</label>
                                                    <asp:TextBox ID="TextBoxMob" ValidationGroup="EditProfile" class="form-control register-input" placeholder="Contact Number" runat="server" MaxLength="10"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxMob"
                                                        ErrorMessage="*" ForeColor="Red" ToolTip="Number Only" ValidationExpression="\d+"></asp:RegularExpressionValidator>


                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>Email ID</label>
                                                    <asp:TextBox ID="TextBoxEmail" class="form-control register-input" placeholder="Email ID" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail"
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" ToolTip="Enter Valid Email"
                                                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Designation</label>
                                                    <asp:TextBox ID="TextBoxDesig" class="form-control register-input" placeholder="Designation" runat="server"></asp:TextBox>

                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>Countries of Operation</label>
                                                    <asp:TextBox ID="TextBoxoper" class="form-control register-input" placeholder="Countries of Operation" runat="server"></asp:TextBox>

                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-6">
                                                    <label>Business Turnover (In Number USD)</label>
                                                    <asp:TextBox ID="TextBoxturn" ValidationGroup="EditProfile" class="form-control register-input" placeholder="Business Turnover (In Number USD)" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxMob"
                                                        ErrorMessage="*" ForeColor="Red" ToolTip="Number Only" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>Brief Description of Operations</label>
                                                    <asp:TextBox ID="TextBoxBrief" class="form-control register-input" placeholder="Brief Description of Operations" runat="server"></asp:TextBox>

                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="form-group col-sm-6">
                                                    <label>Number of Employees</label>
                                                    <asp:TextBox ID="TextBoxEmp" class="form-control register-input" placeholder="Number of Employees" runat="server"></asp:TextBox>

                                                </div>

                                                <div class="form-group col-sm-6">
                                                    <label>Attach profile&nbsp;</label><asp:Button ID="ButtonDownload" runat="server" Text="Download" OnClick="ButtonDownload_Click" CssClass="btn-file" />

                                                    <div class="row">
                                                        <div class="col-sm-14 pan_input">
                                                            <i class="fa fa-paperclip" aria-hidden="true"></i>
                                                            <asp:FileUpload ID="uploadFile" CssClass="form-control register-input" runat="server" placeholder="Choose File" />
                                                            <asp:RegularExpressionValidator ID="ValidFile" runat="server" Text="(Upload .xls/.xlsx/.pdf/.doc/.docx) file only"
                                                                ToolTip="(Upload .xls/.xlsx/.pdf/.doc/.docx) file only" ControlToValidate="uploadFile" ValidationExpression="[a-zA-Z0_9].*\b(.xls|.xlsx|.pdf|.doc|.docx)\b"
                                                                ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <asp:Button ID="ButtonSave" runat="server" Text="Save" class="btn btn-primary save" ValidationGroup="EditProfile" OnClick="ButtonSave_Click" />
                                                    <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" class="btn btn-primary save" CausesValidation="False" OnClick="ButtonCancel_Click" />
                                                    <asp:HyperLink ID="HyperLinkDash" CssClass="btn btn-primary save" runat="server" NavigateUrl="~/Default.aspx" ToolTip="Dashboard"><span class="glyphicon glyphicon-arrow-left"></span> Dashboard</asp:HyperLink>
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
            <!---service End-->
        </div>
    </div>
</asp:Content>
