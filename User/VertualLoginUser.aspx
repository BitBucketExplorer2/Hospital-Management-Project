<%@ Page Title="" Language="C#" MasterPageFile="~/User/AdminZomeCommanPage.Master" AutoEventWireup="true" CodeBehind="VertualLoginUser.aspx.cs" Inherits="BTPS_Project.User.VertualLoginUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
        Vertual Login PAge
        </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div id="layoutAuthentication">
            <div id="layoutAuthentication_content" class="bg-info">
                <main>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                </div>
                            <div class="col-sm-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <div>
                                            <div class="form-floating mb-3">
                                                <%--<input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />--%>

                                                  <asp:TextBox class="form-control" ID="inputEmail" runat="server"  placeholder="name@example.com" TextMode="Email"></asp:TextBox>
                                                <label for="inputEmail">Email address</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <%--<input class="form-control" id="inputPassword" type="password" placeholder="Password" />--%>
                                                      <asp:TextBox class="form-control" ID="inputPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <div class="form-check mb-3">
             <input class="form-check-input" id="inputRememberPassword" type="checkbox" onchange="document.getElementById('inputPassword').type = this.checked ? 'text' : 'password' " />
                                                <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                              
                                                <%--<a class="small" href="password.html">Forgot Password?</a>--%>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="ResetPassword.aspx">Forgot Password </asp:HyperLink>



                                                <%--<a class="btn btn-primary" href="index.html">Login</a>--%>
                                                          <asp:LinkButton class="btn btn-outline-success" ID="login_btn1" runat="server" OnClick="login_btn1_Click">Login</asp:LinkButton>


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
                        </div>
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
