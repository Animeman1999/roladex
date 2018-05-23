<%@ Page Title="Client Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientSearch.aspx.cs" Inherits="Roladex.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<%-- Styling for the page. --%>
    <link href="Content/DataTables/css/dataTables.bootstrap.css" rel="stylesheet" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>

<%-- The following bootstraps and jquery are needed for the search function--%>
    <%--<script src="Scripts/jquery-3.3.1.min.js"></script>--%>
    <%--<script src="Scripts/bootstrap.min.js"></script>--%>
    <script src="Scripts/DataTables/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

<%-- Start of page content --%>

<%-- Data table --%>
   <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Company Name</th>
                    <th>Phone Number</th>
                    <th>Alternate Phone</th>
                    <th>Address 1</th>
                    <th>Address 2</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Zipcode</th>
                </tr>
                </thead>
                <tbody>
<%-- This gets the data from server side --%>
                  <%=getWileLoopData() %>
                 </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>


<%-- This script is used search for all the fields of data on the table. --%>
<script>
    $(function () {
        $("#example1").DataTable();
    });
</script>

</asp:Content>
