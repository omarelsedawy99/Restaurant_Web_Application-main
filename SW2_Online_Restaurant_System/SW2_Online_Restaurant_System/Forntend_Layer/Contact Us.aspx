<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        .contact {
            width: 1163px;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 110px 130px 157px 148px;
            /*   background-color: red;
    border-radius: 10px;
    width: 1163px;
    margin: auto;
   max-width:1163px;*/
            /*padding: 110px 130px 157px 148px;*/
            margin: auto;
        }

        .left_part, .right_part {
            /*float:left;*/
            display: inline-block;
        }

        .left_part {
            width: 310px;
            padding-top: 55px;
        }

        .right_part {
            width: 390px;
        }

        .TextboxClass {
            width: 100%;
            border-radius: 10px;
            font-size: 20px;
            height: 50px;
            padding: 0 2px 0 2px;
            border: 1px solid #846add;
            margin: 5px 0px;
        }

        .TextAreaClass {
            width: 100%;
            border-radius: 10px;
            font-size: 20px;
            padding: 0 2px 0 2px;
            border: 1px solid #846add;
            margin: 5px 0px;
        }

        .labelclass {
            font-size: 25px;
            padding: 5px 0px;
        }

        .classButton {
            /*font-size:25px;
    border-radius:10px;
    border:2px solid green;
    width:29%;
    margin:15px;*/
            background: #846add;
            text-align: center;
            border: 2px solid #2ecc71;
            padding: 10px 10px;
            outline: none;
            color: black;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
            font-size: 20px;
            width: 180px;
            margin: 15px 103px;
            color: white;
        }

            .classButton:hover {
                cursor: pointer;
                background: black;
            }

        .mycontainer {
            padding-top: 150px;
            padding-bottom: 150px;
            /*background-image:url("/Images/bg-01.jpg");*/
        }

        @media (max-width: 1200px) {
            .contact {
                width: 100%;
            }

            .left_part {
                width: 30%;
            }

            .right_part {
                width: 50%;
                padding: 5px 10px;
            }
        }

        @media (max-width: 1027px) {
            .contact {
                width: 100%;
                padding: 110px 80px 157px 90px;
            }

            .left_part {
                width: 40%;
            }

            .right_part {
                width: 50%;
                padding: 5px 10px;
            }
        }

        @media (max-width: 768px) {
            .contact {
                width: 100%;
                padding: 110px 80px 157px 80px;
            }

            .left_part {
                display: none;
            }

            .right_part {
                width: 100%;
                padding: 10px 30px;
            }
        }

        @media (max-width: 576px) {
            .contact {
                width: 100%;
                padding: 110px 15px 157px 15px;
            }

            .right_part {
                width: 100%;
                padding: 5px 10px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="background: rgba(132,106,221,0.9);">
        <div class="mycontainer">
            <div class="contact">
                <div class="left_part">
                    <asp:Image runat="server" ImageUrl="~/photos/img-01.png" />
                </div>
                <div class="right_part">
                    <asp:Label runat="server" CssClass="labelclass">Name</asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXT_Name" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXT_Name" ErrorMessage="RegularExpressionValidator" Text="Invalid Name" ValidationExpression="^[a-zA-Z\s]*" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" ID="TXT_Name" CssClass="TextboxClass"></asp:TextBox>

                    <asp:Label runat="server" CssClass="labelclass">Email</asp:Label>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_Email" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Text="*">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w{2,4}([-.]\w{2,4})*([,;]\s*\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w{2,4}([-.]\w{2,4})*)*" ControlToValidate="Txt_Email" Text="Invalid Email"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" ID="Txt_Email" CssClass="TextboxClass"></asp:TextBox>

                    <asp:Label runat="server" CssClass="labelclass">Message</asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXT_Message" ErrorMessage="RequiredFieldValidator" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXT_Message" ForeColor="Red" ErrorMessage="RegularExpressionValidator" Text="Invalid Message" ValidationExpression="^[a-zA-Z\s.@_/,]*"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" ID="TXT_Message" TextMode="multiline" Rows="6" CssClass="TextAreaClass" ViewStateMode="Enabled"></asp:TextBox>
                    <asp:Button runat="server" Text="Send" ID="Btn_Send" CssClass="classButton" OnClick="Btn_Send_Click" />


                </div>
            </div>
        </div>
    </div>



</asp:Content>
