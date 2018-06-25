<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CoursesCatalogue.aspx.cs" Inherits="FYP_Marcus.CoursesCatalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container mt-100 mb-100">
        <div class="row">
            <div class="col-lg-4">
                <div class="card card-no-border course-category">
                    <img src="images/subject-1.jpg" class="img-fluid" alt="">
                    <div class="course-detail">
                        <a href="#">
                            <h2 class="heading text-white">Web Security</h2>
                        </a>
                        <span class="course-count"><%if (websec == "")
                                                       { %>0<%}
                                                                    else
                                                                    { %><%=websec %><%} %> Courses</span>
                        <br>
                        <br>
                        <a href="VideoCatalogue.aspx?type=websec" class="btn btn-secondary">See Courses</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card card-no-border course-category">
                    <img src="images/subject-2.jpg" class="img-fluid" alt="">
                    <div class="course-detail">
                        <a href="#">
                            <h2 class="heading text-white">Database Security</h2>
                        </a>
                        <span class="course-count"><%if (datsec == "")
                                                       { %>0<%}
                                                                    else
                                                                    { %><%=datsec %><%} %> Courses</span>
                        <br>
                        <br>
                        <a href="VideoCatalogue.aspx?type=dbsec" class="btn btn-secondary">See Courses</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card card-no-border course-category">
                    <img src="images/subject-3.jpg" class="img-fluid" alt="">
                    <div class="course-detail">
                        <a href="#">
                            <h2 class="heading text-white">Network Security</h2>
                        </a>
                        <span class="course-count"><%if (netsec == "")
                                                       { %>0<%}
                                                                    else
                                                                    { %><%=netsec %><%} %> Courses</span>
                        <br>
                        <br>
                        <a href="VideoCatalogue.aspx?type=netsec" class="btn btn-secondary">See Courses</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card card-no-border course-category">
                    <img src="images/subject-4.jpg" class="img-fluid" alt="">
                    <div class="course-detail">
                        <a href="#">
                            <h2 class="heading text-white">Mobile Security</h2>
                        </a>
                        <span class="course-count"><%if (mobsec == "")
                                                       { %>0<%}
                                                                    else
                                                                    { %><%=mobsec %><%} %> Courses</span>
                        <br>
                        <br>
                        <a href="VideoCatalogue.aspx?type=mobsec" class="btn btn-secondary">See Courses</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card card-no-border course-category">
                    <img src="images/subject-5.jpg" class="img-fluid" alt="">
                    <div class="course-detail">
                        <a href="#">
                            <h2 class="heading text-white">Cryptography</h2>
                        </a>
                        <span class="course-count"><%if (crypt == "")
                                                       { %>0<%}
                                                                    else
                                                                    { %><%=crypt %><%} %> Courses</span>
                        <br>
                        <br>
                        <a href="VideoCatalogue.aspx?type=crypto" class="btn btn-secondary">See Courses</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
