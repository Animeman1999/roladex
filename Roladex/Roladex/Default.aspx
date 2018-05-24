<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Roladex.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/about.css" rel="stylesheet" />

    <h2>Rolodex</h2>
    <h3>Website Description</h3>
    <p>This site is a rolodex program that allows the user to view, add, and edit contacts. It was designed using code first Entity Framework. Migration has been added
        for seeding the database.</p>
    <h3>Server Search</h3>
    <p>On the "Server Search" page the user can search the rolodex. It starts with a search box that will allow the user to input what type of characters to search for
        and will then search all fields that contains those characters. It does this doing a server-side search using gridview to display the results. </p>
    <h3>Client Search</h3>
    <p>On the "Client Search" page the user can search the rolodex. It starts with displaying the entire data from the rolodex in a table. The user can browse through 
        the pages of the table and select how many contacts to view on each page. Each column can be sorted. There is also a search box that when the user starts to type,
        the table will delete contacts that does not match the user’s typing in a field. This search is done client side using jQuery and bootstrap on a html table. 
    </p>
    <h3>Add Contact</h3>
    <p>On the "Add Contact page the user can add a new contact to the rolodex. It starts with a form that the user can use to add a new contact. Current rules are set 
        to enforce that a contact must have first name and a last name (This could easily be changed to include other fields to be required). It uses jQuery for validation.
        After submission, it will check to see if the email entered or the phone numbers entered match any in the database. If the values do match it will display the names 
        of the records found that match and asks the user if they wish to still add the new contact (The fields that are checked against the database could easily be changed)
        . Once a new contact has been added a success message is added and the form is reset.</p>
    <h3>Edit Contact</h3>
    <p>On the "Edit Contact" page the user can browse through the database and edit any contact, or they can delete any contact. Each column can be clicked on for sorting. 
        This is done using gridview.</p>
</asp:Content>
