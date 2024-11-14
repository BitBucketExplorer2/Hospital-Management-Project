<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BTPS_Project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-sm-3">
            </div>
        <div class="col-sm-6">
             <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Contact Us</h1>

      <%--<form class="contact-form mt-5">--%>
        <div class="row mb-3">
          <div class="col-sm-6 py-2 wow fadeInLeft">
            <label for="fullName">Name</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name.." ControlToValidate="fullName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

              <asp:TextBox ID="fullName" runat="server" class="form-control" placeholder="Full name.."></asp:TextBox>
            <%--<input type="text" id="fullName" class="form-control" placeholder="Full name..">--%>
          </div>
          <div class="col-sm-6 py-2 wow fadeInRight">
            <label for="emailAddress">Email</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email.." ControlToValidate="emailAddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

              <asp:TextBox ID="emailAddress" runat="server" class="form-control" placeholder="Email Address.."></asp:TextBox>

              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="emailAddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

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
            <label for="subject">Subject</label>
              <%--<asp:TextBox ID="subject" runat="server" class="form-control" placeholder="Enter subject.."></asp:TextBox>--%>
            <%--<input type="text" id="subject" class="form-control" placeholder="Enter subject..">--%>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Send Message.." ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue="--Select--">*</asp:RequiredFieldValidator>

              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                  <asp:ListItem>--Select--</asp:ListItem>
                  <asp:ListItem>FeedBack</asp:ListItem>
                  <asp:ListItem>Appointment</asp:ListItem>
                  <asp:ListItem>Book Slot</asp:ListItem>
                  <asp:ListItem>Suggestion</asp:ListItem>
              </asp:DropDownList>

          </div>
          <div class="col-12 py-2 wow fadeInUp">
            <label for="message">Message</label>

              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Type Message.." ControlToValidate="message" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
              
              <asp:TextBox ID="message" runat="server" class="form-control" placeholder="Enter Massage.." TextMode="MultiLine"></asp:TextBox>
            <%--<textarea id="message" class="form-control" rows="8" placeholder="Enter Message.."></textarea>--%>
          </div>
        </div>
        <%--<button type="submit" class="btn btn-primary wow zoomIn">Send Message</button>--%>
        <asp:Button ID="submit" runat="server" Text="Send Message" class="btn btn-primary wow zoomIn" OnClick="Button1_Click" />
      <%--</form>--%>
    </div>
  </div>
            </div>
        <div class="col-sm-3">
            </div>
        </div>

</asp:Content>
