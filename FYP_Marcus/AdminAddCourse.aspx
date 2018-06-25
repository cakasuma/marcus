<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddCourse.aspx.cs" Inherits="FYP_Marcus.AdminAddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container mt-100">
        <div class="row">
            <div class="col-lg-6">
                <h2 class="heading">Add <span class="text-primary">Course Videos</span></h2>
                <form method="post" action="AdminAddCourse.aspx?addcourse=true" runat="server">
                    <div class="form-group">
                        <label for="name">Video Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                        <br />
                        <label for="cat">Video Category</label>
                        <select class="form-control" name="cat">
                            <option></option>
                            <option value="Web Security">Web Security</option>
                            <option value="Database Security">Database Security</option>
                            <option value="Network Security">Network Security</option>
                            <option value="Mobile Security">Mobile Security</option>
                            <option value="Cryptography">Cryptography</option>
                        </select>
                        <br />
                        <label for="amount">Rewards Amount</label>
                        <input type="number" class="form-control" id="amount" name="amount" required>
                        <br />
                        <label for="desc">Video Description</label>
                        <textarea id="desc" name="desc" class="form-control" required></textarea>
                        <br />
                        <label for="youtubeid">YoutubeId</label>
                        <input type="text" class="form-control" id="youtubeid" name="youtubeid" required>
                        <br />

<%--                        <label for="fileUpload1">Video Image (support: jpg/png/jpeg</label>
                        <input type="file" id="fileUpload1" class="form-control" required="" runat="server" />
                        <br />
                        <label for="fileUpload1">Video Upload (support: mp4/ogg/WebM</label>
                        <input type="file" id="fileUpload2" class="form-control" required="" runat="server" />--%>
                        <br />
                        <br />
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <br />
                        <br/>
                    </div>
                    <div style="margin-bottom:100px"></div>
                </form>
            </div>
        </div>
    </section>
    
</asp:Content>
