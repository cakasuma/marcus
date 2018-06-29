<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="VideoDetails.aspx.cs" Inherits="FYP_Marcus.VideoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/SweetAlert.js"></script>
    <script>
        window.onload = function () {
            // your code 
            function getUrlVars() {
                var vars = [], hash;
                var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
                for (var i = 0; i < hashes.length; i++) {
                    hash = hashes[i].split('=');
                    vars.push(hash[0]);
                    vars[hash[0]] = hash[1];
                }
                return vars;
            }

            if (getUrlVars()["points"] != null) {
                document.getElementById("butplay").onclick = function () {
                    var points = '<%=point%>';

                    $.ajax({

                        url: "VideoDetails.aspx?videoid=<%=id%>&insertPoints=<%=point%>",
                        success: function (response) {
                            swal("Congratulations!", "You get " + points + " points", "success");
                        },
                        failure: function (response) {
                            alert("failed");
                        }
                    });

                }
            }

            document.getElementById("addwish").onclick = function () {
                $.ajax({

                    url: "VideoDetails.aspx?videoid=<%=id%>&addwishlist=true",
                    success: function (response) {
                        swal("Nice!", "Added to wishlist", "success");
                    },
                    failure: function (response) {
                        alert("failed");
                    }
                });
            }
        };
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        while (sdr.Read())
        {
    %>
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
                <div class="youtube" data-video-id="<%=sdr["youtubeId"] %>">
                    <!-- Replace video id with your video id -->
                    <div id="butplay" class="btn-play">
                        <i class="fa fa-youtube-play"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mt-20">
                <div class="event-full">
                    <h2 class="heading"><%=sdr["videoName"] %></h2>
                    <div class="info">
                        <div>
                            <span>Video Category</span>
                            <br>
                            <strong class="text-primary"><%=sdr["videoCategory"] %></strong>
                        </div>
                        <div>
                            <span>Video Rewards point</span>
                            <br>
                            <strong class="text-primary"><%=sdr["videoRewards"] %></strong>
                        </div>
                        <div>
                            <% bool checkwish = FYP_Marcus.connectdata.isWishlistExist(id, userid);
                                if (!checkwish)
                                { %>
                            <button id="addwish" class="btn btn-primary">Add to Wishlist</button>
                            <%}
                            else
                            { %>
                            <button class="btn btn-primary" disabled>Added in wishlist</button>
                            <%} %>
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
                        <a class="nav-link active" href="#t1body1" aria-controls="t1body1" role="tab" data-toggle="tab"><i class="fa fa-futbol-o fa-fw"></i>Brief of video</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade show active" id="t1body1">
                        <p><%=sdr["videoDescription"] %></p>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <%} %>
</asp:Content>

