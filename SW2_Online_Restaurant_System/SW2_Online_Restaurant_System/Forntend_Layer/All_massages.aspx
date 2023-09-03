<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="All_massages.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.All_massages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <style>
       
.con {
    max-width: 1000px !important;
    margin:auto;
    margin-top:0;
    font-family:sans-serif;
    letter-spacing:0.5px;
    padding-top:4%;
        
    
}
.con img {
    max-width: 100%;
    border-radius:50%;
}
.msg-header {
    border:1px solid #ccc;
    width:100%;
    height:10%;
    border-bottom:none;
    display:inline-block;
    background-color:#007bff;

}


.msg-header-img {
    border-radius:50%;
    width:40px;
    margin-left:5%;
    margin-top:12px;
    float:left;
}

.con .active {
    width:120px;
    float:left;
    margin-top:10px;

}
 .con   .active h4 {
        font-size:20px;
        margin-left:10px;
        color:#fff;

    }
  .con  .active h6 {
        font-size:10px;
        margin-left:10px;
        line-height:2px;
        color:#fff;

    }

.header-icons {
    width:120px;
    float:right;
    margin-top:12px;
    margin-right:10px;

}
    .header-icons .fa {
        color:#fff;
        cursor:pointer;
        margin:10px;

    }
.chat-page {
    padding: 0 0 10px 0;

}
.msg-inbox {
    border:1px solid #ccc;
    overflow:hidden;
    padding-bottom:30px;
    width:1000px;
}
.chats {
    padding:30px 15px 0 25px;

}
.msg-page {
    height:516px;
    overflow-y:auto;

}
.received-chats-img {
    display:inline-block;
    width:20px;
    float:left;

}
.recieved-msg {
    display:inline-block;
    padding:0 0 0 10px;
    vertical-align:top;
    width:92%;
}
.received-msg-inbox {
width:57%;

}
.received-msg-inbox p {
    background:#efefef none repeat scroll 0 0;
    border-radius:10px;
    color:#646464;
    font-size:14px;
    margin:0px;
    padding:5px 10px 5px 12px;
    width:100%;

}
.time {
    color:#777;
    display:block;
    font-size:12px;
    margin:8px 0 0 ; 
}

.msg-bottom {
position:relative;
height:10%;
background-color:#007bff;
}
.input-group {
    float:right;
    margin-top:13px;
    margin-right:20px;
    outline:none !important;
    border-radius:20px;
    width:61% !important;
    background-color:#fff;

}
.form-control {
border:none !important;
border-radius:20px !important;
}
.input-group-text {
background:transparent !important;
border:none !important;
}


 </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="background-color:#b3b3cc;">
        <div class="con">
            <asp:DataList ID="DataList1" runat="server" Width="500px" >
                    <ItemTemplate>       
                         <div class="msg-header" >
                             <div class="msg-header-img">
                                 <img src="../photos/avatar.png" />
                             </div>
                         <div class="active">
                             <h4><%#Eval("SENDER_NAME") %></h4>
                             <h6> <%#Eval("SENDER_MAIL") %></h6>
                         </div>
                           <div class="header-icons">
                               <i class="fa fa-phone"></i> 
                               <i class="fa fa-video-camera"></i> 
                               <i class="fa fa-info-circle" ></i>
                           </div>
                         </div>
                         <div class="chat-page"  >
                             <div class="msg-inbox" style="background-color:#1b0c40;" >
                               
                                 <div class="chats" >
                                     <div class="msd-page">

                                         <div class="received-chats">
                                             <div class="received-chats-img">
                                                 <img src="../photos/avatar.png"/>
                                             </div>
                                         </div>
                                         
                                         <div class="recieved-msg">
                                             <div class="received-msg-inbox">
                                                 <p><%#Eval("MESSAGE_DATA") %></p>
                                             </div>
                                             <span class="time">  11:01pm </span>
                                         </div>
                                     </div>
                                 </div>
                                 
                                 <div class="input-group">
                                     
                             <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="write message..."> </asp:TextBox>

                             <div class="input-group-append">
                                 <button runat="server" id="buttonclick">
                                     <span class="input-group-text"><i class="fa fa-paper-plane"></i></span>
                                 </button>
                             </div>
                                     
                             </div>
                         </div>
                                 
                         </div>

                    </ItemTemplate>
            </asp:DataList>
    </div>
  </div>
</asp:Content>
