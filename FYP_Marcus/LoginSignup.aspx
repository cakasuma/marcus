<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="LoginSignup.aspx.cs" Inherits="FYP_Marcus.LoginSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header">
        <div class="container">
            <h1 class="heading">Login Signup</h1>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="Index.aspx">Home</a></li>
                <li class="breadcrumb-item active"><a href="LoginSignup.aspx">Login Signup</a></li>
            </ul>
        </div>
    </section>

    <section class="mt-100 mb-100">
        <div class="container">
            <div class="row flex-row justify-content-center">
                <div class="col-lg-5">
                    <h3>Create your account</h3>
                    <div class="card">
                        <div class="card-body">
                            <form id="signup-form" method="post" action="LoginSignup.aspx?signup=true">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input id="full-name" type="text" class="form-control" name="create-fullname" required>
                                </div>
                                <div class="form-group">
                                    <label>Email Id</label>
                                    <input id="email-id" type="email" class="form-control" name="create-email" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input id="create-pass" type="password" class="form-control" name="create-password" required>
                                </div>
                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <input id="com-pass" type="password" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Contact</label>
                                    <input id="login-con" type="number" class="form-control" name="create-contact" required>
                                </div>
                                <div class="form-group">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" name="agree" checked="" required>
                                        <span class="custom-control-indicator"></span>
                                        <span class="custom-control-description"> I accept the <a href="#">terms & conditions</a>.</span>
                                    </label>
                                </div>
                                <button type="submit" name="submit" class="btn btn-primary">Create Account</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <h3>Login to your account</h3>
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="LoginSignup.aspx?login=true">
                                
                                <div class="form-group">
                                    <label>Email</label>
                                    <input id="login-id-2" type="email" class="form-control" name="login-email" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input id="login-pass-2" type="password" class="form-control" name="login-password" required>
                                </div>
                                <button type="submit" name="submit" class="btn btn-primary">Login</button>
                                <br><br>
                                <a href="#">I don't remember my Password</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">
        var password = document.getElementById("create-pass")
            , confirm_password = document.getElementById("com-pass");

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
