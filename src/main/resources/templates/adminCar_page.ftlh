<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<style>
    * {
        margin: 0;
    }
    .header{
        width: 100%;
        height: 200px;
        background-size: cover;
        background-color: #0f2940;

    }

    .imgheader {
        padding-top: 70px;
        padding-left: 70px;
        width: 220px;
        height: 70px;
    }
    .header form a{
        text-decoration: none;
        color: white;
    }
    .header .header_content{
        width:1000px;
        display: flex;
        max-height: 60px;
        margin: 0 auto;
        justify-content: space-between;
        align-items:center;
    }
    .header .header_content .textblock{
        display: block;
        line-height:5px;
    }
    .header_content img{
        margin-top: 65px;
        width: inherit;
        object-fit: cover;
        max-height: 200px;
        max-width: 200px;
    }
    .header_content button{
        color: #ffffff;
        font-size: 20px;

        margin-right: 20px;
        background-color: rgba(28,28,28,0);
        border: 0;
        margin-top: 10px;
    }
    .header .header_content .textblock h1{
        font-size: 28px;
        font-family: 'Playfair Display', serif;
        color: #807e7e;
    }
    .header .header_content .textblock img{
        width: 200px;
    }


    .background{
        background: url("https://i.ibb.co/bHZHxnw/form-background.jpg");
        padding: 100px 0 50px 0;
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
    }
    .form-wrapper {
        width: 450px;
        padding: 15px;
        margin: 100px auto 50px auto;
        background: #444;
        background: rgba(0,0,0,.2);
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
        box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
    }


    .form-wrapper input {
        width: 330px;
        height: 20px;
        padding: 10px 5px;
        float: left;
        font: bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma';
        border: 0;
        background: #eee;
        -moz-border-radius: 3px 0 0 3px;
        -webkit-border-radius: 3px 0 0 3px;
        border-radius: 3px 0 0 3px;
    }


    .form-wrapper input:focus {
        outline: 0;
        background: #fff;
        -moz-box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
        -webkit-box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
        box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
    }

    .form-wrapper input::-webkit-input-placeholder {
        color: #999;
        font-weight: normal;
        font-style: italic;
    }

    .form-wrapper input:-moz-placeholder {
        color: #999;
        font-weight: normal;
        font-style: italic;
    }

    .form-wrapper input:-ms-input-placeholder {
        color: #999;
        font-weight: normal;
        font-style: italic;
    }

    .form-wrapper button {
        overflow: visible;
        position: relative;
        float: right;
        border: 0;
        padding: 0;
        cursor: pointer;
        height: 40px;
        width: 110px;
        font: bold 15px/40px 'lucida sans', 'trebuchet MS', 'Tahoma';
        color: #fff;
        text-transform: uppercase;
        background: #09024d;
        -moz-border-radius: 0 3px 3px 0;
        -webkit-border-radius: 0 3px 3px 0;
        border-radius: 0 3px 3px 0;
        text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);
    }

    .form-wrapper button:hover{
        background: #3c3a7e;
    }

    .form-wrapper button:active,
    .form-wrapper button:focus{
        background: #0a013a;
    }

    .form-wrapper button:before {
        content: '';
        position: absolute;
        border-width: 8px 8px 8px 0;
        border-style: solid solid solid none;
        border-color: transparent #3c3a7e transparent;
        top: 12px;
        left: -6px;
    }

    .form-wrapper button:hover:before{
        border-right-color: #3c3a7e;
    }

    .form-wrapper button:focus:before{
        border-right-color: #3c3a7e;
    }

    .form-wrapper button::-moz-focus-inner {
        border: 0;
        padding: 0;
    }

    img{
        width: 100%;
    }
    .login {
        padding: 120px;
        height: 1200px;
        width: 100%;
        background: lightgray;
        position: relative;
    }
    .login_box {
        width: 1050px;
        height: 1400px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        background: #fff;
        border-radius: 10px;
        box-shadow: 1px 4px 22px -8px #0004;
        display: flex;
        overflow: hidden;
    }
    .login_box .left{
        width: 50%;
        height: 100%;
        padding: 25px 25px;

    }
    .login_box .right{
        width: 50%;
        height: 100%
    }
    .left .top_link a {
        color: #09024d;
        font-weight: 400;
    }
    .left .top_link{
        height: 20px
    }
    .left .contact{
        display: flex;
        align-items: center;
        justify-content: center;
        align-self: center;
        height: 100%;
        width: 73%;
        margin: auto;
    }
    .left h3{
        text-align: center;
        margin-bottom: 40px;
    }
    .left input {
        border: none;
        width: 80%;
        margin: 10px 0px;
        border-bottom: 1px solid #0a013a;
        padding: 10px 9px;
        margin-bottom: 20px;
        width: 100%;
        overflow: hidden;
        background: transparent;
        font-weight: 600;
        font-size: 14px;
    }
    .left{
        background: linear-gradient(-45deg, #09024d, #fff);
    }
    .submit {
        border: none;
        padding: 15px 70px;
        border-radius: 8px;
        display: block;
        margin: auto;
        margin-top: 20px;
        background: #0a013a;
        color: #fff;
        font-family: 'Alkatra', cursive;
        font-family: 'Raleway', sans-serif;
        font-size: 19px;
        font-weight: bold;
        -webkit-box-shadow: 0px 9px 15px -11px rgb(9, 2, 77);
        -moz-box-shadow: 0px 9px 15px -11px rgb(10, 1, 58);
        box-shadow: 0px 9px 15px -11px rgb(9, 2, 77);
    }
    .toRegister{
        border: none;
        padding: 15px 70px;
        border-radius: 8px;
        display: block;
        margin: auto;
        margin-top: 20px;
        background: #f35215;
        color: #fff;
        font-weight: bold;
        -webkit-box-shadow: 0px 9px 15px -11px rgb(243, 82, 21);
        -moz-box-shadow: 0px 9px 15px -11px rgb(243, 82, 21);
        box-shadow: 0px 9px 15px -11px rgb(243, 82, 21);
    }



    .right {
        background: linear-gradient(212.38deg, rgb(255, 255, 255) 0%, rgb(9, 2, 77) 100%),url(https://oceanica.com.ua/wp-content/uploads/2020/06/dostavka-bu-avtomobilej-iz-Evropy-i-SSHA-1024x760.jpg);
        background-position: center center;
        color: #fff;
        position: relative;
    }

    .right .right-text{
        height: 100%;
        position: relative;
        transform: translate(0%, 45%);
    }
    .right-text h2{
        display: block;
        width: 100%;
        text-align: center;
        font-size: 50px;
        font-weight: 500;
    }
    .right-text h5{
        display: block;
        width: 100%;
        text-align: center;
        font-size: 19px;
        font-weight: 400;
    }

    .right .right-inductor{
        position: absolute;
        width: 70px;
        height: 7px;
        background: #fff0;
        left: 50%;
        bottom: 70px;
        transform: translate(-50%, 0%);
    }
    .top_link img {
        width: 28px;
        padding-right: 7px;
        margin-top: -3px;
    }


    @import url('https://fonts.googleapis.com/css2?family=Alkatra:wght@500;600;700&family=Raleway:wght@100&display=swap');

p{
    font-family: 'Alkatra', cursive;
    font-family: 'Raleway', sans-serif;
    font-size: 19px;
}

h3 {
    font-family: 'Alkatra', cursive;
    font-family: 'Raleway', sans-serif;
    font-size: 25px;
}


</style>

<body>
<div class="header">
    <div class="header_content">
        <a href="/cars"><img style="padding-top:70px " src="https://i.ibb.co/Dwp3KSS/carlogo.png"  alt="logo-Car4you" border="0"></a>


        <form action="">
            <a href="/signIn"><img class = "imgheader" src="https://i.ibb.co/Tg42jLc/1000997-removebg-preview.png" alt=""></a>
            <a href="/addUser"><img class = "imgheader" src="https://i.ibb.co/7yh8J2f/111.png" alt=""></a>
        </form>

    </div>

</div>
<section class="login">
    <div class="login_box">
        <div class="left">
            <div class="contact">
<form class="form-signUp" method="post" action="/addCar" >
    <h3>Add Car to database</h3>
    <p>Brand</p>
    <input title="Brand" type="text" name="carBrand">

    <p>Model</p>
    <input title="Model" type="text" name="carModel">

    <p>Number</p>
    <input title="Number" type="text" name="carNumber">

    <p>Type</p>
    <input title="Type" type="text" name="carType">

    <p>Engine type</p>
    <input title="Engine type" type="text" name="engineType">

    <p>Fuel brand</p>
    <input title="Fuel brand" type="text" name="fuelBrand">

    <p>Transmission</p>
    <input title="Transmission" type="text" name="transmission">

    <p>Image URL</p>
    <input title="Image URL" type="text" name="imgURL">

    <p>Price</p>
    <input title="Price" type="text" name="price">

    <p>Description</p>
    <input title="Description" type="text" name="description">

    <p>Number</p>
    <input title="mileageCar" type="text" name="mileageCar">

    <p>Year</p>
    <input title="year" type="text" name="year">

    <button class="submit">LET'S GO</button>

</form>
        </div>
    </div>
    <div class="right">
        <div class="right-text">
            <h2>CAR4YOU</h2>
            <h5>Car for your dream</h5>
        </div>
        <div class="right-inductor"><img src="https://lh3.googleusercontent.com/fife/ABSRlIoGiXn2r0SBm7bjFHea6iCUOyY0N2SrvhNUT-orJfyGNRSMO2vfqar3R----X1SNdkh--=w1920-h979-ft" alt=""></div>
    </div>
    </div>
</section>
</body>
</html>