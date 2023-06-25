<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create user page</title>
</head>
<body>
<#--
<form name="user" action="/addUser" method="post">
    <p>First Name</p>
    <input title="First Name" type="text" name="firstName">

    <p>Last Name</p>
    <input title="Last Name" type="text" name="lastName">

    <p>Email</p>
    <input title="Email" type="email" name="email">

    <p>Password</p>
    <input title="password" type="password" name="password">
    <input type="submit" value="OK">
</form>-->

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

    img{
        width: 100%;
    }
    .login {
        height: 1000px;
        width: 100%;
        background: lightgray;
        position: relative;
    }
    .login_box {
        width: 1050px;
        height: 600px;
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
        width: 41%;
        height: 100%;
        padding: 25px 25px;

    }
    .login_box .right{
        width: 59%;
        height: 100%
    }
    .left .top_link a {
        color: #0a013a;
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
        margin: 15px 0px;
        border-bottom: 1px solid #0f2940;
        padding: 7px 9px;
        width: 100%;
        overflow: hidden;
        background: transparent;
        font-weight: 600;
        font-size: 14px;
    }
    .left{
        background: linear-gradient(-45deg, #0f2940, #fff);
    }
    .submit {
        border: none;
        padding: 15px 70px;
        border-radius: 8px;
        display: block;
        margin: auto;
        margin-top: 20px;
        background: #1703a8;
        color: #fff;
        font-weight: bold;
        -webkit-box-shadow: 0px 9px 15px -11px rgb(8, 2, 47);
        -moz-box-shadow: 0px 9px 15px -11px rgb(243, 82, 21);
        box-shadow: 0px 9px 15px -11px rgb(10, 1, 58);
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
        background: linear-gradient(212.38deg, rgb(255, 255, 255) 0%, rgb(10, 1, 58) 100%),url(https://oceanica.com.ua/wp-content/uploads/2020/06/dostavka-bu-avtomobilej-iz-Evropy-i-SSHA-1024x760.jpg);
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




</style>
<#--
<div class="container">
    <form class="form-signin" method="post" action="/signIn">
        <h2 class="form-signin-heading">Please sign in</h2>
        <p>
            <label for="username" class="sr-only">Username</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
        </p>
        <p>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        </p>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</div>-->
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
            <div class="top_link"><a href="/cars"><img src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download" alt="">Return home</a></div>
            <div class="contact">
                <form class="form-signUp" method="post" action="/addUser" >
                    <h3>SIGN UP</h3>
                    <p>First Name</p>
                    <input title="First Name" type="text" name="firstName">

                    <p>Last Name</p>
                    <input title="Last Name" type="text" name="lastName">

                    <p>Email</p>
                    <input title="Email" type="email" name="email">

                    <p>Password</p>
                    <input title="password" type="password" name="password">
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

</body>
</html>