<%@ Page Title="" Language="C#" MasterPageFile="~/User/AdminZomeCommanPage.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="BTPS_Project.User.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>
        Reset Password
        </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="layoutAuthentication">
            <div id="layoutAuthentication_content" class="bg-info">
                <main>
                    <div class="container">

         <asp:Panel ID="Panel1" runat="server" Visible="true">
                        <div class="row">

                            <div class="col-sm-4">
                                </div>
                            <div class="col-sm-6">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Password Recovery</h3></div>
                                    <div class="card-body">
                                        <div class="small mb-3">Enter your email address and we will send you a key to reset your password.</div>
                                        <div>
                                          <div class="form-floating mb-3">
                                                <%--<input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />--%>
                                               <asp:TextBox class="form-control" ID="inputEmail" runat="server" placeholder="name@example.com"></asp:TextBox>
                                                <label for="inputEmail">Email address</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Registered Email" ForeColor="Red" ControlToValidate="inputEmail"></asp:RequiredFieldValidator>
                                            </div>

                                            
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <%--<a class="small" href="VertualLoginUser.aspx">Return to login</a>--%>

        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="VertualLoginUser.aspx">Return to login</asp:HyperLink>

                                                <%--<a class="btn btn-primary" href="login.html">Reset Password</a>--%>
                                                 <asp:LinkButton class="btn btn-outline-warning" ID="Resetbtn" runat="server" OnClick="Resetbtn_Click">Reset Password</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small">
                                            <%--<a href="register.html">Need an account? Sign up!</a>--%>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Need an account? Sign up!</asp:HyperLink>

                                        </div>
                                    </div>
                                </div>
                            </div>


                             
                            <div class="col-sm-2">
                                </div>
                        </div>

             </asp:Panel>
                   
                        <asp:Panel ID="Panel2" runat="server" Visible="false">
                     
                             <div class="row">

                            <div class="col-sm-4">
                                </div>
                            <div class="col-sm-6">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Password Recovery</h3></div>
                                    <div class="card-body">
                                        <div>
                                          <div class="form-floating mb-3">
                                                <%--<input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />--%>
                                               <asp:TextBox class="form-control" ID="emailCode" runat="server" placeholder="new password" ></asp:TextBox>
                                                <label for="emailCode">Enter Code Sent To Your Registered Email</label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Code" ForeColor="Red" ControlToValidate="emailCode"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <%--<input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />--%>
                                               <asp:TextBox class="form-control" ID="inputNewPass" runat="server" placeholder="re pass" TextMode="Password"></asp:TextBox>
                                                <label for="inputNewPass">New Password</label>
                                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="inputNewPass" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Strong Password !!" SetFocusOnError="True" ControlToValidate="inputNewPass" Display="Dynamic" ForeColor="Red" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <%--<input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />--%>
                                               <asp:TextBox class="form-control" ID="Re_inputNewPass" runat="server" placeholder="re pass" TextMode="Password"></asp:TextBox>
                                                <label for="Re_inputNewPass">Re-Enter Password</label>
                                                   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Same Password !" ControlToCompare="inputNewPass" ControlToValidate="Re_inputNewPass" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <%--<a class="small" href="VertualLoginUser.aspx">Return to login</a>--%>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="VertualLoginUser.aspx">Return to login</asp:HyperLink>

                                                <%--<a class="btn btn-primary" href="login.html">Reset Password</a>--%>
                                                 <asp:LinkButton class="btn btn-outline-warning" ID="ChangePassbtn" runat="server" OnClick="ChangePassbtn_Click" >Update Password</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small">
                                            <%--<a href="register.html">Need an account? Sign up!</a>--%>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Register.aspx">Need an account? Sign up!</asp:HyperLink>

                                        </div>
                                    </div>
                                </div>
                            </div>


                             
                            <div class="col-sm-2">
                                </div>
                        </div>


             </asp:Panel>


       


                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

</asp:Content>
