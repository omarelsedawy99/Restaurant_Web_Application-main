<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
    <link href="../StylesCss/LoginStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="LoginBody" >
        <div  class="row" style="padding-top:200px;" >
        <div class="col-xl-4 col-lg-4"></div>
    <div  id="login-box" class="col-xl-4 col-lg-4">
          <img src="../photos/avatar.png" class="avatar">
           <h1> Welcome </h1>
            <p>Username:</p>
            <asp:TextBox ID="TXT_Usernane" runat="server" type="text" ></asp:TextBox> &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXT_Usernane" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Username is required</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXT_Usernane" Display="Dynamic" ErrorMessage="Invaild Username" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*"></asp:RegularExpressionValidator>
            <p>Password:</p>
            <asp:TextBox ID="TXT_Password" runat="server" type ="password"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXT_Password" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password is required</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXT_Password" Display="Dynamic" ErrorMessage="Invalid password" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*"></asp:RegularExpressionValidator>
&nbsp;<asp:Button ID="Button1" runat="server" type="submit" Text="Login" OnClick="Button1_Click"  />
             &nbsp;<br />
            <a href="#">Forget Password</a>    
          
       </div>
        <div class="col-xl-4 col-lg-4"></div>
            </div>
    </div>

</asp:Content>
