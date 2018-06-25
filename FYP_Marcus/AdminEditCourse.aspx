<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEditCourse.aspx.cs" Inherits="FYP_Marcus.AdminEditCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container mt-100">
        <div class="row">
            <div class="col-lg-6">
                <h2 class="heading">Edit <span class="text-primary">Course Videos</span></h2>
                <form method="post" action="AdminEditCourse.aspx?editcourse=true" runat="server">

                    <div class="form-group">
                        <label for="name">Video Name</label>
                        <input type="text" value="<%=videoName %>" class="form-control" id="name" name="name" required>
                        <br />
                        <label for="cat">Video Category</label>
                        <select class="form-control" name="cat">
                            <option></option>
                            <option value="Web Security" <%if (videoCategory.Equals("Web Security")){ %> selected <% }  %>>Web Security</option>
                            <option value="Database Security" <%if (videoCategory.Equals("Database Security")){ %> selected <% }  %>>Database Security</option>
                            <option value="Network Security" <%if (videoCategory.Equals("Network Security")){ %> selected <% }  %>>Network Security</option>
                            <option value="Mobile Security" <%if (videoCategory.Equals("Mobile Security")){ %> selected <% }  %>>Mobile Security</option>
                            <option value="Cryptography" <%if (videoCategory.Equals("Cryptography")){ %> selected <% }  %>>Cryptography</option>
                        </select>
                        <br />
                        <label for="amount">Rewards Amount</label>
                        <input type="number" value="<%=videoRewards %>" class="form-control" id="amount" name="amount" required>
                        <br />
                        <label for="desc">Video Description</label>
                        <textarea id="desc" name="desc" class="form-control" required><%=videoDescription %></textarea>
                        <br />
                        <label for="youtubeid">YoutubeId</label>
                        <textarea id="youtubeid" name="desc" class="form-control" required></textarea>
                        <br />
<%--                        <label for="fileUpload1">Video Image (support: jpg/png/jpeg</label>
                        <input type="file" id="fileUpload1" class="form-control" required="" runat="server" />
                        <br />
                        <label for="fileUpload1">Video Upload (support: mp4/ogg/WebM</label>
                        <input type="file" id="fileUpload2" class="form-control" required="" runat="server" />
                        <br />--%>
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