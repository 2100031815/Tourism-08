<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>HOTEL GP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="main.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap');

:root{
    --transition: all 0.7s ease;
    --yellow: #f9d342;
    --dark: #292826;
}
*{
    box-sizing: border-box;
    padding: 0;
    margin: 0;
    font-family: 'Playfair Display', serif;
}
html{
    scroll-behavior: smooth;
}
body{
    line-height: 1.6;
}
.btn{
    font-size: 16px;
    text-transform: uppercase;
    font-weight: 600;
    border: none;
    border-radius: 5px;
    padding: 10px;
    width: 140px;
    display: block;
    margin: 15px auto;
    cursor: pointer;
    transition: var(--transition);
}
.btn:hover{
    opacity: 0.85;
}
.flex{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
h1, h2, h3, h4, h5, h6{
    padding: 8px 0;
}
img{
    width: 100%;
    display: block;
}
@media(max-width: 500px){
    body{
        font-size: 14px;
    }
}

/* header */
.header{
    background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.2)), url("banner-img.jpg") center/cover no-repeat;
    min-height: 100vh;
    color: #fff;
    padding: 25px;
    display: flex;
    flex-direction: column;
    align-content: stretch;
}
.head-top{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.head-top span{
    cursor: pointer;
    letter-spacing: 2px;
    transition: var(--transition);
}
.head-top span:hover{
    color: var(--yellow);
}
.head-bottom{
    flex: 1;
    text-align: center;
    width: 80vw;
    margin: 0 auto;
}
.head-bottom h2{
    padding: 22px 0;
    font-size: 45px;
    border-bottom: 1px solid #fff;
}
.head-bottom p{
    opacity: 0.7;
    font-size: 20px;
    margin: 45px auto;
    width: 60vw;
}
.head-btn{
    margin: 20px 0;
    font-size: 20px;
    font-weight: bold;
    border: 3px solid #fff;
    background: transparent;
    padding: 13px 20px;
    background: rgba(0, 0, 0, 0.3);
    color: #fff;
    cursor: pointer;
    transition: var(--transition);
}
.head-btn:hover{
    background: transparent;
}
@media(max-width: 500px){
    .head-btn{
        font-size: 17px;
    }
    .head-bottom h2{
        font-size: 28px;
    }
    .head-bottom p{
        font-size: 17px;
        margin: 20px auto;
    }
}

/* side nav */
.sidenav{
    text-decoration: none;
    background: var(--dark);
    color: #fff;
    position: fixed;
    top: 0;
    bottom: 0;
    right: -100%;
    width: 300px;
    padding: 20px;
    transition: var(--transition);
    z-index: 10;
}

/********/
.sidenav.show{
    right: 0;
}
/*************/
.cancel-btn{
    position: absolute;
    right: 25px;
    font-size: 22px;
    cursor: pointer;
    transition: var(--transition);
}
.cancel-btn:hover{
    opacity: 0.7;
}
.navbar{
    margin-top: 50px;
    list-style: none;
    padding: 12px;
}
.navbar li a{
    color: #fff;
    text-transform: capitalize;
    text-decoration: none;
    padding: 15px 0;
    display: block;
    border-bottom: 0.5px solid rgba(249, 211, 66, 0.3);
    opacity: 0.8;
    letter-spacing: 1.5px;
    transition: var(--transition);
}
.navbar li a:hover{
    padding-left: 12px;
}
.sign-up, .log-in{
    background: var(--yellow);
    color: #fff;
}
@media(max-width: 400px){
    .sidenav{
        width: 100vw;
    }
}

/** title */
.title{
    text-transform: uppercase;
    letter-spacing: 3px;
    font-size: 30px;
    color: var(--yellow);
    border-bottom: 5px solid var(--dark);
    width: 235px;
    margin: 15px 0;
}

.sec-width{
    width: 85vw;
    margin: 0 auto!important;
}

/* service */
.services{
    margin: 40px 0;
}
.service{
    display: flex;
    margin: 30px 0;
}
.service-icon{
    flex: 30%;
    align-self: flex-start;
    font-size: 48px;
    color: #252525;
}
.service-content{
    padding-left: 20px;
}
.service-content h2{
    opacity: 0.7;
}
.service-content button{
    margin-left: 0;
    margin-right: 0;
    background: var(--yellow);
    color: #fff;
}
@media(min-width: 992px){
    .services-container{
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-column-gap: 30px;
    }
    .title h2{
        font-size: 10px!important;
    }
}
@media(max-width: 500px){
    .title h2{
        font-size: 24px;
    }
}

/* booking form */
.book{
    background: linear-gradient(rgba(0, 0, 0, 0.85), rgba(0, 0, 0, 0.85)), url("banner-img.jpg") center/cover no-repeat;
    color: #fff;
    padding: 40px 60px;
}
.book-form{
    display: grid;
}
.form-item{
    display: flex;
    flex-direction: column;
    justify-content: center;
}
.book-form input[type = "submit"]{
    margin: 18px 0 0 0;
    background: var(--dark);
    color: #fff;
    border: 1px solid #fff;
}
.book-form label, .book-form input{
    width: 100%;
}
.book-form label{
    font-weight: 600;
    word-spacing: 5px;
    padding-bottom: 8px;
}
.book-form input:not(.btn){
    margin: 4px 0 16px 0;
    padding: 12px 15px;
    border-radius: 5px;
    font-size: 17px;
    border: none;
}
.book-form input:focus{
    outline: 0;
    box-shadow: 0 0 7px rgba(0, 0, 0, 0.4);
}
@media(min-width: 768px){
    .book-form{
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 24px;
    }
}
@media(min-width: 1170px){
    .book-form{
        grid-template-columns: repeat(3, 1fr);
    }
}
@media(min-width: 1370px){
    .book-form{
        grid-template-columns: 2fr 2fr 1fr 1fr 1fr 2fr;
    }
    .book{
        height: 40vh;
        display: grid;
    }
}
@media(max-width: 500px){
    .book{
        padding-left: 20px;
        padding-right: 20px;
    }
}

/* room */

.rooms{
    margin: 40px 0;
}
.room{
    margin: 45px 0;
    padding-bottom: 25px;
    background: var(--dark);
    color: #fff;
}
.room-text{
    padding: 5px 20px;
}
.room-text h3{
    font-size: 24px;
}
.room-text ul{
    list-style-type: none;
    margin: 15px 0;
}
.room-text ul li{
    padding: 7px 0;
}
.room-text ul li i{
    color: var(--yellow);
    margin-right: 10px;
}
.rate{
    opacity: 0.8;
}
.rate span{
    font-size: 40px;
    font-weight: 900;
    color: var(--yellow);
}
.room-image{
    overflow: hidden;
}
.room-image img{
    transition: var(--transition);
}
.room-image:hover img{
    transform: scale(1.1);
}
@media (min-width: 900px){
    .rooms-container{
        display: flex;
        flex-wrap: wrap;
    }
    .room{
        flex: 0 0 calc(50% - 20px);
        margin: 10px;
    }
}
@media(min-width: 1370px){
    .rooms-container{
        flex-direction: column;
    }
    .room{
        display: flex;
        padding-bottom: 0;
        margin: 5px 0;
    }
    .room-image{
        flex: 1;
    }
    .room-image img{
        height: 100%;
    }
    .room-text{
        flex: 1;
    }
    .room:nth-child(even){
        flex-direction: row-reverse;
    }
}

/* customers */

.customers{
    margin-top: 40px;
    padding: 40px 0;
    background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("customer-banner.jpg") center/cover no-repeat fixed;
}
.customer{
    background: #fff;
    padding: 35px;
    text-align: center;
    margin: 24px 0;
    box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.75);
    cursor: pointer;
    transition: var(--transition);
}
.rating{
    margin: 10px 0;
    color: var(--yellow);
}
.customer h3{
    font-size: 25px;
}
.customer p{
    opacity: 0.7;
    line-height: 1.8;
    width: 60%;
    margin: 0 auto;
}
.customer img{
    width: 170px;
    height: 170px;
    border-radius: 50%;
    margin: 25px auto;
}
.customer span{
    font-weight: 700;
    opacity: 0.7;
}
.customer:hover{
    transform: translateY(-18px);
}
@media(min-width: 992px){
    .customers-container{
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 30px;
    }
}
@media(min-width: 1370px){
    .customers-container{
        display: grid;
        grid-template-columns: repeat(3, 1fr);
    }
}
@media(max-width: 500px){
    .customer p{
        width: 100%;
    }
    .customer img{
        width: 100px;
        height: 100px;
    }
}

