<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="All_Team.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.All_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <title>All Team</title>
    <style>
 .grid{
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  
}

.grid td, .grid th {
  border: 1px solid #ddd;
  padding: 8px;
  
}

.grid tr:nth-child(even){background-color: #f2f2f2;}

.grid tr:hover {background-color: #ddd;}

.grid th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
        <asp:GridView ID="GridView1" runat="server" CssClass ="grid">
        </asp:GridView>
    </div>
</asp:Content>
