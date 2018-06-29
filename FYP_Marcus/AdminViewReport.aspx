<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AdminViewReport.aspx.cs" Inherits="FYP_Marcus.AdminViewReport" %>

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
                            <th>Date</th>
                            <th>User Name</th>
                            <th>Video Name</th>
                            <th>Video Category</th>
                            <th>Rewards Amount</th>
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
                            <td><%=sdr["dateCreated"] %></td>
                            <td><%=sdr["Name"] %></td>
                            <td><%=sdr["videoName"] %></td>
                            <td><%=sdr["videoCategory"].ToString() %></td>
                            <td><%=sdr["videoRewards"] %></td>
                            <td class="row"><a href="AdminViewReport.aspx?delete=<%=sdr["Id"] %>" class="btn btn-danger">Delete</a></td>
                        </tr>



                        <%i++;
                            } %>
                    </tbody>
                </table>
            </div>

        </div>

    </section>
</asp:Content>