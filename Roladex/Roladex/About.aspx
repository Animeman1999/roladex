<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Roladex.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Rolodex</h2>
    <h3>Website Description</h3>
    <p>This site is a rolodex program that allows the user to view, add, and eddit contacts. It was designed using code first Entity Framework. It will seed the 
        database on running.</p>
    <h3>Server Search</h3>
    <p>On the "Server Search" page the user can search the rolodex. It starts with a search box that will allow the user to input what type of characters to search for
        and will then search all fields that contains those characters. It does this doing a server side search using gridview to display the results. </p>
    <h3>Client Search</h3>
    <p>On the "Client Search" page the user can search the rolodex. It starts with displaying the entire data from the rolodex in a table. The user can browse through the 
        pages of the table and select how many contacts to view on each page. Each collumn can be sorted. There is also a search box that allows the user start typing, and 
        will only display the contacts that contain the characters typed. This search is done client side using jquery and bootstrapon a html table.
    </p>
    <h3>Add Contact</h3>
    <p>On the "Add Contact page the user can add a new contact to the rolodex. It starts with a form that the user can use to add a new contact. Current rules are set to 
        enforce that a contact must have first name and a last name (This could easily be changed to include other fields to be required). It uses jquery for validation. 
        After submission, it will check to see if the email entered or the phone numbers entered match any in the database. If the values do match it will display the names
        of the records found that match and asks the user if they wish to still add the new contact (The fields that are checked against the database could esily be changed). 
        Once a new contact has been added a success message is added and the form is reset.</p>
    <h3>Edit Contact</h3>
    <p>On the "Edit Contact" page the user can browse through the database and edit any contact or they can delete any contact. Each collumn can be clicked on for sorting.
        This is done useing gridview.</p>
</asp:Content>
