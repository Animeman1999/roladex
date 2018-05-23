<%@ Page Title="Server Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Roladex.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="down text-center">

        <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
        <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />

        <asp:Label ID="MessageLabel" runat="server" Text="MessageLabel"></asp:Label>

    </div>
    <div class="down">

        <asp:GridView ID="GridView1" CssClass="Grid" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Results Found"
            BackColor="White" BorderColor="#337AB7" BorderStyle="Solid" BorderWidth="2px" CellPadding="10" CellSpacing="5" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#ededed" />
            <Columns>
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="AltPhone" HeaderText="AltPhone" SortExpression="AltPhone" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
            </Columns>
             <FooterStyle BackColor="#337ab7" />
             <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#337ab7" ForeColor="White" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#dae0ea" />
             <SortedAscendingHeaderStyle BackColor="#012051" />
             <SortedDescendingCellStyle BackColor="#dae0ea" />
             <SortedDescendingHeaderStyle BackColor="#012051" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoladexContext %>" SelectCommand="SELECT [LastName], [FirstName], [CompanyName], [Email], [Phone], [AltPhone], [Address1], [Address2], [State], [City], [Zipcode] FROM [People] WHERE (([LastName] LIKE '%' + @LastName + '%') OR ([FirstName] LIKE '%' + @FirstName + '%') OR ([CompanyName] LIKE '%' + @CompanyName + '%') OR ([Address1] LIKE '%' + @Address1 + '%') OR ([Address2] LIKE '%' + @Address2 + '%') OR ([AltPhone] LIKE '%' + @AltPhone + '%') OR ([City] LIKE '%' + @City + '%') OR ([Email] LIKE '%' + @Email + '%') OR ([Phone] LIKE '%' + @Phone + '%') OR ([State] LIKE '%' + @State + '%') OR ([Zipcode] LIKE '%' + @Zipcode + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="SearchTextBox" Name="LastName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="FirstName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="CompanyName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="Address1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="Address2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="AltPhone" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="City" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="Email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="Phone" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="State" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="SearchTextBox" Name="Zipcode" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Search" runat="server"></asp:SqlDataSource>

    </div>
    <div>
    </div>




  <%--  <!-- jQuery 2.2.3 need this one -->
<script src="scripts/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="scripts/bootstrap.min.js"></script>
<!-- DataTables -->
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
<script src="scripts/dataTables.bootstrap.min.js"></script>

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


<script>
    $(document).ready(function () {
        $("#example1").DataTable({
            "serverSide": false
        });
    });
</script>--%>
</asp:Content>
