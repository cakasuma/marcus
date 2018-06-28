<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="VideoCatalogue.aspx.cs" Inherits="FYP_Marcus.VideoCatalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header">
        <div class="container">
            <h1 class="heading">Video Catalogue</h1>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active"><a href="#">Video Catalogue</a></li>
            </ul>
        </div>
    </section>
    <section class="container mt-60 mb-100">
        <div class="row">
            <%
                while (sdr.Read())
                {


                %>
            <div class="col-lg-4">
                <div class="card course-card new">
                    <div class="course-head">
                        <img src="images/course-grid-1.jpg" class="img-fluid course-img" alt="">
                        <a href="VideoDetails.aspx?videoid=<%=sdr["Id"] %>&points=<%=sdr["videoRewards"] %>" class="course-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                    </div>
                    <div class="course-detail">
                        <h4 class="heading"><%=sdr["videoName"] %></h4>
                        <span class="brief"><%=sdr["videoDescription"] %></span>
                        <ul class="course-features">
                            <li><i class="fa fa-map-marker"></i>Rewards: <%=sdr["videoRewards"] %></li>
                            <li><i class="fa fa-clock-o"></i><%=sdr["videoCategory"] %></li>
                        </ul>
                    </div>
                </div>
            </div>
            <%} %>
        </div>
    </section>
</asp:Content>

