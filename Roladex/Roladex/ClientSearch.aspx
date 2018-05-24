<%@ Page Title="Client Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientSearch.aspx.cs" Inherits="Roladex.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<%-- Styling for the page. --%>
    <link href="Content/DataTables/css/dataTables.bootstrap.css" rel="stylesheet" />

    <link href="Content/clientsearch.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 11]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<%-- Start of page content --%>
<%-- Data table --%>
   <section class="content">
       
    <div class ="title text-center"><h3>Client Side Search</h3></div>
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
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
       <div id="errorMessage"></div>
    </section>


<%-- This script is used search for all the fields of data on the table. --%>
    <script src="Scripts/jquery-2.2.3.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <script src="Scripts/dataTables.bootstrap.min.js"></script>

<script>
    try {
        $(document).ready(function () {
                $("#example1").DataTable();
            });
    } catch (err) {
        document.getElementById("errorMessage").innerHTML = err.message;
    }
    
</script>

</asp:Content>
