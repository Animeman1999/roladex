<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Roladex.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Roladex</h1>
    </div>
   <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Company Name</th>
                    <th>Phone Number</th>
                    <th>Alternate Phone</th>
                    <th>Address 1</th>
                    <th>Address 2</th>
                    <th>State</th>
                    <th>City</th>
                    <th>Zipcode</th>
                </tr>
                </thead>
                <tbody>
                  <%=getWileLoopData() %>
                    </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>

    <!-- jQuery 2.2.3 need this one -->
<script src="scripts/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="scripts/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="scripts/jquery.dataTables.min.js"></script>
<script src="scripts/dataTables.bootstrap.min.js"></script>

<script>
  $(function () {
    $("#example1").DataTable();
    
  });
</script>
</asp:Content>
