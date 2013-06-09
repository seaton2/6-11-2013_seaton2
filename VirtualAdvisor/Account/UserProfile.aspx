<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="VirtualAdvisor.Account.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h1>Your Profile: <asp:LoginName ID="LoginName1" runat="server" CssClass="username" /></h1>
    
    
    <img alt="User Picture" style="float: left;" src="../Images/bullet.png" style="height: 145px; width: 150px" />
  
        <p>
           <a runat="server" href="~/Account/Manage.aspx" title="Manage your account">Manage your Account</a>
        </p>
    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
