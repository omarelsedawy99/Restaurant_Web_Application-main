<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="All_orders.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.All_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <style type="text/css">


     tr{
    background-color: #ffffff;
    box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.3);
  }

        .auto-style3 {
           
            height: 38px;
         width: 400px;
     }
        .auto-style4 {
           
            height: 38px;
             width: 400px;
  }
 .auto-style5 {
  height: 38px;
  width: 400px;
   }
 .grid{
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
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
  background-color: darkcyan;
  color: white;
}

     .auto-style6 {
          width: 400px;
     }

    .auto-style7 {
        width: 86px;
    }

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


                            <asp:DataList ID="DataList1" runat="server"  RepeatColumns="1" RepeatDirection="Horizontal"  width= "100%" onitemcommand="btn_img_Click">
                                <ItemTemplate>
   
                                    <table style="width:100%; height: 142px;">
                                        <tr>
                                            <td class="auto-style7">


                                            </td>
                                            <td class="auto-style3">
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl1" runat="server" Font-Size="Large" Text="Order_Id : " Font-Bold="True"></asp:Label>
                                                <asp:Label ID="lbl_orderid" runat="server" Font-Size="Large" Text='<%# Eval("ORDER_ID") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style4">
                                                <asp:Label ID="lbl2" runat="server" Text="Total_Price : " Font-Size="Large" Font-Bold="True"></asp:Label>
                                                <asp:Label ID="lbl_totlprice" runat="server" Font-Size="Large" Text='<%# Eval("ORDER_TOTAL_PRICE") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:Label ID="lbl3" runat="server" Text="Customer_Id :  " Font-Size="Large" Font-Bold="True"></asp:Label>
                                                <asp:Label ID="lbl_Cust_Id" runat="server" Font-Size="Large" Text='<%# Eval("CUSTOMER_ID") %>'></asp:Label>
                                            </td>
                                               <td class="auto-style5">
                                                <asp:Label ID="lbl4" runat="server" Text="Data : " Font-Size="Large" Font-Bold="True"></asp:Label>
                                                <asp:Label ID="lbl_data" runat="server" Font-Size="Large" Text='<%# Eval("ORDER_DATE") %>'></asp:Label>
                                            </td>
                                            <td>

                                                <asp:ImageButton ID="btn_img" runat="server" Height="23px" ImageUrl="~/photos/show2.png" Width="33px" CommandArgument='<%#Eval("ORDER_ID") %>' />

                                            </td>
                                        </tr>
                                    </table>

                                    <asp:GridView ID="GridView2" runat="server" CssClass ="grid" width= "100%" >


                                  </asp:GridView>
                               </ItemTemplate>
                                                    
                            </asp:DataList>
                                           
</asp:Content>
