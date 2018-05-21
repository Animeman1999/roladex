<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Roladex._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
       
    </div>

    <div class="row">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="PersonSQL" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
             <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="AltPhone" HeaderText="AltPhone" SortExpression="AltPhone" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
            </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="PersonSQL" runat="server" ConnectionString="<%$ ConnectionStrings:RoladexContext %>" SelectCommand="SELECT [LastName], [FirstName], [CompanyName], [Email], [Phone], [AltPhone], [Address1], [Address2], [State], [City], [Zipcode] FROM [People] ORDER BY [LastName], [FirstName], [CompanyName]"></asp:SqlDataSource>
        
    </div>








<%--<script src="scripts/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="scripts/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="scripts/jquery.dataTables.min.js"></script>
<script src="scripts/dataTables.bootstrap.min.js"></script>

    <script>
        $(window).load(function () {
      $("#MainContent_GridView1").DataTable();
    
  });
</script>--%>

</asp:Content>
