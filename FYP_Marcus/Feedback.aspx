<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="FYP_Marcus.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header">
        <div class="container">
            <h1 class="heading">Contact</h1>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active"><a href="#">Contact</a></li>
            </ul>
        </div>
    </section>

    <section class="container mt-80">
        <div class="row">
            <div class="col-lg-5 mt-20">
                <h3 class="heading">Contact <span class="text-primary">Us</span></h3>
                <p>Not sure where to start? Visit our <a href="faq.html">help center</a> to get answers to your queries.</p>
                <br>
                <div class="bg-light p-20">
                    <h5 class="heading">Headquarters</h5>
                    <address class="nom">
                        <span>APU, Wilayah Persekutuan,<br>
                            Near KLCC,<br>
                            Malaysia</span>
                    </address>
                </div>
                <br>
                <div class="bg-light p-20">
                    <h5 class="heading">Contacts</h5>
                    <p class="nom">Call us : +601889387498</p>
                    <p class="nom">Email us : marcussimj@gmail.com</p>
                </div>
                <br>
                <div class="bg-light p-20">
                    <h5 class="heading">Social Connect</h5>
                    <ul class="social nom">
                        <li><a href="#"><i class=" fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class=" fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class=" fa fa-pinterest-p"></i></a></li>
                        <li><a href="#"><i class=" fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class=" fa fa-reddit-alien"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-7 mt-20">
                <h3 class="heading">Or Drop us a <span class="text-primary">line</span></h3>
                <form id="main-contact-form" method="post" action="Feedback.aspx?feedback=true">
                    <div class="form-group">
                        <label for="contact-email">Email *</label>
                        <input id="contact-email" type="text" class="form-control" name="email">
                    </div>
                    <div class="form-group">
                        <label for="contact-number">Subject *</label>
                        <input id="contact-number" type="text" class="form-control" name="subject">
                    </div>
                    <div class="form-group">
                        <label for="contact-message">Your Message</label>
                        <textarea id="contact-message" class="form-control" rows="6" name="message"></textarea>
                    </div>
                    <p id="status"></p>
                    <button type="submit" name="submit" class="btn btn-primary">Send Query</button>
                </form>
            </div>
        </div>
    </section>

    <div class="container mt-100 mb-100">
        <div class="row">
            <div class="col-lg-12">
                <!-- Replace Latitude, Logitude and Info Window as per your place -->
                <div class="gmap" id="gmap" style="height: 550px" data-lat="51.508103" data-long="-0.074911" data-info-win="<h5 class='bold'>Marcus Place</h5><p>APU,<br>Wilayah Persekutuan, <br>Kuala Lumpur a.k.a UK Oldz</p>">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
