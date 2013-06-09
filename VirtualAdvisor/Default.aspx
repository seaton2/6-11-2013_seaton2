<%@ Page Title="Welcome to VAS!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VirtualAdvisor._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                
            </hgroup>
            <p>
                Virtual Advising Software is a great tool to help college seeking students, old or new, to pick
                an appropriate major towards their life goals.  Try it out, and get started!
                --Insert background image--
            </p>
        </div>
    </section>

</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <h4>Narrow Search By:</h4>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="137px">
        <asp:ListItem>Institution</asp:ListItem>
        <asp:ListItem>Major</asp:ListItem>
        <asp:ListItem>Subject</asp:ListItem>
    </asp:DropDownList>
      <h5>Search</h5>
    <input id="mySearch" type="text" /> 
    <asp:Button ID="Button2" runat="server" CommandName="mySearch" Text="Search" />
   

    <%--<h4>Search Results:</h4>
    <textarea id="TextArea1" cols="20" rows="2"></textarea>--%>
</asp:Content>
