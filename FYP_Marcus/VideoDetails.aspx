<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="VideoDetails.aspx.cs" Inherits="FYP_Marcus.VideoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        window.onload = function () {
            // your code 
            document.getElementById("butplay").onclick = function () {
                var points = '<%=point%>';
                
                $.ajax({
                    
                    url: "VideoDetails.aspx?videoid=<%=id%>&insertPoints=<%=point%>",
                    success: function (response) {
                        swal("Congratulations!", "You get " + points + " points", "success");
                    },
                    failure: function (response) {
                        swal(response.d);
                    }
                });
                
            }

            //function OnSuccess(response) {
            //    swal(response.d);
            //}
        };

        //$(document).ready(function () {
        //    alert(1);
        //    $('#butplay').on("click", function () {
        //        alert("your points is: 200");
        //    });
        //});
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header">
        <div class="container">
            <h1 class="heading">Video Detail</h1>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active"><a href="#">Video Detail</a></li>
            </ul>
        </div>
    </section>
    <section class="container mt-80">
        <div class="row">
            <div class="col-lg-8 mt-20">
                <div class="youtube" data-video-id="hiC-Kttrasc">
                    <!-- Replace video id with your video id -->
                    <div id="butplay" class="btn-play">
                        <i class="fa fa-youtube-play"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mt-20">
                <div class="event-full">
                    <h2 class="heading">Live Rock Concert</h2>
                    <ul class="social">
                        <li><a href="#"><i class=" fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class=" fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class=" fa fa-pinterest-p"></i></a></li>
                        <li><a href="#"><i class=" fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class=" fa fa-reddit-alien"></i></a></li>
                    </ul>
                    <div class="info">
                        <div>
                            <span>Event Location</span>
                            <br>
                            <strong class="text-primary">School Main Grounds</strong>
                        </div>
                        <div>
                            <span>Starting Time</span>
                            <br>
                            <strong class="text-primary">6 pm</strong>
                        </div>
                        <div>
                            <span>Date</span>
                            <br>
                            <strong class="text-primary">August 29th, 2016</strong>
                        </div>
                        <div>
                            <span>Band Performing</span>
                            <br>
                            <strong class="text-primary">Slipknot</strong>
                        </div>
                        <div>
                            <a href="contact.html" class="btn btn-primary">Get Passes!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row mt-60">
            <div class="col-lg-12">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" href="#t1body1" aria-controls="t1body1" role="tab" data-toggle="tab"><i class="fa fa-futbol-o fa-fw"></i>Brief of event</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#t1body2" aria-controls="t1body2" role="tab" data-toggle="tab"><i class="fa fa-university fa-fw"></i>Performers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#t1body3" aria-controls="t1body3" role="tab" data-toggle="tab"><i class="fa fa-flask fa-fw"></i>Locations</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade show active" id="t1body1">
                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>
                        <p>I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me.</p>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="t1body2">
                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>
                        <p>I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me.</p>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="t1body3">
                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>
                        <p>I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

