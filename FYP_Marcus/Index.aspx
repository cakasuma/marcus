<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FYP_Marcus.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container mt-100">
        <div class="row">
            <div class="col-lg-7">
                <h2 class="heading">An <span class="text-primary">Introduction</span></h2>
                <p>
                    Security Education is a web application to fulfill APU Final Year Project in Asia Pacific University. developed by me Marcus Sim Ming Jia, will bring you to the next level of user experience. Learn Security to your utmost heart content here.
                </p>
                <p>
                    We provide several courses in security field, and we brings gamification as an environment for easiness and effectiveness in learning the materials. videos on the side will show you what is security.
                </p>
            </div>
            <div class="col-lg-5">
                <div class="youtube" style="height: 310px" data-video-id="hiC-Kttrasc">
                    <!-- Replace video id with your video id -->
                    <div class="btn-play">
                        <i class="fa fa-youtube-play"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="mt-20">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="facts">
                        <div class="row">
                            <div class="fact col-lg-4">
                                <span class="head">
                                    <span class="count" data-from="0" data-to="5" data-speed="3000"></span>Courses
                                </span>
                                <span class="foot">Up to 5 courses!. Offering world class education</span>
                            </div>
                            <div class="fact col-lg-4">
                                <span class="head">
                                    <span class="count" data-from="0" data-to="<%=FYP_Marcus.connectdata.getAllVideos() %>" data-speed="3000"></span>Videos
                                </span>
                                <span class="foot">Average videos in courses. Make sure you keep up to date to the latest security</span>
                            </div>
                            <div class="fact col-lg-4">
                                <span class="head">
                                    <span class="count" data-from="0" data-to="1" data-speed="3000"></span>Teacher
                                </span>
                                <span class="foot">Best <i>"1"</i> in the world. The creator of this application</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="process-1 mt-100 pt-80 pb-80 parallax" style="background-image: url('images/bg-2.jpg');" data-speed="4">
        <div class="container">
            <h2 class="heading text-white text-center">Our <span class="text-primary">Impact</span></h2>
            <div class="row">
                <div class="col-lg-3 process-box">
                    <div class="process-round">
                        <span class="number">01.</span>
                        <p>Secure your Life!!!!</p>
                    </div>
                </div>
                <div class="col-lg-3 process-box">
                    <div class="process-round">
                        <span class="number">02.</span>
                        <p>Wide variety of courses for everybody to choose from.</p>
                    </div>
                </div>
                <div class="col-lg-3 process-box">
                    <div class="process-round">
                        <span class="number">03.</span>
                        <p>Become anonymous!.</p>
                    </div>
                </div>
                <div class="col-lg-3 process-box">
                    <div class="process-round">
                        <span class="number">04.</span>
                        <p>Doorstep to become pro.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-light pt-100 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="heading text-center">Popular <span class="text-primary">Courses</span></h2>
                </div>
                <div class="col-lg-4">
                    <div class="card course-card new">
                        <div class="course-head">
                            <img src="images/course-grid-1.jpg" class="img-fluid course-img" alt="">
                            <a href="course-detail.html" class="course-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                        </div>
                        <div class="course-detail">
                            <h4 class="heading">Sample Material</h4>
                            <span class="brief">In this course, you learn all advanced techniques and methodologies.</span>
                            <ul class="course-features">
                                <li><i class="fa fa-map-marker"></i> Place</li>
                                <li><i class="fa fa-clock-o"></i> x year</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card course-card new">
                        <div class="course-head">
                            <img src="images/course-grid-1.jpg" class="img-fluid course-img" alt="">
                            <a href="course-detail.html" class="course-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                        </div>
                        <div class="course-detail">
                            <h4 class="heading">Sample Material</h4>
                            <span class="brief">In this course, you learn all advanced techniques and methodologies.</span>
                            <ul class="course-features">
                                <li><i class="fa fa-map-marker"></i> Place</li>
                                <li><i class="fa fa-clock-o"></i> x year</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card course-card new">
                        <div class="course-head">
                            <img src="images/course-grid-1.jpg" class="img-fluid course-img" alt="">
                            <a href="course-detail.html" class="course-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                        </div>
                        <div class="course-detail">
                            <h4 class="heading">Sample Material</h4>
                            <span class="brief">In this course, you learn all advanced techniques and methodologies.</span>
                            <ul class="course-features">
                                <li><i class="fa fa-map-marker"></i> Place</li>
                                <li><i class="fa fa-clock-o"></i> x year</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <div class="bg-primary pt-60 pb-60">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <p class="text-white text-center font26 nom font-italic">This is your chance to become secure in this harsh world</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
