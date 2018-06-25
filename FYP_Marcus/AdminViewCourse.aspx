<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewCourse.aspx.cs" Inherits="FYP_Marcus.AdminViewCourse" %>

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
                <h2 class="heading text-center">Video <span class="text-primary">Data</span></h2>
                <table id="myTable" class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Rewards Amount</th>
                            <th>Description</th>
                            <th>video</th>
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
                            <td><%=sdr["videoName"] %></td>
                            <td><%=sdr["videoCategory"] %></td>
                            <td><%=sdr["videoRewards"].ToString() %></td>
                            <td><%=sdr["videoDescription"] %></td>
                            <td>
                                <video tabindex="0" src="Videos/<%=sdr["videoLocation"] %>" controls="controls" poster="Videos/<%=sdr["videoImage"] %>" style="max-height: 100px; max-width: 100px; height: 100px; width: 100px; margin-top: -20px"></video>
                            </td>
                            <td class="row"><a href="AdminViewUser.aspx?delete=<%=sdr["Id"] %>" class="btn btn-danger">Delete</a>&nbsp<a href="AdminEditCourse.aspx?edit=<%=sdr["Id"] %>" class="btn btn-info">Edit</a></td>
                        </tr>



                        <%i++;
                            } %>
                    </tbody>
                </table>
            </div>

        </div>

    </section>
</asp:Content>
