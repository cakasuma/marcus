<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddCourse.aspx.cs" Inherits="FYP_Marcus.AdminAddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container mt-100">
        <div class="row">
            <div class="col-lg-6">
                <h2 class="heading">Contact <span class="text-primary">Form</span></h2>
                <form method="post" action="AdminAddCourse.aspx?addcourse=true">
                    <div class="form-group">
                        <label for="name">Video Name</label>
                        <input type="text" class="form-control" id="name" name="name">
                        <br>
                        <label for="cat">Video Category</label>
                        <input type="text" class="form-control" id="cat" name="cat">
                        <br>
                        <label for="amount">Rewards Amount</label>
                        <input type="number" class="form-control" id="amount" name="amount">
                        <br>
                        <label for="desc">Video Description</label>
                        <textarea id="desc" name="desc" class="form-control"></textarea>
                        <br>
                        <label for="fileUpload1">Video Image</label>
                        <input type="file" id="fileUpload1" name="fileUpload1" runat="server"/>
                        <br>
                        <label for="fileUpload1">Video Upload</label>
                        <input type="file" id="fileUpload2" name="fileUpload2" runat="server"/>
                        <br>
<%--                        <label class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" checked="">
                            <span class="custom-control-indicator"></span>
                            <span class="custom-control-description">Check this custom checkbox</span>
                        </label>--%>
                        <br>
                        <br>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
