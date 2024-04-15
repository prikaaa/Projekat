<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewDelovi.aspx.cs" Inherits="WebApplication1.Account.ViewDelovi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="ErrorLabel" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>


    <asp:Label ID="Label1" runat="server" Text="Delovi u bazi" Font-Bold="true"></asp:Label>

    <br />


    <asp:GridView ID="GridView1" runat="server"
        
         CssClass="table"></asp:GridView>

</asp:Content>
