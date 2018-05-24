<%@ Page Title="Add Person" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPerson.aspx.cs" Inherits="Roladex.AddPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="Content/addperson.css" rel="stylesheet" />
    <div class="down">

        <div class ="title text-center">
            <h3>Add a Contact</h3>
        </div>

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
		                <%--<input type='text' name='State' class="form-control" maxlength="2" />--%>
                         <select name="State" class="form-control" size ="1">
                            <option value =""></option>
	                        <option value="AL">Alabama</option>
	                        <option value="AK">Alaska</option>
	                        <option value="AZ">Arizona</option>
	                        <option value="AR">Arkansas</option>
	                        <option value="CA">California</option>
	                        <option value="CO">Colorado</option>
	                        <option value="CT">Connecticut</option>
	                        <option value="DE">Delaware</option>
	                        <option value="DC">District of Columbia</option>
	                        <option value="FL">Florida</option>
	                        <option value="GA">Georgia</option>
	                        <option value="HI">Hawaii</option>
	                        <option value="ID">Idaho</option>
	                        <option value="IL">Illinois</option>
	                        <option value="IN">Indiana</option>
	                        <option value="IA">Iowa</option>
	                        <option value="KS">Kansas</option>
	                        <option value="KY">Kentucky</option>
	                        <option value="LA">Louisiana</option>
	                        <option value="ME">Maine</option>
	                        <option value="MD">Maryland</option>
	                        <option value="MA">Massachusetts</option>
	                        <option value="MI">Michigan</option>
	                        <option value="MN">Minnesota</option>
	                        <option value="MS">Mississippi</option>
	                        <option value="MO">Missouri</option>
	                        <option value="MT">Montana</option>
	                        <option value="NE">Nebraska</option>
	                        <option value="NV">Nevada</option>
	                        <option value="NH">New Hampshire</option>
	                        <option value="NJ">New Jersey</option>
	                        <option value="NM">New Mexico</option>
	                        <option value="NY">New York</option>
	                        <option value="NC">North Carolina</option>
	                        <option value="ND">North Dakota</option>
	                        <option value="OH">Ohio</option>
	                        <option value="OK">Oklahoma</option>
	                        <option value="OR">Oregon</option>
	                        <option value="PA">Pennsylvania</option>
	                        <option value="RI">Rhode Island</option>
	                        <option value="SC">South Carolina</option>
	                        <option value="SD">South Dakota</option>
	                        <option value="TN">Tennessee</option>
	                        <option value="TX">Texas</option>
	                        <option value="UT">Utah</option>
	                        <option value="VT">Vermont</option>
	                        <option value="VA">Virginia</option>
	                        <option value="WA">Washington</option>
	                        <option value="WV">West Virginia</option>
	                        <option value="WI">Wisconsin</option>
	                        <option value="WY">Wyoming</option>
                        </select>
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

<%-- Script for validation of the form. With HTML5 browsers this serves as backup for browsers without HTML5 --%>
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
