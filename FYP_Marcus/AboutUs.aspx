<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="FYP_Marcus.AboutUs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header">
        <div class="container">
            <h1 class="heading">About</h1>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active"><a href="#">About</a></li>
            </ul>
        </div>
    </section>
    <section class="container mt-80">
        <div class="row">
            <div class="col-lg-8 mt-20">
                <h2 class="heading">An <span class="text-primary">Introduction</span></h2>
                <p class="lead">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.</p>
                <p class="text-justify">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
                <p class="text-justify nom">Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>
            </div>
            <div class="col-lg-4 mt-20">
                <aside class="applynow-widget">
                    <img src="images/applynow.png" class="img-fluid center-block" alt="">
                    <div class="apply-info text-center">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <p class="font20">Admissions are open!</p>
                        <a href="admission-form.html" class="btn btn-primary">Apply Now</a>
                    </div>
                </aside>
            </div>
        </div>
    </section>
    <section class="container mt-100">
        <div class="row">
            <div class="col-lg-4">
                <div class="icon-box-3">
                    <!-- ***** Icon Box Style 3 ***** -->
                    <div class="icon-box-icon">
                        <i class="fa fa-bullseye" aria-hidden="true"></i>
                    </div>
                    <div class="icon-box-content">
                        <h5 class="heading">Our Mission</h5>
                        <span class="text-white">We believe in working towards the common goal.</span>
                        <br>
                        <br>
                        <a href="history.html">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="icon-box-3">
                    <!-- ***** Icon Box Style 3 ***** -->
                    <div class="icon-box-icon">
                        <i class="fa fa-crosshairs" aria-hidden="true"></i>
                    </div>
                    <div class="icon-box-content">
                        <h5 class="heading">Our Vision</h5>
                        <span class="text-white">We believe in working towards the common goal.</span>
                        <br>
                        <br>
                        <a href="history.html">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="icon-box-3">
                    <!-- ***** Icon Box Style 3 ***** -->
                    <div class="icon-box-icon">
                        <i class="fa fa-book" aria-hidden="true"></i>
                    </div>
                    <div class="icon-box-content">
                        <h5 class="heading">Our Values</h5>
                        <span class="text-white">We believe in working towards the common goal.</span>
                        <br>
                        <br>
                        <a href="history.html">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="bg-light pt-100 pb-100 mt-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="logo-scroll owl-carousel">
                        <img src="images/logo/APU-Malaysia-thegem-blog-justified.jpg" alt="">
                        <img src="images/logo/security.png" alt="">
                        <img src="images/logo/Staffordshire University.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
