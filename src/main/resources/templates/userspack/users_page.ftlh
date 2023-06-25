<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
</head>

<style>
    * {
        margin: 0;
    }
    .header{
        width: 100%;
        height: 100px;
        background-size: cover;
        background-color: #0a013a;

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
        background: #0a013a;
        -moz-border-radius: 0 3px 3px 0;
        -webkit-border-radius: 0 3px 3px 0;
        border-radius: 0 3px 3px 0;
        text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);
    }

    .form-wrapper button:hover{
        background: #282570;
    }

    .form-wrapper button:active,
    .form-wrapper button:focus{
        background: #09024d;
    }

    .form-wrapper button:before {
        content: '';
        position: absolute;
        border-width: 8px 8px 8px 0;
        border-style: solid solid solid none;
        border-color: transparent #282570 transparent;
        top: 12px;
        left: -6px;
    }

    .form-wrapper button:hover:before{
        border-right-color: #282570;
    }

    .form-wrapper button:focus:before{
        border-right-color: #282570;
    }

    .form-wrapper button::-moz-focus-inner {
        border: 0;
        padding: 0;
    }

    table {
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        text-align: left;
        margin: auto;
        border-collapse: separate;
        border-spacing: 5px;
        background: #ECE9E0;
        color: #656665;
        border: 16px solid #ECE9E0;
        border-radius: 20px;
    }
    th {
        font-size: 18px;
        padding: 10px;
    }
    td {
        background: #a0a0b7;
        padding: 10px;
    }

    .four {
        background: #F4F7EE;
        padding: 50px 20px;
        text-align: center;
    }
    .four h1 {
        font-family: 'Merriweather', serif;
        position: relative;
        color: #09024d;
        font-size: 50px;
        font-weight: normal;
        padding: 8px 20px 7px 20px;
        border-top: 4px solid;
        border-left: 4px solid;
        display: inline-block;
        margin: 0;
        line-height: 1;
    }

    .four h3 {
        font-family: 'Merriweather', serif;
        position: relative;
        color: #0a013a;
        border: 4px solid;
        font-size: 30px;
        font-weight: normal;
        padding: 8px 20px 7px 20px;
        display: inline-block;
        margin: 0;
        line-height: 1;
    }
    .four h1:before {
        content: "";
        position: absolute;
        width: 28px;
        height: 28px;
        top: -28px;
        left: -28px;
        border: 4px solid #09024d;
        box-sizing: border-box;
    }
    @media (max-width: 450px) {
        .four h1 {font-size: 36px;}
        .four h1:before {
            width: 20px;
            height: 20px;
            top: -20px;
            left: -20px;
        }
    }
    .toRegister{
        border: none;
        padding: 30px 100px;
        border-radius: 8px;
        display: block;
        margin: auto;
        background: #0a013a;
        color: #fff;
        font-weight: bold;
        -webkit-box-shadow: 0px 9px 15px -11px rgb(9, 2, 77);
        -moz-box-shadow: 0px 9px 15px -11px rgb(9, 2, 77);
        box-shadow: 0px 9px 15px -11px rgb(10, 1, 58);
    }
    .background-link{
        background-color: #f4f7ee;
    }
</style>
<body>

<div class="header">
    <div class="header_content">
        <a href="/cars"><img style="" src="https://i.ibb.co/Dwp3KSS/carlogo.png"  alt="logo-Car4you" border="0"></a>


   <#--     <form action="">
            <button><a href="/signIn">Sign in</a></button>
            <button><a href="/addUser">Sign Up</a></button>
        </form>-->

    </div>
</div>


<div class="four"><h1>Welcome to the Admin Panel  </h1></div>
<div class="four"><h3>Link to the page of adding a car to the site</h3></div>
<div class="background-link">
<button class="toRegister"><a style="  text-decoration: none; color: white;" href="/addCar">CREATE CAR</a></button>
</div>
<div class="four"><h3>List of users who are in the site's database </h3></div>
<div class="background-link">
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Role</th>
            <th>status</th>
        </tr>

        <#list users as user>

            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td>${user.password}</td>
                <td>${user.role}</td>
                <td>${user.status}</td>
                <td><a href="/deleteUser/${user.id}">DELETE</a></td>

            </tr>
        </#list>
    </table>

</div>


</body>
</html>