<%@ Page Title="" Language="C#" MasterPageFile="~/User/AdminZomeCommanPage.Master" AutoEventWireup="true" CodeBehind="PatientAppointMent.aspx.cs" Inherits="BTPS_Project.User.PatientAppointMent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Patient Appointment
    </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content" class="bg-info">
            <main>
                <div class="container ">

                    <%--justify-content-center--%>

                    <div class="row ">
                        <div class="col-sm-3">
                        </div>
                        <div class="col-sm-8">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">A New Patient Appointment</h3>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <%--<input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" />--%>
                                                    <asp:TextBox class="form-control" ID="inputFirstName" runat="server" placeholder="Enter your first name"></asp:TextBox>
                                                    <label for="inputFirstName">First name</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <%--<input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" />--%>
                                                    <asp:TextBox class="form-control" ID="inputLastName" runat="server" placeholder="Enter your last name"></asp:TextBox>


                                                    <label for="inputLastName">Last name</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <%--<input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" />--%>
                                                    <asp:TextBox class="form-control" ID="inputEmail" runat="server" placeholder="name@example.com" TextMode="Email"></asp:TextBox>

                                                    <label for="inputEmail">Email Address</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <%--<input class="form-control" id="inputContact" type="text" placeholder="Enter your last name" />--%>
                                                    <asp:TextBox class="form-control" ID="inputContact" runat="server" placeholder="Enter Phone" TextMode="Phone"></asp:TextBox>

                                                    <label for="inputContact">Contact</label>
                                                </div>
                                            </div>
                                        </div>

                                        <%-- <div class="form-floating mb-3">
                                            <input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />
                                            <label for="inputEmail">Email address</label>
                                        </div>--%>




                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <%--<input class="form-control" id="inputAge" type="password" placeholder="Create a password" />--%>
                                                    <asp:TextBox class="form-control" ID="inputAge" runat="server" placeholder="Enter Age"></asp:TextBox>

                                                    <label for="inputAge">Age</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">

                                                    <%--<input class="form-control" id="inputPasswordConfirm" type="password" placeholder="Confirm password" />--%>
                                                    <asp:DropDownList class="form-control" ID="Gender" runat="server">
                                                        <asp:ListItem>Male</asp:ListItem>
                                                        <asp:ListItem>Female</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <label for="Gender">Gender</label>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <%--<input class="form-control" id="inputPassword" type="password" placeholder="Create a password" />--%>
                                                    <asp:DropDownList class="form-control" ID="disiese" runat="server">
                                                        <asp:ListItem>--select--</asp:ListItem>
                                                        <asp:ListItem>Respiratory illness</asp:ListItem>
                                                        <asp:ListItem>COPD</asp:ListItem>
                                                        <asp:ListItem>Cancers</asp:ListItem>
                                                        <asp:ListItem>Diabetes</asp:ListItem>
                                                        <asp:ListItem>Alzheimer's disease</asp:ListItem>
                                                        <asp:ListItem>Diarrhea</asp:ListItem>
                                                        <asp:ListItem>TB</asp:ListItem>
                                                        <asp:ListItem>Cirrhosis</asp:ListItem>
                                                        <asp:ListItem>Cardiovascular</asp:ListItem>
                                                        <asp:ListItem>Malaria</asp:ListItem>
                                                        <asp:ListItem>Diarrheal</asp:ListItem>
                                                        <asp:ListItem> Malignant and Other Tumours</asp:ListItem>

                                                    </asp:DropDownList>
                                                    <label for="disiese">Disiese</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <%--<input class="form-control" id="inputPasswordConfirm" type="password" placeholder="Confirm password" />--%>
                                                    <asp:DropDownList class="form-control" ID="cityName" runat="server">
                                                        <asp:ListItem>Alahabad</asp:ListItem>
                                                        <asp:ListItem>Vanaras</asp:ListItem>
                                                        <asp:ListItem>Sonbhadra</asp:ListItem>
                                                        <asp:ListItem>Bahraich</asp:ListItem>
                                                        <asp:ListItem>Noida</asp:ListItem>
                                                        <asp:ListItem>Kanpur</asp:ListItem>
                                                        <asp:ListItem>Lucknow</asp:ListItem>
                                                        <asp:ListItem>Agra</asp:ListItem>
                                                        <asp:ListItem>Delhi</asp:ListItem>
                                                        <asp:ListItem>Meja</asp:ListItem>
                                                        <asp:ListItem>Bihar</asp:ListItem>
                                                        <asp:ListItem>Jounpur</asp:ListItem>
                                                        <asp:ListItem>Moradabad</asp:ListItem>
                                                    </asp:DropDownList>

                                                    <label for="cityName">City</label>
                                                </div>
                                            </div>
                                        </div>






                                        <div class="mt-4 mb-0">
                                            <div class="d-grid">
                                                <%--<a class="btn btn-outline-success btn-block fw-bold " href="login.html">Confirm Your Appointment</a>--%>

                                                <asp:LinkButton class="btn btn-outline-success btn-block fw-bold " ID="Appointmentbtn" runat="server" OnClick="Appointmentbtn_Click">Confirm Your Appointment</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="small"><a href="login.html">Check Your Privious , Appointment History</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-1">
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
