<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="FYP_Marcus.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        var password = document.getElementById("change-pass")
            , confirm_password = document.getElementById("change-compass");

        function validatePassword() {
            if (password.value != confirm_password.value) {
                confirm_password.setCustomValidity("Passwords Don't Match");
            } else {
                confirm_password.setCustomValidity('');
            }
        }

        password.onchange = validatePassword;
        confirm_password.onkeyup = validatePassword;
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header">
        <div class="container">
            <h1 class="heading">User Profile</h1>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active"><a href="#">User Profile</a></li>
            </ul>
        </div>
    </section>
    <%
        while (sdr.Read())
        {


    %>
    <section class="container mt-100">
        <div class="row">
            <div class="col-lg-4">
                <div class="teacher-intro">
                    <img src="images/person-icon-person-icon-17.jpg" class="img-fluid" alt="">
                    <ul class="social justify-content-center">
                        <li data-toggle="modal" data-target="#editProfileModal"><a href="#"><i class="fa fa-pencil"></i></a></li>
                        <li data-toggle="modal" data-target="#changePasswordModal"><a href="#"><i class="fa fa-lock"></i></a></li>
                        <li><a href="WishlistCatalogue.aspx"><i class="fa fa-heart"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="teacher-full">
                    <h2 class="heading"><%=sdr["Name"] %></h2>
                    <div class="personal">
                        <div>
                            <span>Contact</span>
                            <br>
                            <strong class="text-primary"><%=sdr["Contact"] %></strong>
                        </div>
                        <div>
                            <span>Interest</span>
                            <br>
                            <strong class="text-primary"><%if (sdr["interest"].ToString() != "")
                                                             { %><%=sdr["interest"] %><%}
                            else
                            { %>no Interest<%} %></strong>
                        </div>
                        <div>
                            <span>Birthday</span>
                            <br>
                            <strong class="text-primary"><%if (sdr["birthday"].ToString() != "")
                                                             { %><%=sdr["birthday"] %><%}
                            else
                            { %>no Birthday<%} %></strong>
                        </div>
                    </div>
                    <p>
                        <%if (sdr["about_me"].ToString() != "")
                            { %><%=sdr["about_me"] %><%}
                                                         else
                                                         { %>Please tell us about yourself<%} %>
                    </p>
                </div>
                <div class="teacher-facts">
                    <div class="row">
                        <div class="fact col-lg-12">
                            <span class="head"><span class="count" data-from="0" data-to="<%=points %>" data-speed="3000"><%=points %></span>Points</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- edit profile modal -->
    <div class="modal fade" id="editProfileModal" data-open-delay="2500" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6 nop d-flex align-items-end">
                                <img src="images/subscribe-modal.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="col-lg-6 pt-40">
                                <h4 class="heading">Edit your <span class="text-primary">Profile</span></h4>
                                <p>you can tell everyone who you are</p>
                                <form method="post" action="UserProfile.aspx?editprofile=true">
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <input type="text" class="form-control" value="<%=sdr["Name"] %>" name="edit-name">
                                    </div>
                                    <div class="form-group">
                                        <label>Contact</label>
                                        <input type="number" class="form-control" value="<%=sdr["Contact"] %>" name="edit-contact">
                                    </div>
                                    <div class="form-group">
                                        <label>interest</label>
                                        <select name="edit-interest" class="form-control">
                                            <option value="Cryptography" <%if (sdr["interest"].Equals("Internet"))
                                                { %> selected <% }  %>>Internet</option>
                                            <option value="Cryptography" <%if (sdr["interest"].Equals("Mobile"))
                                                { %> selected <% }  %>>Mobile</option>
                                            <option value="Cryptography" <%if (sdr["interest"].Equals("Security"))
                                                { %> selected <% }  %>>Security</option>
                                            <option value="Cryptography" <%if (sdr["interest"].Equals("Cryptography"))
                                                { %> selected <% }  %>>Cryptography</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Birthday</label>
                                        <input type="date" class="form-control" value="<%=sdr["birthday"] %>" name="edit-name">
                                    </div>
                                    <div class="form-group">
                                        <label>About You</label>
                                        <textarea class="form-control" name="edit-aboutyou" required><%=sdr["about_me"] %></textarea>
                                    </div>
                                    <button type="submit" name="submit" class="btn btn-primary">Edit</button>
                                    <div style="height: 50px"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- change password modal -->
    <div class="modal fade" id="changePasswordModal" data-open-delay="2500" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6 nop d-flex align-items-end">
                                <img src="images/subscribe-modal.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="col-lg-6 pt-40">
                                <h4 class="heading">Change your <span class="text-primary">Password</span></h4>
                                <p>You'll regret later if you do not change your password for long time</p>
                                <form method="post" action="UserProfile.aspx?changepassword=true">
                                    <div class="form-group">
                                        <label>Old Password</label>
                                        <input type="password" class="form-control" name="change-oldpass">
                                        <label>New Password</label>
                                        <input id="change-pass" type="password" class="form-control" name="change-newpass">
                                        <label>Confirm New Password</label>
                                        <input id="change-compass" type="password" class="form-control">
                                    </div>
                                    <button type="submit" name="submit" class="btn btn-primary">Change</button>
                                    <div style="height: 50px"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%} %>
</asp:Content>
