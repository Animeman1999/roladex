﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Roladex._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
       
    </div>

    <div class="row">
         <asp:GridView ID="GridView1" CssClass="Grid" runat="server" AutoGenerateColumns="False" DataSourceID="PersonSQL" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="PersonID" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
             <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="PersonID" HeaderText="PersonID" SortExpression="PersonID" InsertVisible="False" ReadOnly="True" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="AltPhone" HeaderText="AltPhone" SortExpression="AltPhone" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" >
                <HeaderStyle ForeColor="#0099FF" />
                </asp:BoundField>
            </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#dae0ea" />
             <SortedAscendingHeaderStyle BackColor="#012051" />
             <SortedDescendingCellStyle BackColor="#dae0ea" />
             <SortedDescendingHeaderStyle BackColor="#012051" />

        </asp:GridView>
        <asp:SqlDataSource ID="PersonSQL" runat="server" ConnectionString="<%$ ConnectionStrings:RoladexContext %>" 
            SelectCommand="SELECT * FROM [People] ORDER BY [LastName], [FirstName], [CompanyName]"
            UpdateCommand ="UPDATE [People] SET [LastName] = @LastName, [FirstName] = @FirstName, [CompanyName] = @CompanyName,
            [Email] = @Email, [Phone] = @Phone, [AltPhone] = @AltPhone, [Address1] = @Address1, [Address2]=@Address2, [State] = @State,
            [City] = @City, [Zipcode] = @Zipcode WHERE [PersonID] = @PersonID"
            DeleteCommand="DELETE FROM [People] WHERE [PersonID] = @PersonID">

            <UpdateParameters>
                <asp:Parameter Name="LastName" Type ="String" />
                <asp:Parameter Name="FirstName" Type ="String" />
                <asp:Parameter Name="CompanyName" Type ="String" />
                <asp:Parameter Name="Email" Type ="String" />
                <asp:Parameter Name="Phone" Type ="String" />
                <asp:Parameter Name="AltPhone" Type ="String" />
                <asp:Parameter Name="Address1" Type ="String" />
                <asp:Parameter Name="Address2" Type ="String" />
                <asp:Parameter Name="State" Type ="String" />
                <asp:Parameter Name="City" Type ="String" />
                <asp:Parameter Name="Zipcode" Type ="String" />
                <asp:Parameter Name="PersonID" Type ="Int32" />
            </UpdateParameters>

            <DeleteParameters>
                <asp:Parameter Name="PersonID" Type ="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
        
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
