<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTPS_Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
        Login Page
        </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
        <div class="col-sm-3">
            </div>
        <div class="col-sm-6">
             <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Login Here..</h1>

      <%--<form class="contact-form mt-5">--%>
        <div class="row mb-3">
          <div class="col-12 py-2 wow fadeInLeft">
            <label for="regNumber">Registration number</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Reg Number.." ControlToValidate="regNumber" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

              <asp:TextBox ID="regNumber" runat="server" class="form-control" placeholder="Registration Number.."></asp:TextBox>
            <%--<input type="text" id="fullName" class="form-control" placeholder="Full name..">--%>
          </div>
          <div class="col-12 py-2 wow fadeInRight">
            <label for="emailAddress">Email</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email.." ControlToValidate="emailAddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

              <asp:TextBox ID="emailAddress" runat="server" class="form-control" placeholder="Email Address.."></asp:TextBox>

              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="emailAddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

              <%--<input type="text" id="emailAddress" class="form-control" placeholder="Email address..">--%>
          </div>


            <div class="col-12 py-2 wow fadeInUp">
            <label for="password">Password</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password.." ControlToValidate="password" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                
              <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
               </div>


          

            

          
         

            <div class="col-12 py-2 wow fadeInUp">
            <%--<label for="message">Address</label>--%>

                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
        </div>
        <%--<button type="submit" class="btn btn-primary wow zoomIn">Send Message</button>--%>
        <asp:Button ID="Login_Data" runat="server" Text="Login" class="btn btn-primary wow zoomIn" OnClick="Login_Data_Click" />
      <%--</form>--%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
  </div>
            </div>
        <div class="col-sm-3">
            </div>
        </div>




     </div>


</asp:Content>
