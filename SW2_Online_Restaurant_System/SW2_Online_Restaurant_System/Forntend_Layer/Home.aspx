<%@ Page Title="" Language="C#" MasterPageFile="~/Forntend_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SW2_Online_Restaurant_System.Forntend_Layer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
	.container {
    margin: 0px;
    width: 100%;
}
.best {
    margin-top: 50px;
}
    .best h3 {
        text-align: center;
        font-size: 50px;
        font-weight: 700;
        color: #1a0d01;
        font-family: montserrat,sans-serif;
        text-transform: uppercase;
        margin-bottom: 50px;
    }
    .best .products {
        width: 1140px;
        overflow: hidden;
        display: block;
        margin: auto;
        font-family: raleway,sans-serif;
        margin-bottom: 60px;
    }
        .best .products .singleProduct {
            float: left;
            margin-right: 30px;
            margin-bottom: 50px;
        }
            .best .products .singleProduct img {
                margin: 0px;
                padding: 0px;
                float: left;
            }
            .best .products .singleProduct .info {
                margin: 0px;
                padding-left: 20px;
                overflow: hidden;
                width: 354px;
                float: left;
                margin-top: 10px;
            }
                .best .products .singleProduct .info h3 {
                    margin: 0px;
                    padding: 0px;
                    font-size: 30px;
                    color: #1a0d01;
                    font-weight: 700;
                    font-family: montserrat,sans-serif;
                    float: left;
                }
                .best .products .singleProduct .info p {
                    font-size: 18px;
                    font-weight: 400;
                    line-height: 28px;
                    margin-top: 45px;
                    margin-bottom: 6px;
                    color: #6e6e6e;
                    font-family: montserrat,sans-serif;
                    line-height: 1.6;
                    height: 45px;
                }
        .best .products .order {
            display: block;
            width: 100%;
            margin-top: 882px;
            line-height: 0.5;
        }
            .best .products .order a {
                display: block;
                text-decoration: none;
                margin: 0px auto;
                height: 50px;
                text-align: center;
                background-color: #fff;
                border-color: #f0542c;
                color: #f0542c;
                border: 1px solid #f0542c;
                font-weight: 600;
                font-size: 18px;
                width: 500px;
                font-family: montserrat,sans-serif;
                border-radius: 50px;
                padding: 22px 44px 0px;
                cursor: pointer;
                background: 0 0;
                margin-bottom: 60px;
            }
                .best .products .order a:hover {
                    color: #fff;
                    background-color: #f0542c;
                    transition: .5s;
                }
.burgerPres {
    display: block;
    overflow: hidden;
    width: 100%;
    margin-bottom: 60px;
    height: 530px;
}
    .burgerPres .singleBurger {
        position: relative;
        width: 50%;
        float: left;
        overflow: hidden;
        background-color: #000000;
    }
        .burgerPres .singleBurger img {
            position: relative;
            width: 100%;
            opacity: 40%;
        }
            .burgerPres .singleBurger img:hover {
                transform: scale(1.15);
                transition: .7s;
            }
        .burgerPres .singleBurger .burgerInfo {
            position: absolute;
            bottom: 60px;
            left: 70px;
            font-family: raleway,sans-serif;
        }
            .burgerPres .singleBurger .burgerInfo span {
                font-size: 30px;
                font-weight: 700;
                color: #f0542c;
                font-family: montserrat,sans-serif;
                display: block;
                margin-bottom: 3px;
                float: left;
            }
            .burgerPres .singleBurger .burgerInfo h3 {
                font-size: 34px;
                color: #fff;
                position: relative;
                margin-bottom: 0px;
            }
            .burgerPres .singleBurger .burgerInfo pre {
                font-size: 16px;
                color: #e8e8e8;
                line-height: 28px;
                position: relative;
                z-index: 1;
                margin-top: 9px;
                margin-bottom: 18px;
                margin-left: 15px;
            }
            .burgerPres .singleBurger .burgerInfo a {
                text-decoration: none;
                display: inline-block;
                border-radius: 30px;
                padding: 9px 30px;
                cursor: pointer;
                border: 1px solid transparent;
                text-align: center;
                color: #fff;
                font-family: montserrat,sans-serif;
                font-size: 16px;
                background-color: #f2c64d;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
			<div class="best">
				<h3>Best Ever Burgers</h3>
				<div class="products">
					<div class="singleProduct">
						<img src="img/burger/1.png"/>
						<div class="info">
							<h3>Beefy Burgers</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="singleProduct">
						<img src="img/burger/2.png"/>
						<div class="info">
							<h3>Burger Boys</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="singleProduct">
						<img src="img/burger/3.png"/>
						<div class="info">
							<h3>Burger Bizz</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="singleProduct">
						<img src="img/burger/4.png"/>
						<div class="info">
							<h3>Crackles Burger</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="singleProduct">
						<img src="img/burger/5.png"/>
						<div class="info">
							<h3>Bull Burgers</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="singleProduct">
						<img src="img/burger/6.png"/>
						<div class="info">
							<h3>Rocket Burgers</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="singleProduct">
						<img src="img/burger/7.png"/>
						<div class="info">
							<h3>Smokin Burger</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="singleProduct">
						<img src="img/burger/8.png"/>
						<div class="info">
							<h3>Delish Burger</h3>
							<p>Great way to make your business appear trust and relevant.</p>
						</div>
					</div>
					<div class="order">
						<a href="menu.aspx" id="link">Make Order</a>
					</div>
				</div>
			</div>
			<div class="burgerPres">
				<div class="singleBurger">
					<img src="img/burgers/1.png"/>
					<div class="burgerInfo">
						<span>$20</span>
                        <br />
                        <br />
						<h3>The Burger President</h3>
						<pre>Great way to make your business appear trust 
and relevant.</pre>
						<a href="menu.aspx">Order Now</a>
					</div>
				</div>
				<div class="singleBurger">
					<img src="img/burgers/2.png"/>
					<div class="burgerInfo">
						<span>$20</span>
                        <br />
                        <br />
						<h3>The Burger President</h3>
						<pre>Great way to make your business appear trust 
and relevant.</pre>
						<a href="menu.aspx">Order Now</a>
					</div>
				</div>
			</div>
		</div>
</asp:Content>
