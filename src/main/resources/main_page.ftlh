<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Main</title>
</head>


<style>
    @import url('https://fonts.googleapis.com/css2?family=Alkatra:wght@500;600;700&family=Raleway:wght@100&display=swap');
    * {
        margin: 0;
    }
    body {
        background-color: #020118;
    }
    .header{
        width: 100%;
        height: 200px;
        background-size: cover;
        background-color: #0f2940;

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

   .car_content{
       display: grid;
       grid-template-columns: 1fr 1fr ;
       width: 100vw;
       max-width: 1150px;
       margin: 0 auto;
       grid-row-gap: 50px;
       grid-column-gap: 50px;

   }

   .car__lm{
       border: 1px solid black;
       border-radius: 1px;
       margin-top: 60px;
       display: flex;
       flex-direction: column;

       border-radius: 30px 30px 30px 30px;
       -moz-border-radius: 30px 30px 30px 30px;
       -webkit-border-radius: 30px 30px 30px 30px;
       border: 0px solid #000000;
       background-color: #dfdee7;

       height: 490px;
       width: 575px;

   }
   .car__lm img{
       width: inherit;
       object-fit: cover;
       margin-left: 10px;
       height: 386px;
       width: 553px;

       border-radius: 10px 10px 10px 10px;
       -moz-border-radius: 10px 10px 10px 10px;
       -webkit-border-radius: 10px 10px 10px 10px;
       border: 0px solid #000000;
   }
   .car__lm h2 {
       font-family: 'Alkatra', cursive;
       font-family: 'Raleway', sans-serif;
       font-family: 'Montserrat', sans-serif;
       padding: 10px;
       text-align: center;
       margin: 0;
   }
   .car__lm h3 {
       font-family: 'Alkatra', cursive;
       font-family: 'Raleway', sans-serif;
       font-family: 'Montserrat', sans-serif;
       padding: 10px;
       text-align: center;
       font-weight: normal;
       margin: 0;
   }
    .cf:before, .cf:after{
        content:"";
        display:table;
    }

    .cf:after{
        clear:both;
    }

    .cf{
        zoom:1;
    }

    .background{
        background: url("https://i.ibb.co/bHZHxnw/form-background.jpg");
        padding: 100px 0 50px 0;
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
    }
    .form-wrapper {
        width: 700px;
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
        width: 580px;
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
        background: #F35215;
        -moz-border-radius: 0 3px 3px 0;
        -webkit-border-radius: 0 3px 3px 0;
        border-radius: 0 3px 3px 0;
        text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);
    }

    .form-wrapper button:hover{
        background: #e54040;
    }

    .form-wrapper button:active,
    .form-wrapper button:focus{
        background: #c42f2f;
    }

    .form-wrapper button:before {
        content: '';
        position: absolute;
        border-width: 8px 8px 8px 0;
        border-style: solid solid solid none;
        border-color: transparent #d83c3c transparent;
        top: 12px;
        left: -6px;
    }

    .form-wrapper button:hover:before{
        border-right-color: #e54040;
    }

    .form-wrapper button:focus:before{
        border-right-color: #c42f2f;
    }

    .form-wrapper button::-moz-focus-inner {
        border: 0;
        padding: 0;
    }
    .bgHeader h1 {
        font-family: 'Alkatra', cursive;
        font-family: 'Raleway', sans-serif;
        font-family: 'Montserrat', sans-serif;
        font-size: 70px;
        margin-left: 50%;
        color: white;
    }
    .bgHeader h2 {
        font-family: 'Alkatra', cursive;
        font-family: 'Raleway', sans-serif;
        font-family: 'Montserrat', sans-serif;
        font-size: 65px;
        margin-left: 55%;
        color: white;
    }
    .bgHeader{
        background-image: URL("https://i.ibb.co/Q9xPfFZ/756106251367023.jpg");
        height: 1000px;
        background-repeat: no-repeat;
        background-size: 100% 1100px;
    }
.imgheader {
    padding-top: 70px;
    padding-left: 70px;
    width: 300px;
    height: 100px;
    }
.maincontent {
    background-color: #020118;
}
</style>
<body>
<div >

<div class="header">
    <div class="header_content">
      <a href="/cars"><img style="padding-top:70px " src="https://i.ibb.co/Dwp3KSS/carlogo.png"  alt="logo-Car4you" border="0"></a>


    <form action="">
        <a href="/signIn"><img class = "imgheader" src="https://i.ibb.co/Tg42jLc/1000997-removebg-preview.png" alt=""></a>
       <a href="/addUser"><img class = "imgheader" src="https://i.ibb.co/7yh8J2f/111.png" alt=""></a>
    </form>

    </div>

</div>
    <div class = "bgHeader">
        <h1>Car4You</h1>
        <h2>Car for your dream</h2>
    </div>
 <#--  <div class="background">
       <form class="form-wrapper cf"  method="post" action="filter" >
           <input type="text" name="filter" placeholder="Search by brand..." required>
           <button type="submit">Search</button>
       </form>
   </div>-->

<div class="maincontent">
    <form class="form-wrapper cf"  method="post" action="filter" >
        <input type="text" name="filter" placeholder="Search by brand..." required>
        <button type="submit">Search</button>
    </form>
 <div class="car_content">

     <#list cars as car>
     <div class="car__lm">
         <h2 > ${car.carBrand}
         ${car.carModel} </h2>
         <h3> ${car.price} $ |
         ${car.engineType} |
         ${car.year} |
         ${car.mileageCar} km</h3>


        <a href="/car/${car.id}"><img  src="${car.imgURL}"></a>


     </div>
      </#list>

 </div>
</div>
</div>
</body>
</html>