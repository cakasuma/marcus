<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewUser.aspx.cs" Inherits="FYP_Marcus.AdminViewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#myTable').DataTable();
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container mt-100">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="heading text-center">User <span class="text-primary">Data</span></h2>
                <table id="myTable" class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Contact</th>
                            <th>Usertype</th>
                            <th>Control</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int i = 1;
                            while (sdr.Read())
                            {
                        %>
                        <tr>
                            <th scope="row"><%=i %></th>
                            <td><%=sdr["Name"] %></td>
                            <td><%=sdr["Email"] %></td>
                            <td><%=sdr["Contact"] %></td>
                            <td><%=sdr["Usertype"] %></td>
                            <td><a href="AdminViewUser.aspx?delete=<%=sdr["Email"] %>" class="btn btn-danger">Delete</a></td>
                        </tr>
                        <%i++;
                            } %>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
