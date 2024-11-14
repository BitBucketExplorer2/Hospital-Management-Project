<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BTPS_Project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
        Registration
        </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="row">
        <div class="col-sm-3">
            </div>
        <div class="col-sm-6">
             <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Register Here..</h1>

      <%--<form class="contact-form mt-5">--%>
        <div class="row mb-3">
          <div class="col-12 py-2 wow fadeInLeft">
            <label for="fullName">Name</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name.." ControlToValidate="fullName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

              <asp:TextBox ID="fullName" runat="server" class="form-control" placeholder="Full name.."></asp:TextBox>
            <%--<input type="text" id="fullName" class="form-control" placeholder="Full name..">--%>
          </div>
          <div class="col-12 py-2 wow fadeInRight">
            <label for="emailAddress">Email</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email.." ControlToValidate="emailAddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

              <asp:TextBox ID="emailAddress" runat="server" class="form-control" placeholder="Email Address.." TextMode="Email"></asp:TextBox>

              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="emailAddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

              <%--<input type="text" id="emailAddress" class="form-control" placeholder="Email address..">--%>
          </div>



                      <div class="col-12 py-2 wow fadeInRight">
            <label for="Password1">Password</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Email.." ControlToValidate="Password1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

              <asp:TextBox ID="Password1" runat="server" class="form-control" placeholder="Enter Password.." TextMode="Password"></asp:TextBox>
             
                          <%-- <input type="checkbox" onchange="document.getElementById('Password1').type =
 this.checked ? 'text' : 'password' "/>Show Password--%>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Password" ControlToValidate="Password1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>

              <%--<input type="text" id="emailAddress" class="form-control" placeholder="Email address..">--%>
          </div>






            <div class="col-12 py-2 wow fadeInUp">
            <label for="contact">Contact</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Phone.." ControlToValidate="contact" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                
              <asp:TextBox ID="contact" runat="server" class="form-control" placeholder="Enter Contact" TextMode="Phone"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Contact" ControlToValidate="contact" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                <%--<input type="text" id="subject" class="form-control" placeholder="Enter subject..">--%>
          </div>


            <div class="col-12 py-2 wow fadeInUp">
            <label for="contact">Age</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Age.." ControlToValidate="age" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                
              <asp:TextBox ID="age" runat="server" class="form-control" placeholder="Enter Age" TextMode="Phone"></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Contact" ControlToValidate="contact" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>--%>
                <%--<input type="text" id="subject" class="form-control" placeholder="Enter subject..">--%>
          </div>

            <div class="col-12 py-2 wow fadeInUp">
            <label for="contact">Gender</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select Gender.." ControlToValidate="DropDownList2" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"  InitialValue="--Select Gender--">*</asp:RequiredFieldValidator>

               <%-- <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>

                </asp:RadioButtonList>--%>


                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                  <asp:ListItem>--Select Gender--</asp:ListItem>
                  <asp:ListItem>Male</asp:ListItem>
                  <asp:ListItem>Female</asp:ListItem>
                  <asp:ListItem>Other</asp:ListItem>
                 
              </asp:DropDownList>


              <%--<asp:TextBox ID="gender" runat="server" class="form-control" placeholder="Enter Contact" TextMode="Phone"></asp:TextBox>--%>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Contact" ControlToValidate="contact" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>--%>
                <%--<input type="text" id="subject" class="form-control" placeholder="Enter subject..">--%>
          </div>

          <div class="col-12 py-2 wow fadeInUp">
            <label for="subject">City</label>
              <%--<asp:TextBox ID="subject" runat="server" class="form-control" placeholder="Enter subject.."></asp:TextBox>--%>
            <%--<input type="text" id="subject" class="form-control" placeholder="Enter subject..">--%>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Send Message.." ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue="--Select City--">*</asp:RequiredFieldValidator>

              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                  <asp:ListItem>--Select City--</asp:ListItem>
                  <asp:ListItem>Kanpur</asp:ListItem>
                  <asp:ListItem>Lucknow</asp:ListItem>
                  <asp:ListItem>Alahabad</asp:ListItem>
                  <asp:ListItem>Meja</asp:ListItem>
                  <asp:ListItem>Banaras</asp:ListItem>
                  <asp:ListItem>Bahraich</asp:ListItem>
                  <asp:ListItem>Delhi</asp:ListItem>
                  <asp:ListItem>Noida</asp:ListItem>
                  <asp:ListItem>Sonbhadra</asp:ListItem>
                  <asp:ListItem>Jounpur</asp:ListItem>
                  <asp:ListItem>Bihar</asp:ListItem>
              </asp:DropDownList>

          </div>
          <div class="col-12 py-2 wow fadeInUp">
            <label for="message">Address</label>

              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Type Message.." ControlToValidate="address" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
              
              <asp:TextBox ID="address" runat="server" class="form-control" placeholder="Enter Address.." TextMode="MultiLine"></asp:TextBox>
            <%--<textarea id="message" class="form-control" rows="8" placeholder="Enter Message.."></textarea>--%>
          </div>


            <div class="col-12 py-2 wow fadeInUp">
            <%--<label for="message">Address</label>--%>

                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
        </div>
        <%--<button type="submit" class="btn btn-primary wow zoomIn">Send Message</button>--%>
        <asp:Button ID="register" runat="server" Text="Register" class="btn btn-primary wow zoomIn" OnClick="register_Click"/>
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
