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
    *{
        margin: 0;
    }
    .header{
        width: 100%;
        height: 200px;
        background-size: cover;
        background-color: #0f2940;

    }


    .header .header_content{
        width:1000px;
        display: flex;
        max-height: 60px;
        margin: 0 auto;
        justify-content: space-between;
        align-items:center;
    }

    .header .header_content a{
        text-decoration: none;
        color: white;
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







    body {
        background-color: #020118;
    }

    .imgheader {
        padding-top: 70px;
        padding-left: 70px;
        width: 300px;
        height: 100px;
    }

    .container{
        border: 1px solid black;
        border-radius: 1px;
        margin-top: 60px;
        padding: 40px;
        margin-left: 25%;

        border-radius: 30px 30px 30px 30px;
        -moz-border-radius: 30px 30px 30px 30px;
        -webkit-border-radius: 30px 30px 30px 30px;
        border: 0px solid #000000;
        background-color: #dfdee7;

        height: 830px;
        width: 927px;


    }

    @import url('https://fonts.googleapis.com/css2?family=Alkatra:wght@500;600;700&family=Raleway:wght@100&display=swap');


    .container h1 {
        font-family: 'Alkatra', cursive;
        font-family: 'Raleway', sans-serif;
        font-family: 'Montserrat', sans-serif;
        text-align: center;
    }

    .container h2 {
        margin-top: 10px;
        font-family: 'Montserrat', sans-serif;
        font-size: 22px;
    }


    .container p {
        font-family: 'Montserrat', sans-serif;
        font-size: 22px;
        margin-top: 15px;
        text-indent: 20px;
    }

    .container p .location_icon {
        width: 18px;
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


<div class="container">
    <h1>Інформація для вас</h1>
    <h2>Шановний клієнте,</h2>

    <p>
        Хочу щиро привітати Вас з вдалим вибором "${cars.carBrand} ${cars.carModel}" автомобіля на нашому сайті!
        Ви обрали чудову марку авто, яка неодмінно стане надійним і стильним спутником на дорозі.
    </p>

    <p>
        Щоб забрати Ваш новий автомобіль, потрібно прийти до нашого офісу,
        де Вас зустрінуть наші працівники та нададуть всю необхідну інформацію про процес оформлення документів та оплати.
        Ми з радістю допоможемо Вам з цими процедурами та зробимо все можливе, щоб отримання авто пройшло якнайшвидше та якнайкомфортніше для Вас.
    </p>

    <p>
        Не забудьте мати з собою всі необхідні документи, які необхідно пред'явити для оформлення авто на Ваше ім'я.
        Інформація про ці документи міститься в листі, який ми надіслали Вам на електронну пошту.
    </p>

    <p>
        <img class="location_icon" src="https://cdn-icons-png.flaticon.com/512/64/64113.png" alt=""> Наш офіс знаходиться за адресою: [вставити адресу офісу].
    </p>

    <p>
        Якщо у Вас виникнуть будь-які питання або потрібна додаткова допомога, наші досвідчені менеджери
        з задоволенням нададуть Вам консультації та допоможуть з усіма питаннями, пов'язаними з Вашим авто.
        Ви можете зв'язатися з ними за наступними контактами:
    </p>

    <p>
        ✆ Телефон: [вставити номер телефону менеджера].

    </p>
    <p>
        ✉ Електронна пошта: [вставити електронну пошту менеджера].

    </p>

    <p>
        Ми переконані, що наші співробітники нададуть Вам якісну
        та оперативну допомогу та зроблять все можливе, щоб процес придбання та отримання авто
        був максимально комфортним для Вас.
    </p>

    <p>
        З нетерпінням чекаємо на Вас в нашому офісі та вітаємо з покупкою автомобіля!
    </p>

    <p>
        З повагою,
    </p>

    <p>
        Команда нашого сайту.
    </p>
</div>

</body>
</html>