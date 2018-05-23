﻿<%@ Page Title="Add Person" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPerson.aspx.cs" Inherits="Roladex.AddPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <div class="down">
         <asp:Label ID="MessageLabel" runat="server" Text="MessageLabel" ForeColor="Black"></asp:Label>
		 <asp:Button ID="AddToRolodexButton" runat="server" OnClick="AddToRolodexButton_Click" Text="Add to Rolodex" />
         <asp:Button ID="CancelButton" runat="server" OnClick="CancelButton_Click" Text="Cancel" />
        
        <asp:Panel ID="TablePanel" runat="server">
		 <div class="panel panel-primary">
			<div class="panel-heading">Enter a New Contact</div>
			<div class="panel-body">
					<div class="form-group">
						<label for="FirstName">First Name *</label>
						<input id="FirstName" name="FirstName" class="form-control" type="text"  required>
						<span id="error_name" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="LastName">Last Name *</label>
						<input id="LastName" name="LastName" class="form-control" type="text" required>

						<span id="error_lastname" class="text-danger"></span>
					</div>

                    <div class="form-group">
						<label for='CompanyName' >Your Company Name </label>
		                <input type='text' name='CompanyName' class="form-control" maxlength="80"  />
					</div>
                     <div class="form-group">
						<label for='Email' >Email Address:</label>
		                <input type='text' name='Email' class="form-control" maxlength="80" />
					</div>
                     <div class="form-group">
							<label for='Phone' >Phone Number:</label>
		                <input type='text' name='Phone' class="form-control" maxlength="20" />	
					</div>
                     <div class="form-group">
							<label for='AltPhone' >Alternate Phone Number:</label>
		                <input type='text' name='AltPhone' class="form-control" maxlength="20" />	
					</div>
                     <div class="form-group">
								<label for='Address1' >Street Address 1: </label>
		                <input type='text' name='Address1' class="form-control" maxlength="140"  />
					</div>
                     <div class="form-group">
								<label for='Address2' >Street Address 2: </label>
		                <input type='text' name='Address2' class="form-control" maxlength="140"  />
					</div>
                     <div class="form-group">
								<label for='City' >City: </label>
		                <input type='text' name='City' class="form-control" maxlength="140"  />
					</div>
                     <div class="form-group">
								<label for='State' >State:</label>
		                <input type='text' name='State' class="form-control" maxlength="2" />
					</div>
                     <div class="form-group">
							<label for='Zipcode' >Zip Code:</label>
		                <input type='text' name='Zipcode' class="form-control" maxlength="12" />
					</div>
                                 					
								
                    <asp:Button ID="TestButton" runat="server" class="btn btn-primary center" Text="Submit" OnClick="TestButton_Click" />
				
			</div>
		</div>
   </asp:Panel>
</div>
<script>
    $(document).ready(function () {
        $flag = 1;
        $("#FirstName").focusout(function () {
            if ($(this).val() == '') {
                $(this).css("border-color", "#FF0000");
                $('#submit').attr('disabled', true);
                $("#error_name").text("* You have to enter your first name!");
            }
            else {
                $(this).css("border-color", "#2eb82e");
                $('#submit').attr('disabled', false);
                $("#error_name").text("");

            }
        });
        $("#LastName").focusout(function () {
            if ($(this).val() == '') {
                $(this).css("border-color", "#FF0000");
                $('#submit').attr('disabled', true);
                $("#error_lastname").text("* You have to enter your last name!");
            }
            else {
                $(this).css("border-color", "#2eb82e");
                $('#submit').attr('disabled', false);
                $("#error_lastname").text("");
            }
        });
       
        

        $("#submit").click(function () {
            if ($("#FirstName").val() == '') {
                $("#FirstName").css("border-color", "#FF0000");
                $('#submit').attr('disabled', true);
                $("#error_name").text("* You have to enter your first name!");
            }
            if ($("#lastname").val() == '') {
                $("#lastname").css("border-color", "#FF0000");
                $('#submit').attr('disabled', true);
                $("#error_lastname").text("* You have to enter your Last name!");
            }
           
        });



    });
</script>                      

</asp:Content>
