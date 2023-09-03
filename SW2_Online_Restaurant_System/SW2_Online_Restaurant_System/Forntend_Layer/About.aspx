<%@ Page Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
			margin: 0px;
			width: 100%;
		}
		.head {
			margin: 0px;
			width: 100%;
			position: relative;
			height: 400px;
			background-color: #040e27;
			overflow: hidden;
		}
		.head img {
			position: relative;
			width: 100%;
			opacity: 65%;
		}
		.head .text {
			position: absolute;
			width: 100%;
			height: 200px;
			bottom: 60px;
			left: 70px;
		}
		.head .text h3 {
			position: relative;
			margin-bottom: 0px;
			text-align: center;
			font-size: 70px;
			color: #fff;
			font-family: paytone one,sans-serif;
			text-transform: uppercase;
			font-family: montserrat,sans-serif;
		}
		.about {
			width: 1140px;
			padding-right: 15px;
			padding-left: 15px;
			margin: 200px auto 50px auto;
			overflow: hidden;
		}
		.about img {
			float: left;
		}
            .about .info {
                float: left;
                display: block;
                color: #212529;
                text-align: left;
                width: 445px;
                margin-left: 50px;
            }
		.about .info span {
			color: #f2c64d;
			font-size: 30px;
			font-weight: 400;
			margin-bottom: 18px;
			display: block;
			font-family: pacifico,cursive;
			width: 132px;
		}
		.about .info h3 {
			font-size: 50px;
			font-weight: 700;
			line-height: 1.2;
			color: #1a0d01;
			font-family: montserrat,sans-serif;
			text-transform: uppercase;
		}
		.about .info p {
			font-size: 16px;
			line-height: 2;
			margin-top: 0;
			margin-bottom: 37px;
			color: #4d4d4d;
			font-family: raleway,sans-serif;
		}
        .galleryArea {
            margin-top: 100px;
            margin-bottom: 100px;
			display: block;
			overflow: hidden;
        }
            .galleryArea h3 {
                padding-right: 15px;
                padding-left: 15px;
                font-size: 50px;
                font-weight: 700;
                color: #1a0d01;
                font-family: montserrat,sans-serif;
                text-transform: uppercase;
                text-align: center;
				margin-bottom: 30px;
				margin-top: 30px;
            }
            .galleryArea .images .big {
                width: 39.6%;
                position: relative;
                height: 420px;
                float: left;
                overflow: hidden;
                border-right: 8px solid #fff;
                border-bottom: 8px solid #fff;
                display: block;
            }
		.galleryArea .images img {
			height: 100%;
			width: 100%;
		}
		.galleryArea .images .small {
			width: 29.55%;
			position: relative;
			height: 420px;
			float: left;
			overflow: hidden;
			border-right: 8px solid #fff;
			border-bottom: 8px solid #fff;
		}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">
			
			<div class="about">
				<img src="img1/about/1.png"/>
				<div class="info">
					<span>About Us</span>
					<h3>Best Burger
						<br/>
						in your city
					</h3>
					<p>
						There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate
					</p>
				</div>
			</div>
			<div class="galleryArea">
				<h3>Our Gallery</h3>
				<div class="images">
					<img src="img1/gallery/1.png" class="big"/>
					<img src="img1/gallery/2.png" class="small"/>
					<img src="img1/gallery/3.png" class="small"/>
					<img src="img1/gallery/4.png" class="small"/>
					<img src="img1/gallery/5.png" class="small"/>
					<img src="img1/gallery/6.png" class="big"/>
				</div>
			</div>
		</div>
</asp:Content>