﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="AdminModul.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.AdminModul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .countener
{
    background-color:#1b0c40;
    display:block;
     width:auto;
     height: 1800px;
    padding: 20px; 
    width:100%;      
}


.form1
 {
 color: #4f10f1;
 position: absolute;
 transform: translate(60%,10%);
 background: rgba(0, 0, 0, 0.99);
 box-sizing: border-box;
 border-radius: 20px;
 padding: 50px 50px 50px 50px;
 margin-bottom:40px;
 margin-right:auto;
 margin-left:auto;
  

    }
 .search
 {
     margin:0px;
     width: 780px;
 }


.box_form  p
 {
 margin-top:18px;
 margin-bottom:1px;
 padding: 0;
 font-style: italic;
 font-size:21px; 
 color: #4f10f1; 
 position:relative; 
 }
.box_form input[type="text"], input[type="password"]
{
width: 100%;
margin-bottom: 20px;
border: none;
border-bottom: 2px solid #3498db;
background: transparent;
outline: none;
height: 30px;
color: #ffffff;
font-size: 16px;
}
.btn input[type="submit"]
{
  background: none;
  text-align: center;
  text-transform:uppercase;
  letter-spacing:4px;
  margin:15px;
  border: 2px solid #03e9f4;
  padding: 15px 15px;
  outline: none;
  color: #03e9f4;
  border-radius: 25px;
  transition: 0.7s;
  cursor: pointer;
  font-style: italic;
  font-size:18px;
  width:130px;
  display:flexbox;
  
}
.btn input[type="submit"]:hover
{
    cursor: pointer;
    background: #03e9f4;
    color: #050801;
    box-shadow:0 0 4px #03e9f4,
               0 0 25px #03e9f4,
               0 0 50px  #03e9f4
}
.search input[type = "text"] 
{
  border:0;
  background: none;
  display: block;
  margin: 10px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 6px;
  width: 25%;
  height:35px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.5s;
}
.search input[type = "text"]:focus
 {
width: 50%;
 border-color: #39FF14;
}
.search input[type="submit"]
{border:0;
  background: none;
  display: block;
  margin: 40px auto;
  text-align: center;
  text-transform:uppercase;
  letter-spacing:4px; 
  border: 2px solid #39FF14;
  padding: 10px 10px;
  outline: none;
  color: #39FF14;
  border-radius: 24px;
  transition: 0.7s;
  cursor: pointer;
  font-style: italic;
  font-size:20px;
  width: 150px;

  margin-right:0px;
  
}
.search input[type="submit"]:hover
{
    cursor: pointer;
    background: #39FF14;
    color: #050801;
    box-shadow:0 0 4px #39FF14,
               0 0 25px #39FF14,
               0 0 60px  #39FF14
}
.box_form [type="select"] 
{
  background: none;
  text-align: center;
  border: 2px solid #3498db;
  width:100px;
  height:40px;
   border-radius: 10px;
   color:white
}
.box_form [type="select"]:hover
{
    background: none;
    text-align: center;
    color: black;
    
}
label
{
  margin-top:18px;
 margin-bottom:1px;
 padding: 0;
 font-style: italic;
 font-size:21px; 
 color: #4f10f1;  
  margin-right:20px;
}

    @media (max-width: 1400px) {
            .form1
           {
             transform: translate(50%,10%);
             width:100%;
             
           }

    }


    @media (max-width: 1300px) {
  
           .form1
           {
             transform: translate(20%,10%);
             width:80%;
           }
           .search
           {
     
            width: 80%;
          }
        .countener
          {
 
          height: 1950px;     
          }

        .btn input[type="submit"]
         {
           display: block;
         }
         

}
@media (max-width: 900px) {
  
           .form1
           {
             transform: translate(20%,10%);
             width:75%;
           }
        .countener
          {
 
          height: 1950px;     
          }
         .btn input[type="submit"]
         {
           display: block;
         }

         

}

 
@media (max-width: 576px) 
        {

           .form1
           {
             transform: translate(10%,10%);
             width:75%;
          }

          .countener
          {
 
          height: 1950px;     
          }
          .btn input[type="submit"]
         {

         display:block;
  
         }
       }

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="countener">
    
     <div class="form1">
      <div class="search">
           <br />
           <asp:TextBox ID="SearchById" runat="server" placeholder="User ID" type ="text"  ></asp:TextBox>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SearchById" ErrorMessage="ID Required Y ba4a" ForeColor="Black" ValidationGroup="ubdater" Font-Italic="True" Font-Size="Smaller">.</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="SearchById" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" ForeColor="#333300" ValidationExpression="\w+([-+.']\w+)*" Display="Dynamic" ValidationGroup="ubdater">.</asp:RegularExpressionValidator>
           <asp:Button ID="btnshow" runat="server" Text="Show" type ="submit"  Width="161px" ValidationGroup="ubdater" OnClick="btnshow_Click"/>
      </div>      
       <div class="box_form">                
            <p>User ID :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXT_ID" ErrorMessage="ID Required Y ba4a" ForeColor="Red">*</asp:RequiredFieldValidator>
           </p>
            <asp:TextBox runat="server" ID="TXT_ID" placeholder="ID" type ="text" ></asp:TextBox>

           <br />

         <p>First Name:&nbsp; 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TXT_FIRST_NAME" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" ForeColor="Red" ValidationExpression="[a-zA-Z ]*" Display="Dynamic">*Enter Vaild Name</asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TXT_FIRST_NAME" ErrorMessage="ID Required Y ba4a" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
           </p>    
         <asp:TextBox runat="server" ID="TXT_FIRST_NAME" placeholder="Enter First Name" type ="text" ></asp:TextBox>
           <br />

          <p>Last Name :&nbsp; 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TXT_LAST_NAME" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" ForeColor="Red" ValidationExpression="[a-zA-Z ]*" Display="Dynamic">*Enter Vaild Name</asp:RegularExpressionValidator>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TXT_LAST_NAME" ErrorMessage="ID Required Y ba4a" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
           </p>
          <asp:TextBox runat="server" ID="TXT_LAST_NAME" placeholder="Enter Last Name" type ="text"></asp:TextBox>
           <br />

           <p>Age:
              <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TXT_AGE" Display="Dynamic" ErrorMessage=" Betweeb 20-60 and not(Special character please)" Font-Italic="True" Font-Size="11pt" ForeColor="Red" MaximumValue="60" MinimumValue="20" Type="Integer"> Betweeb 20-60 and not(Special character please)</asp:RangeValidator>
           &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TXT_AGE" ErrorMessage="ID Required Y ba4a" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
           </p>
          <asp:TextBox runat="server" ID="TXT_AGE" placeholder="Enter Age" type ="text" ></asp:TextBox>
            <br />

         <p>Address: <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TXT_ADDRESS" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*" Display="Dynamic">*Enter Vaild adders</asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TXT_ADDRESS" ErrorMessage="ID Required Y ba4a" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
           </p>
         <asp:TextBox runat="server" ID="TXT_ADDRESS" placeholder="Enter Address " type ="text"></asp:TextBox>
            <br />

         <p>Email :<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXT_EMAIL" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*Enter vaild Email</asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TXT_EMAIL" ErrorMessage="ID Required Y ba4a" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
           </p>
         <asp:TextBox runat="server" ID="TXT_EMAIL" placeholder="Enter Email Address" type ="text"></asp:TextBox>
            <br />

         <p>Phone:<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXT_PHONE" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" Font-Underline="False" ForeColor="Red" ValidationExpression="01\d{9}" Display="Dynamic">*Enter Vaild Phone</asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TXT_PHONE" ErrorMessage="ID Required Y ba4a" ForeColor="Red">*</asp:RequiredFieldValidator>
           </p>
         <asp:TextBox runat="server" ID="TXT_PHONE" placeholder="Enter  Phone" type ="text"></asp:TextBox>
            <br />

         <p>Username: 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXT_USERNAME" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*" Display="Dynamic">*Enter Vaild Username</asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXT_USERNAME" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
           </p>
         <asp:TextBox runat="server" ID="TXT_USERNAME" placeholder="Enter Username" type ="text" ></asp:TextBox>
            <br />


         <p>Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXT_PASSWORD" ErrorMessage="Password  Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TXT_PASSWORD" ErrorMessage="RegularExpressionValidator" Font-Italic="True" Font-Size="11pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*">*</asp:RegularExpressionValidator>
           </p>
         <asp:TextBox runat="server" ID="TXT_PASSWORD" placeholder="Enter  Password" type="password"></asp:TextBox>
         <br />
         <label>USER TAYPE:</label>
           
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Type="select">
               <asp:ListItem>Emp</asp:ListItem>
               <asp:ListItem>Admin</asp:ListItem>
           </asp:DropDownList>

           &nbsp;<br />
           <br />
           <br />

           <div class="btn">
            <asp:Button ID="btnadd" runat="server" Text="ADD" type ="submit" OnClick="btnadd_Click"  />       
            <asp:Button ID="btnubdate" runat="server" Text="UBDATE" type ="submit" OnClick="btnubdate_Click"   />
            <asp:Button ID="btndelete" runat="server" Text="DELETE" type ="submit" OnClick="btndelete_Click" />
            <asp:Button ID="btnclear" runat="server" Text="CELAR" type ="submit"  CausesValidation="False" OnClick="btnclear_Click" />
               
           </div>
         </div>
     </div>
    </div>
  


</asp:Content>