footer{
    background-color: var(--dark);
    display: flex;
    height: auto    ;
    padding: 5%;
}

footer div{
    width: 33%;
}

footer div h1{
    color: var(--yellow);
}



      .weather-container {
    text-align: center;
    background-color: white; /* Updated background color to white */
    padding: 20px;
    border-radius: 10px;
}

.search-container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: rgba(255, 153, 0, 0.7);
    border: 1px solid white;
    border-radius: 10px;
}

.search-container input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
}

.search-container button {
    background-color: #282c34;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
}

.weather-info {
    margin-top: 20px;
}

h1 {
    font-size: 36px;
    margin-bottom: 20px;
}

h2 {
    font-size: 28px;
    margin-top: 20px;
}

p {
    font-size: 18px;
    margin: 10px 0;
}
      



  {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}





    </style>

    <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
    <link rel="icon" href="logo.png" type="image/png">
</head>
<body>
      <!-- header -->
        <header class = "header" id = "header">
            <div class = "head-top">
                <div class = "site-name">
                    <span>GEEKPROBIN</span>
                </div>
                <div class = "site-nav">
                    <span id = "nav-btn">MENU <i class = "fas fa-bars"></i></span>
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>NICE AND COMFORTABLE PLACE TO STAY</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto est quos veniam impedit numquam itaque voluptatum, dicta asperiores accusamus, eligendi neque ut incidunt, modi harum molestiae atque natus officia minima.</p>
                <a href="todo">
  <button type="button" class="head-btn">TO-DO</button>
