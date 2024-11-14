<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BTPS_Project.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>About Us</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">About</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">About Us</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

    <div class="page-section bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-4 py-3 wow zoomIn">
          <div class="card-service">
            <div class="circle-shape bg-secondary text-white">
              <span class="mai-chatbubbles-outline"></span>
            </div>
            <p><span>Chat</span> with a doctors</p>
          </div>
        </div>
        <div class="col-md-4 py-3 wow zoomIn">
          <div class="card-service">
            <div class="circle-shape bg-primary text-white">
              <span class="mai-shield-checkmark"></span>
            </div>
            <p><span>One</span>-Health Protection</p>
          </div>
        </div>
        <div class="col-md-4 py-3 wow zoomIn">
          <div class="card-service">
            <div class="circle-shape bg-accent text-white">
              <span class="mai-basket"></span>
            </div>
            <p><span>One</span>-Health Pharmacy</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="page-section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 wow fadeInUp">
          <h1 class="text-center mb-3" style="color:green;">INTRODUCTION OF ONE HEALTH</h1>
          <div class="text-lg">
            <p>
One Health, is situated in the holy city of Kanpur, in the KakaDev. This hospital began its journey on 23rd March 2021 and within no time it made an impact for itself as proved by an average bed occupancy of 70%. The One Health  has been established by the joint efforts of Doctors of high repute and caliber and men of social standing in the society.
          </div>
        </div>
   
      </div>
    </div>
  </div>
     <div class="page-section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 wow fadeInUp">
          <h1 class="text-center mb-3" style="color:green;">Get Cared For By The Best</h1>
          <div class="text-lg">
            <p>
                One Health is home to some of the most eminent doctors in the world, most of whom are pioneers in their respective arenas and are renowned for developing innovative and revolutionary procedures. Many of our doctors are also ‘Padma Shri’, ‘Padma Bhushan’, ‘Dr B. C. Roy National Award’ and ‘Marquis Who’s Who in the World’ recipients.</p>
               <a href="Doctor.aspx" class="btn btn-primary">Find a Doctor</a>
          </div>
        </div>
   
      </div>
    </div>
  </div>
</asp:Content>
