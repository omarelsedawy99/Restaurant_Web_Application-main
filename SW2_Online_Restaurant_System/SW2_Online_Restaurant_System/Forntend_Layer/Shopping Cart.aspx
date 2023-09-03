<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="Shopping Cart.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.Shopping_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid td, .grid th {
            border: 1px solid #ddd;
            padding: 8px;
        }


        .grid th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
        }

        .grid {
            font-size: 20px;
            border-collapse: collapse;
            border-radius: 24px;
        }

        .ClassTextBox {
            padding: 8px;
            width: 200px;
            /* border-radius: 10px;*/
            border: 1px solid #F2C64D;
            font-size: 20px;
        }

        .Classlabel {
            /*color:#D1D6DA;*/
            font-size: 25px;
            margin: 0px 20px 0px 0px;
        }

        .top_part {
            width: 100%;
        }

        .bottom_part {
            margin: 20px 0px;
            /* padding:20px 20px;*/
            width: 100%;
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
            width: 200px;
        }

            .classButton:hover {
                cursor: pointer;
                background: #F2C64D;
            }

        .Classbutton2 {
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
            width: 200px;
            float: right;
        }

            .Classbutton2:hover {
                cursor: pointer;
                background: #F2C64D;
            }

        .cart_container {
            width: 836px;
            margin: 30px auto;
            padding: 22px;
            background-color: #FFF;
            border-radius: 24px;
            font-family: Arial;
        }

        .hiddenImage {
            display: none;
        }

        .bac_container {
            padding: 20px;
        }

        .back_image {
            width: 100%;
            background: url('/photos/beach-background-ultra-hd-4k-97252.jpg');
            background-size: cover;
            position: relative;
            overflow: hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="back_image">
        <div class="bac_container" style="background: rgba(214, 141, 32, 0.51);">
            <div class="cart_container">
                <div class="top_part">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Meal_Name" Width="100%"
                        CssClass="grid" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>

                            <asp:TemplateField HeaderText="Meal Image">
                                <ItemTemplate>
                                    <asp:TextBox runat="server" Text='<%#Eval("Meal_Image")%>' ID="image_name" CssClass="hiddenImage"></asp:TextBox>
                                    <img src="/photos/<%#Eval("Meal_Image") %>" style="width: 210px; height: 150px;" />
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Meal Name">
                                <ItemTemplate>
                                    <asp:TextBox Text='<%#Eval("Meal_Id")%>' ID="Meal_Id" runat="server" Width="140px" CssClass="hiddenImage"></asp:TextBox>
                                    <asp:Label Text='<%#Eval("Meal_Name")%>' ID="Meal_Name" runat="server" Width="140px"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="Meal_Price" Width="100px" Text='<%#Eval("Meal_Price")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <asp:TextBox OnTextChanged="TXT_Meal_Qut_TextChanged" ID="TXT_Meal_Qut" onkeypress="return functionx(event)" TextMode="Number" MaxLength="2" AutoPostBack="true" Font-Size="Medium" Width="100px" runat="server" Text='<%#Eval("Meal_Qut")%>'></asp:TextBox>


                                </ItemTemplate>
                            </asp:TemplateField>





                            <asp:TemplateField HeaderText="Total Price">
                                <ItemTemplate>
                                    <asp:Label Text='<%#Eval("Total_Price")%>' ID="Total_Price" Width="100px" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <!-- <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" />-->
                                    <asp:ImageButton ImageUrl="~/photos/Minus_48px.png" runat="server" CommandName="Delete" ToolTip="Delete" Height="40px" Width="40px" />

                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#F2C64D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />

                    </asp:GridView>
                    <div class="bottom_part">
                        <asp:Label runat="server" Text="Total Price" CssClass="Classlabel"></asp:Label>
                        <asp:TextBox ReadOnly="true" ID="Txt_to_price" runat="server" CssClass="ClassTextBox"></asp:TextBox>
                    </div>

                </div>
                <div class="bottom_buttons">
                    <asp:Button runat="server" Text="Reset Cart" OnClick="add_more_Click" ID="add_more" CssClass="classButton" />
                    <asp:Button runat="server" Text="Submit Your Order" CssClass="Classbutton2" OnClick="Submit_button_Click" ID="Submit_button" />
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function functionx(evt) {
            if (evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
                return false;
            }
        }
    </script>

</asp:Content>