</a>
                
            </div>
        </header>
        <!-- end of header -->

        <!-- side navbar -->
        <div class = "sidenav" id = "sidenav">
            <span class = "cancel-btn" id = "cancel-btn">
                <i class = "fas fa-times"></i>
            </span>

            <ul class = "navbar">
                <li><a href = "#header">home</a></li>
                
                <li><a href = "about">About</a></li>
                <li><a href = "contact">Contact</a></li>

            </ul>
            <a href="register">
                <button class = "btn sign-up"><i class="fas fa-user"></i>&nbsp; Register</button>
            </a>
        </div>
        <!-- end of side navbar -->
        
        <button class="open-button" onclick="openForm()">Open Form</button>

<!-- The form -->
<div class="form-popup" id="myForm">
  <div class="weather-container">
<h1>Weather App</h1>
<div class="search-container">
    <input type="text" id="cityInput" placeholder="Enter city" />
    <button id="searchButton">Search</button>
</div>
<div class="weather-info" id="weatherInfo"></div>
 <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
</div>
  
</div>


        

    <!-- fullscreen modal -->
    <div id="modal"></div>
    <!-- end of fullscreen modal -->

    <!-- body content  -->
    
    <section class="services sec-width" id="services">
        <div class="title">
            <h2>services</h2>
        </div>
        <div class="services-container">
            <!-- single service -->
            <article class="service">
                <div class="service-icon">
                    <span>
                        <i class="fas fa-utensils"></i>
                    </span>
                </div>
                <div class="service-content">
                    <h2>Food Service/ Food Runner</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias blanditiis tempore officia accusamus asperiores. Illum maxime eligendi necessitatibus laudantium iste nisi pariatur doloremque ut illo similique voluptatum enim distinctio perferendis, ad ipsam aspernatur omnis rem autem ex, reiciendis corporis suscipit!</p>
                 <button type="button" class="btn"><a href="food">Food Type</a></button>
                 
                 
                </div>
            </article>
            <!-- end of single service -->
            <!-- single service -->
            <article class="service">
                <div class="service-icon">
                    <span>
                        <i class="fas fa-swimming-pool"></i>
                    </span>
                </div>
                <div class="service-content">
                    <h2>Refreshment</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias blanditiis tempore officia accusamus asperiores. Illum maxime eligendi necessitatibus laudantium iste nisi pariatur doloremque ut illo similique voluptatum enim distinctio perferendis, ad ipsam aspernatur omnis rem autem ex, reiciendis corporis suscipit!</p>
                    <button type="button" class="btn"><a href="refreshment">Refreshment</a></button>
                </div>
            </article>
            <!-- end of single service -->
            <!-- single service -->
            <article class="service">
                <div class="service-icon">
                    <span>
                        <i class="fas fa-broom"></i>
                    </span>
                </div>
                <div class="service-content">
                    <h2>Housekeeping</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias blanditiis tempore officia accusamus asperiores. Illum maxime eligendi necessitatibus laudantium iste nisi pariatur doloremque ut illo similique voluptatum enim distinctio perferendis, ad ipsam aspernatur omnis rem autem ex, reiciendis corporis suscipit!</p>
                    <button type="button" class="btn"><a href="room">Rooms</a></button>
                </div>
            </article>
            <!-- end of single service -->
            <!-- single service -->
            <article class="service">
                <div class="service-icon">
                    <span>
                        <i class="fas fa-door-closed"></i>
                    </span>
                </div>
                <div class="service-content">
                    <h2>Travel Reservation</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias blanditiis tempore officia accusamus asperiores. Illum maxime eligendi necessitatibus laudantium iste nisi pariatur doloremque ut illo similique voluptatum enim distinctio perferendis, ad ipsam aspernatur omnis rem autem ex, reiciendis corporis suscipit!</p>
                    <button type="button" class="btn"><a href="travelregistration">Travel Reservation</a></button>
                </div>
            </article>
            <!-- end of single service -->
        </div>
    </section>

    <section class="customers" id="customers">
        <div class="sec-width">
            <div class="title">
                <h2>customers</h2>
            </div>
            <div class="customers-container">
                <!-- single customer -->
                <div class="customer">
                    <div class="rating">
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="far fa-star"></i></span>
                    </div>
                    <h3>We Loved it</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat beatae verit veniam cum iusto distinctio esse, vero est autem, eius optio cupiditate?</p>
                        <img src = "cus1.jpg" alt = "customer image">
                        <span>Customer Name, Country</span>
                    </div>
                    <!-- end of single customer -->
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>Comfortable Living</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat beatae veritatis provident eveniet praesentium veniam cum iusto distinctio esse, vero est autem, eius optio cupiditate?</p>
                        <img src = "cus2.jpg" alt = "customer image">
                        <span>Customer Name, Country</span>
                    </div>
                    <!-- end of single customer -->
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>Nice Place</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat beatae veritatis provident eveniet praesentium veniam cum iusto distinctio esse, vero est autem, eius optio cupiditate?</p>
                        <img src = "cus3.jpg" alt = "customer image">
                        <span>Customer Name, Country</span>
                    </div>
                    <!-- end of single customer -->
                </div>
            </div>
        </section>
        <!-- end of body content -->
        
        <!-- footer -->
        <footer style="color: white;">
            <div class="marian">
                <h1 style="margin-bottom: 10px;">Marian</h1>
                <p>Copyright ©️2021 All rights reserved</p>
            </div>
            <div class="reservation">
                <h1 style="margin-bottom: 10px;">Reservation</h1>
                <p>Tel: 345 5667 889</p>
                <p>Skype: Marianabooking</p>
                <p>Tel: reservations@hotelcrown.com</p>
            </div>
            <div class="location">
                <h1 style="margin-bottom: 10px;">Our Location</h1>
                <p>198 West 21th Street</p>
                <p>Suite 721 New York NY 10016</p>
            </div>           
        </footer>
        <!-- end of footer -->
        
        <script src="script.js"></script>
            <script>
        document.addEventListener("DOMContentLoaded", function() {
            const navBtn = document.getElementById('nav-btn');
            const cancelBtn = document.getElementById('cancel-btn');
            const sideNav = document.getElementById('sidenav');
            const modal = document.getElementById('modal');

            navBtn.addEventListener("click", function(){
                sideNav.classList.add('show');
                modal.classList.add('showModal');
            });

            cancelBtn.addEventListener('click', function(){
                sideNav.classList.remove('show');
                modal.classList.remove('showModal');
            });

            window.addEventListener('click', function(event){
                if(event.target === modal){
                    sideNav.classList.remove('show');
                    modal.classList.remove('showModal');
                }
            });
        });
        function openForm() {
        	  document.getElementById("myForm").style.display = "block";
        	}

        	function closeForm() {
        	  document.getElementById("myForm").style.display = "none";
        	}
        	document.getElementById("searchButton").addEventListener("click", function () {
        	    const apiKey = "1bb8bfd76d2c42dc863111bc20e65637"; // Replace with your API key
        	    const city = document.getElementById("cityInput").value;
        	    const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric`;

        	    fetch(apiUrl)
        	        .then((response) => response.json())
        	        .then((data) => {
        	            const weatherInfo = document.getElementById("weatherInfo");
        	            if (data.cod === 200) {
        	                const cityName = data.name;
        	                const temperature = data.main.temp;
        	                const humidity = data.main.humidity;
        	                const description = data.weather[0].description;
        	                const weatherHtml = `
        	                    <h2>Weather in ${cityName}</h2>
        	                    <p>Temperature: ${temperature}°C</p>
        	                    <p>Humidity: ${humidity}%</p>
        	                    <p>Description: ${description}</p>
        	                `;
        	                weatherInfo.innerHTML = weatherHtml;
        	            } else {
        	                weatherInfo.innerHTML = "<p>City not found</p>";
        	            }
        	        })
        	        .catch((error) => {
        	            console.error("Error fetching weather data:", error);
        	            weatherInfo.innerHTML = "<p>Something went wrong</p>";
        	        });
        	});
    </script>
    </body>
</html>

                    
