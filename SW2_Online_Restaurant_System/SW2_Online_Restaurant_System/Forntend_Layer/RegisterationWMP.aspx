<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterationWMP.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../StylesCss/Registeration.css"/> <!-- CSS file -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="main">

            <div class="container" style="color: black;">
                <div class="booking-content" style="color: black;">
                    <div class="row" style="margin-left:-30px;margin-right:-30px;">
                        <div class="col-xl-7 col-lg-7">
                    <div class="booking-image">
                        <img class="booking-img" src="../photos/RegisterationImage.jpg" alt="Booking Image" />
                    </div>
                            </div>
                        <div class="col-xl-5 col-lg-5">
                    <div class="booking-form">

                        <h2 class="Header">Register on our website!</h2>
                        <div class="form-group form-input">
                            <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" BorderColor="#0099FF" ControlToValidate="TXT_FIRST_NAME" ErrorMessage="First Name Required!" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="TXT_FIRST_NAME" CausesValidation="true" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_FIRST_NAME" CssClass="form-label" Text="First Name"></asp:Label>

                        </div>

                        <div class="form-group form-input">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="#0066FF" ControlToValidate="TXT_LAST_NAME" ErrorMessage="Last Name Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="TXT_LAST_NAME" CausesValidation="true" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_LAST_NAME" CssClass="form-label" Text="Last Name"></asp:Label>

                        </div>
                        <div class="form-group form-input">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderColor="#0066FF" ControlToValidate="TXT_PHONE" ErrorMessage="Phone Number Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="TXT_PHONE" CausesValidation="true" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_PHONE" CssClass="form-label" Text="Phone Number"></asp:Label>

                        </div>
                        <div class="form-group form-input">
                            <asp:RangeValidator ID="RangeValidator1" runat="server" BorderColor="#0066FF" ControlToValidate="TXT_AGE" ErrorMessage="Enter a valid age" Font-Bold="True" Font-Size="Small" ForeColor="Red" MaximumValue="99" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                            <asp:TextBox runat="server" ID="TXT_AGE" CausesValidation="true" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_AGE" CssClass="form-label" Text="Age"></asp:Label>

                        </div>
                        <div class="form-group form-input">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderColor="#0066FF" ControlToValidate="TXT_ADDRESS" ErrorMessage="Address Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="TXT_ADDRESS" CausesValidation="true" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_ADDRESS" CssClass="form-label" Text="Address"></asp:Label>

                        </div>
                        <div class="form-group form-input">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BorderColor="#0066FF" ControlToValidate="TXT_EMAIL" ErrorMessage="Email Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="TXT_EMAIL" CausesValidation="true" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_EMAIL" CssClass="form-label" Text="Email"></asp:Label>

                        </div>
                        <div class="form-group form-input">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BorderColor="#0066FF" ControlToValidate="TXT_USERNAME" ErrorMessage="Username Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="TXT_USERNAME" CausesValidation="true" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_USERNAME" CssClass="form-label" Text="Username"></asp:Label>

                        </div>
                        <div class="form-group form-input">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BorderColor="#0066FF" ControlToValidate="TXT_PASSWORD" ErrorMessage="Password Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="TXT_PASSWORD" CausesValidation="true" type="password" CssClass="inputclass"></asp:TextBox>
                            <asp:Label runat="server" AssociatedControlID="TXT_PASSWORD" CssClass="form-label" Text="Password"></asp:Label>

                        </div>

                        <div>
                            <asp:Label ID="ErrorLabel" runat="server" Text=" " Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                            <br>
                        </div>
                        <div class="form-submit">
                            <asp:Button runat="server" CssClass="submit" ID="Btn_Add" Text="Register" OnClick="Btn_Add_Click" />
                        </div>

                    </div>
                            </div>
                        </div>
                </div>
            </div>

        </div>

</asp:Content>
