<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <style type="text/css">

     .counter{

         
         
     }

#products { padding:50px; margin-left:50px;}
#products h2 { margin-left:10px;
               width:150px;
}

     .auto-style1 {
         width: 150px;
         text-align: center;
         height: 101px;
     }
     .auto-style2 {
         width: 295px;
         text-align: center;
         height: 101px;
         
     }
     .price{Font-Size:25px;
           
            font-family:Arial;
         width: 264px;
     }
     .auto-style3 {
         height: 567px;
         width: 384px;
     }
     .auto-style4 {
         height: 87px;
         text-align: center;
     }
     .auto-style5 {
         height: 68px;
         text-align: center;
     }
 


 

      .btn
    {
           background-color: black;
            text-align: center;
            border: 2px solid #F2C64D;
            padding: 10px 10px;
            outline: none;
            color: #FFF;
            border-radius: 50px;
            transition: 0.25s;
            cursor: pointer;
            font-size: 20px;
           
        }
    .btn:hover
    {
                cursor: pointer;
                background: #F2C64D;
        
        }
        .dtbl
        {
           
            padding:15px;
            margin:50px;
            opacity: 80%;

}
            
             .dtbl:hover
              {
              opacity: 100%;
           
         
              }
            
            .lbl
            {
                
                font-size:medium;
                color:gray;
                
                }
                .tblhead
                 {
                    background:#ff6600;
                   color:#fff;
                   font-weight:bold;
                   text-align:center;
                  
     
               }
     .tob_block {
         height: 112px;
          background-color:lightgray;
     }
     .auto-style9 {
         padding:20px;
         
         width: 100%;
         background-color:lightgray;
         height: 105px;
     }
     .auto-style13 {
         width: 329px;
         text-align: center;
     }
     .auto-style14 {
         width: 737px;
         text-align: right;
     }
     .auto-style15 {     
             text-align: center;
     }
     .auto-style16 {
         width: 737px;
         height: 49px;
     }
     .auto-style17 {
         width: 329px;
         text-align: center;
         height: 49px;
     }
   


     .auto-style18 {
         text-align: center;
         width: 232px;
     }

     input[type="text"] {
  width: 100%;
  border: 2px solid #aaa;
  border-radius: 20px;
  margin: 8px 0;
  outline: none;
  padding: 8px;
  box-sizing: border-box;
  transition: 0.3s;
}

input[type="text"]:focus {
  border-color: dodgerBlue;
  box-shadow: 0 0 8px 0 dodgerBlue;
}

.inputWithIcon input[type="text"] {
  padding-left: 40px;
}

.inputWithIcon {
  position: relative;
         top: 0px;
         left: 0px;
         height: 90px;
         width: 725px;
     }

.inputWithIcon i {
  position: absolute;
  left: 4px;
  top: 16px;
  padding: 9px 8px;
  color: #aaa;
  transition: 0.3s;
         height: 26px;
     }

.inputWithIcon input[type="text"]:focus + i {
  color: dodgerBlue;
}

.inputWithIcon.inputIconBg i {
  background-color: #aaa;
  color: #fff;
  padding: 9px 4px;
  border-radius: 4px 0 0 4px;
}

.inputWithIcon.inputIconBg input[type="text"]:focus + i {
  color: #fff;
  background-color: dodgerBlue;
}

   


     .auto-style19 {
         width: 458px;
     }

     .bottm_submit{

         background-color:lightgrey;
         margin:0px;
     }
 
     }
  
 


   


     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="counter" >
    
    <div class="tob_block">





        <table class="auto-style9">
            <tr>
                <td class="auto-style17">
                   <h2>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search meal :</h2> 

                </td>
                <td class="auto-style16"style="padding-top: 20px;padding-left: 7px;">
                   
                   <div class="inputWithIcon">
                    <asp:TextBox ID="TXT_Search_Meal" runat="server" Height="53px" Width="470px" placeholder="Search Here....." ></asp:TextBox>
                    <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
                   &nbsp;
                    <asp:Button ID="btn_Search" runat="server" Height="47px" Text="Search" Width="185px" style="border-radius: 25px;" Class="btn" OnClick="btn_Search_Click"/>
                   </div>
                </td>
                <td class="auto-style18" rowspan="2">
                </td>
                <td class="auto-style15" rowspan="2">
                    <p style="font-size: 30px; font-style: italic; width: 395px; height: 43px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" CommandName="submit" Height="33px" ImageUrl="/photos/cart2.png" ToolTip="submit" Width="68px" />
                     &nbsp;Shopping Cart (<asp:Label ID="lbl_count" runat="server" style="font-size: 30px; font-style: italic;"></asp:Label> )  </p>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            </table>
  </div>




 			<div id="products">
				<h2>Meals  </h2>
                <table class="style1">
                    <tr>
                        <td class="auto-style19">
                            <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" RepeatDirection="Horizontal"  Width="400px"   onitemcommand="Button1_Click">
                                <ItemTemplate>
                                   <table class="dtbl">
                                        <tr>
                                            <td class="auto-style3">
                                               
                                    <div class="dimg">
                                         <img src="/photos/<%#Eval("MEAL_IMAGE") %>" style="width: 446px; height: 361px; text-align: center;border-radius: 25%; " />
                                    </div> 
                                        <table class="style1" style="width: 448px; height: 278px;">
                                            <tr>
                                                <td colspan="2" class="auto-style5">
                                                    <asp:Label ID="lbllname" runat="server" Text='<%# Eval("MEAL_NAME") %>' Font-Italic="True" Font-Overline="False" Font-Underline="False" Font-Bold="True" Font-Size="25pt"></asp:Label></td>
                                            </tr>

                                            <tr>
                                                <td colspan="2" class="auto-style4">
                                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("MEAL_DESCRIPTION") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">
                                                   <div class="price"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price : $ <asp:Label ID="lblprice" runat="server" Text='<%# Eval("MEAL_PRICR") %>' Font-Size="20pt"  Font-Names="Arial"></asp:Label></div>
                                                </td>
                                                <td class="auto-style1">
                                                    <asp:Button ID="Button1" runat="server" Class="btn"  
                                                        CommandArgument='<%# Eval("MEAL_ID") + ","  + Eval("MEAL_IMAGE") + "," +  Eval("MEAL_NAME") + "," + Eval("MEAL_DESCRIPTION") + "," + Eval("MEAL_PRICR")  %>' Text="Buy" Height="51px" 
                                                        Width="150px" style="border-radius: 25%;" />
                                                </td>
                                            </tr>
                                        </table>
                                     
                              </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                              
                            
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
			</div>
         <div class="bottm_submit">

             <center>

            
                     <p style="font-size: 45px; margin:0px; height: 80px; width: 733px;">
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="submit" OnClick="ImageButton1_Click" Height="58px" ImageUrl="/photos/cart2.png" ToolTip="submit" Width="99px" />
                     &nbsp;Shopping Cart ( <asp:Label ID="lbl_count2" runat="server" Font-Size="35pt"></asp:Label> )  </p>
              </center>
 
          </div>
		</div>
   

</asp:Content>
