<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="Manage_Meals.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.Manage_Meals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .body {
            font-style: italic;
        }

        .Classlabel {
            /*color:#D1D6DA;*/
            font-size: 25px;
            margin: 10px 0;
        }

        .TXTLabel {
            font-size: 20px;
            margin: 0px;
            padding: 10px 0px;
        }

        .TextClass2 {
            font-size: 20px;
            margin: 0px;
            padding: 10px 0px;
        }

        .grid {
            font-size: 22px;
            border-collapse: collapse;
            width: 100%;
        }

            .grid td, .grid th {
                border: 1px solid #ddd;
                padding: 1px;
                font-size: 22px;
            }

            .grid tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .grid tr:hover {
                background-color: #ddd;
            }

            .grid th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #F2C64D;
                color: black;
            }

        .classButton {
            background-color: black;
            text-align: center;
            border: 2px solid #F2C64D;
            padding: 10px 10px;
            outline: none;
            color: #FFF;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
            font-size: 20px;
            width: 180px;
            margin: 15px 30PX;
        }

            .classButton:hover {
                cursor: pointer;
                background: #F2C64D;
            }

        .ClassTextArea {
            padding: 10px;
            width: 77%;
            margin-bottom: 10px;
            border-radius: 10px;
            border: 2px solid #F2C64D;
            font-size: 20px;
        }

        .ClassTextBox {
            padding: 10px;
            width: 60%;
            margin-bottom: 10px;
            border-radius: 10px;
            border: 2px solid #F2C64D;
            font-size: 20px;
        }

        .addmealbtn:first-of-type {
            color: #999;
        }

        .addmealbtn:last-of-type {
            background: #F2C64D;
            color: #FFF;
            display: inline-block;
            padding: 4px 10px;
        }

        .valid {
            font-size: 25px;
        }

        .icon {
            margin-top: 50px;
        }

        .mealscontainer {
            /*width: 1462px;*/
            width: 1380px;
            margin: auto;
            font-family: "Times New Roman", Times, serif;
            font-size: 22px;
        }

        .meals_header {
            background-color: #F2C64D;
            width: 100%;
            padding: 10px 0px;
            right: 10px;
            height: 90px;
        }

        .imageClass {
            float: right;
            padding-right: 5px;
        }

        .bottom_part {
            width: 100%;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mealscontainer">
        <div class="meals_Top_Part">
            <div class="meals_header">
                <h1 style="display: inline; font-size: 40px;">Manage Meals</h1>
                <asp:ImageButton ImageUrl="~/photos/plus-1.png" runat="server" OnClick="btn_add_html_Click1" ID="btn_add_html" Width="70px" Height="70px" CssClass="imageClass" />
            </div>
            <div class="addForm" style="width: 900px; margin: 20px 361px;">
                <div id="Hidden" style="display: none; width: 100%" runat="server">
                    <asp:Label Text="Meal ID" runat="server" Width="140px" CssClass="Classlabel" />
                    <asp:TextBox runat="server" CssClass="ClassTextBox" ID="TXT_Meal_Id" Enabled="false"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXT_Meal_Id" ForeColor="Red" ValidationGroup="add" CssClass="valid">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label Text="Meal Name" runat="server" Width="140px" CssClass="Classlabel" />
                    <asp:TextBox runat="server" CssClass="ClassTextBox" ID="TXT_Meal_Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXT_Meal_Name" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="add">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXT_Meal_Name" ErrorMessage="RegularExpressionValidator" Text="*" ValidationExpression="^[a-zA-Z0-9\s]*" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label Text="Meal Price" runat="server" Width="140px" CssClass="Classlabel" />
                    <asp:TextBox runat="server" CssClass="ClassTextBox" ID="TXT_Meal_Price"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXT_Meal_Price" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="add">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TXT_Meal_Price" ForeColor="Red" Text="*" Display="Dynamic" MaximumValue="500" MinimumValue="1"></asp:RangeValidator>
                    <br />
                    <asp:Label Text="Meal Image" runat="server" Width="140px" CssClass="Classlabel" />
                    <asp:FileUpload runat="server" ID="fileupload_image" Width="33%" CssClass="TextClass2" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="fileupload_image" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="add">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fileupload_image" ErrorMessage="RegularExpressionValidator" Text="*" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label Text="Meal Description" runat="server" Width="193px" CssClass="Classlabel" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXT_Meal_discription" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="add">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXT_Meal_discription" ErrorMessage="RegularExpressionValidator" Text="*" ValidationExpression="^[a-zA-Z0-9\s.@_/,]*" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" ID="TXT_Meal_discription" TextMode="multiline" Rows="5" CssClass="ClassTextArea"></asp:TextBox>
                    <br />
                    <div class="Buttons" style="margin: auto; width: 77%;">
                        <asp:Button runat="server" ID="btn_ADD" OnClick="btn_ADD_Click" CssClass="classButton" Text="Add" ValidationGroup="add" />
                        <asp:Button runat="server" ID="btn_clear" CssClass="classButton" Text="Clear" OnClick="btn_clear_Click" />
                    </div>
                </div>
            </div>




        </div>

        <div class="meals_bottom_part">
            <asp:GridView ID="MyGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="MEAL_ID" CssClass="grid" CellPadding="3" Width="100%"
                OnRowUpdating="MyGrid_RowUpdating" OnRowDeleting="MyGrid_RowDeleting" OnRowEditing="MyGrid_RowEditing" OnRowCancelingEdit="MyGrid_RowCancelingEdit">

                <Columns>
                    <asp:TemplateField HeaderText="Meal ID">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("MEAL_ID")%>' Width="120px" CssClass="TXTLabel"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("MEAL_ID")%>' Width="120px" CssClass="TXTLabel"></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Meal Name">
                        <ItemTemplate>
                            <asp:Label runat="server" Width="210px" Text='<%#Eval("MEAL_NAME")%>' CssClass="TXTLabel"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TXT_Meal_Name" Width="210px" runat="server" Text='<%#Eval("MEAL_NAME")%>' CssClass="TextClass2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXT_Meal_Name" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="mealvalidation" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXT_Meal_Name" ErrorMessage="RegularExpressionValidator" Text="*" ValidationExpression="^[a-zA-Z0-9\s]*" ForeColor="Red" Display="Dynamic" ValidationGroup="mealvalidation"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Meal Price">
                        <ItemTemplate>
                            <asp:Label runat="server" Width="210px" Text='<%#Eval("MEAL_PRICR")%>' CssClass="TXTLabel"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TXT_Meal_Price" Width="210px" runat="server" Text='<%#Eval("MEAL_PRICR")%>' CssClass="TextClass2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXT_Meal_Price" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="mealvalidation">*</asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TXT_Meal_Price" ForeColor="Red" Text="*" Display="Dynamic" MaximumValue="500" MinimumValue="1"></asp:RangeValidator>

                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Meal Description">
                        <ItemTemplate>
                            <asp:Label runat="server" Width="340px" Text='<%#Eval("MEAL_DESCRIPTION")%>' CssClass="TXTLabel"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TXT_Meal_Description" Width="340px" runat="server" Text='<%#Eval("MEAL_DESCRIPTION")%>' TextMode="multiline" Rows="7" CssClass="TextClass2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXT_Meal_Description" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="mealvalidation" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXT_Meal_Description" ErrorMessage="RegularExpressionValidator" Text="*" ValidationExpression="^[a-zA-Z0-9\s.@_/,]*" ForeColor="Red" Display="Dynamic" ValidationGroup="mealvalidation"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Meal Image">
                        <ItemTemplate>
                            <img src="/photos/<%#Eval("MEAL_IMAGE") %>" style="width: 300px; height: 270px;" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="/photos/icons8_Edit_Property_48px.png" runat="server" CommandName="Edit" ToolTip="Edit" Height="50px" Width="50px" />
                            <asp:ImageButton ImageUrl="/photos/icons8_Delete_48px.png" runat="server" CommandName="Delete" ToolTip="Delete" Height="50px" Width="50px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="/photos/icons8_Save_48px.png" runat="server" CommandName="Update" ToolTip="Update" Height="50px" Width="50px" ValidationGroup="mealvalidation" />
                            <asp:ImageButton ImageUrl="/photos/icons8_Cancel_48px.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Height="50px" Width="50px" ValidationGroup=" " />
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    </div>

</asp:Content>
