<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our food Service</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="foodStyle.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');
:root {
  --red: #ff3838;
}


* {
  font-family: 'Nunito', sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  outline: none;
  border: none;
  text-decoration: none;
  text-transform: capitalize;
  transition: all .2s linear;
}

*::selection {
  background: var(--red);
  color: #fff;
}

html {
  font-size: 62.5%;
  overflow-x: hidden;
  scroll-behavior: smooth;
  scroll-padding-top: 6rem;
}

body {
  background: #f7f7f7;
}

section {
  padding: 2rem 9%;
}

.heading {
  text-align: center;
  font-size: 3.5rem;
  padding: 1rem;
  color: #666;
}

.heading span {
  color: var(--red);
}

.btn {
  display: inline-block;
  padding: .8rem 3rem;
  border: .2rem solid var(--red);
  color: var(--red);
  cursor: pointer;
  font-size: 1.7rem;
  border-radius: .5rem;
  position: relative;
  overflow: hidden;
  z-index: 0;
  margin-top: 1rem;
}

.btn::before {
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  width: 0%;
  height: 100%;
  background: var(--red);
  transition: .3s linear;
  z-index: -1;
}

.btn:hover::before {
  width: 100%;
  left: 0;
}

.btn:hover {
  color: #fff;
}

header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 1000;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: #fff;
  padding: 2rem 9%;
  box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
}



.home {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
  min-height: 100vh;
  align-items: center;
  background: url(../images/home-bg.jpg) no-repeat;
  background-size: cover;
  background-position: center;
}

.home .content {
  flex: 1 1 40rem;
  padding-top: 6.5rem;
}

.home .image {
  flex: 1 1 40rem;
}

.home .image img {
  width: 100%;
  padding: 1rem;
  animation: float 3s linear infinite;
}

@keyframes float {
  0%, 100% {
    transform: translateY(0rem);
  }
  50% {
    transform: translateY(3rem);
  }
}

.home .content h3 {
  font-size: 5rem;
  color: #333;
}

.home .content p {
  font-size: 1.7rem;
  color: #666;
  padding: 1rem 0;
}

.speciality .box-container {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
}

.speciality .box-container .box {
  flex: 1 1 30rem;
  position: relative;
  overflow: hidden;
  box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
  border: .1rem solid rgba(0, 0, 0, .3);
  cursor: pointer;
  border-radius: .5rem;
}

.speciality .box-container .box .image {
  height: 100%;
  width: 100%;
  object-fit: cover;
  position: absolute;
  top: -100%;
  left: 0;
}

.speciality .box-container .box .content {
  text-align: center;
  background: #fff;
  padding: 2rem;
}

.speciality .box-container .box .content img {
  margin: 1.5rem 0;
}

.speciality .box-container .box .content h3 {
  font-size: 2.5rem;
  color: #333;
}

.speciality .box-container .box .content p {
  font-size: 1.6rem;
  color: #666;
  padding: 1rem 0;
}

.speciality .box-container .box:hover .image {
  top: 0;
}

.speciality .box-container .box:hover .content {
  transform: translateY(-100%);
}

.popular .box-container {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
}

.popular .box-container .box {
  padding: 2rem;
  background: #fff;
  box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
  border: .1rem solid rgba(0, 0, 0, .3);
  border-radius: .5rem;
  text-align: center;
  flex: 1 1 30rem;
  position: relative;
}

.popular .box-container .box img {
  height: 25rem;
  object-fit: cover;
  width: 100%;
  border-radius: .5rem;
}

.popular .box-container .box .price {
  position: absolute;
  top: 3rem;
  left: 3rem;
  background: var(--red);
  color: #fff;
  font-size: 2rem;
  padding: .5rem 1rem;
  border-radius: .5rem;
}

.popular .box-container .box h3 {
  color: #333;
  font-size: 2.5rem;
  padding-top: 1rem;
}

.popular .box-container .box .stars i {
  color: gold;
  font-size: 1.7rem;
  padding: 1rem .1rem;
}

.steps {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
  padding: 1rem;
}

.steps .box {
  flex: 1 1 25rem;
  padding: 1rem;
  text-align: center;
}

.steps .box img {
  border-radius: 50%;
  border: 1rem solid #fff;
  box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
}

.steps .box h3 {
  font-size: 3rem;
  color: #333;
  padding: 1rem;
}

.gallery .box-container {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
}

.gallery .box-container .box {
  height: 25rem;
  flex: 1 1 30rem;
  border: 1rem solid #fff;
  box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
  border-radius: .5rem;
  position: relative;
  overflow: hidden;
}

.gallery .box-container .box img {
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.gallery .box-container .box .content {
  position: absolute;
  top: -100%;
  left: 0;
  height: 100%;
  width: 100%;
  background: rgba(255, 255, 255, .9);
  padding: 2rem;
  padding-top: 5rem;
  text-align: center;
}

.gallery .box-container .box .content h3 {
  font-size: 2.5rem;
  color: #333;
}

.gallery .box-container .box .content p {
  font-size: 1.5rem;
  color: #666;
  padding: 1rem 0;
}

.gallery .box-container .box:hover .content {
  top: 0;
}

.review .box-container {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
}

.review .box-container .box {
  text-align: center;
  padding: 2rem;
  border: 1rem solid #fff;
  box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .3);
  border-radius: .5rem;
  flex: 1 1 30rem;
  background: #333;
  margin-top: 6rem;
}

.review .box-container .box img {
  height: 12rem;
  width: 12rem;
  border-radius: 50%;
  border: 1rem solid #fff;
  margin-top: -8rem;
  object-fit: cover;
}

.review .box-container .box h3 {
  font-size: 2.5rem;
  color: #fff;
  padding: .5rem 0;
}

.review .box-container .box .stars i {
  font-size: 2rem;
  color: var(--red);
  padding: .5rem 0;
}

.review .box-container .box p {
  font-size: 1.5rem;
  color: #eee;
  padding: 1rem 0;
}

.order .row {
  padding: 2rem;
  box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
  background: #fff;
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
  border-radius: .5rem;
}

.order .row .image {
  flex: 1 1 30rem;
}

.order .row .image img {
  height: 100%;
  width: 100%;
  object-fit: cover;
  border-radius: .5rem;
}

.order .row form {
  flex: 1 1 50rem;
  padding: 1rem;
}

.order .row form .inputBox {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}

.order .row form .inputBox input, .order .row form textarea {
  padding: 1rem;
  margin: 1rem 0;
  font-size: 1.7rem;
  color: #333;
  text-transform: none;
  border: .1rem solid rgba(0, 0, 0, .3);
  border-radius: .5rem;
  width: 49%;
}

.order .row form textarea {
  width: 100%;
  resize: none;
  height: 15rem;
}

.order .row form .btn {
  background: none;
}

.order .row form .btn:hover {
  background: var(--red);
}

#scroll-top {
  position: fixed;
  top: -120%;
  right: 2rem;
  padding: .5rem 1.5rem;
  font-size: 4rem;
  background: var(--red);
  color: #fff;
  border-radius: .5rem;
  transition: 1s linear;
  z-index: 1000;
}

#scroll-top.active {
  top: calc(100% - 12rem)
}

.loader-container {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 10000;
  background: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  width: 100%;
}

.loader-container.fade-out {
  top: -120%;
}

/* media queries  */

@media(max-width:991px) {
  html {
    font-size: 55%;
  }
  header {
    padding: 2rem;
  }
  section {
    padding: 2rem;
  }
}

@media(max-width:450px) {
  html {
    font-size: 50%;
  }
  .order .row form .inputBox input {
    width: 100%;
  }
}
    </style>

</head>

<body>
    <!-- speciality section starts  -->

    <section class="speciality" id="speciality">

        <h1 class="heading"> our <span>speciality</span> </h1>

        <div class="box-container">

            <div class="box">
                <img class="image" src="s-img-1.jpg" alt="">
                <div class="content">
                    <img src="s-1.png" alt="">
                    <h3>tasty burger</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                        tenetur voluptates aperiam tempore libero labore aut.</p>
                </div>
            </div>
            <div class="box">
                <img class="image" src="s-img-2.jpg" alt="">
                <div class="content">
                    <img src="s-2.png" alt="">
                    <h3>tasty pizza</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                        tenetur voluptates aperiam tempore libero labore aut.</p>
                </div>
            </div>
            <div class="box">
                <img class="image" src="s-img-3.jpg" alt="">
                <div class="content">
                    <img src="s-3.png" alt="">
                    <h3>cold ice-cream</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                        tenetur voluptates aperiam tempore libero labore aut.</p>
                </div>
            </div>
            <div class="box">
                <img class="image" src="s-img-4.jpg" alt="">
                <div class="content">
                    <img src="s-4.png" alt="">
                    <h3>cold drinks</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                        tenetur voluptates aperiam tempore libero labore aut.</p>
                </div>
            </div>
            <div class="box">
                <img class="image" src="s-img-5.jpg" alt="">
                <div class="content">
                    <img src="s-5.png" alt="">
                    <h3>tasty sweets</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                        tenetur voluptates aperiam tempore libero labore aut.</p>
                </div>
            </div>
            <div class="box">
                <img class="image" src="s-img-6.jpg" alt="">
                <div class="content">
                    <img src="s-6.png" alt="">
                    <h3>healty breakfast</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                        tenetur voluptates aperiam tempore libero labore aut.</p>
                </div>
            </div>

        </div>

    </section>

    <!-- speciality section ends -->

    <!-- popular section starts  -->

    <section class="popular" id="popular">

        <h1 class="heading"> most <span>popular</span> foods </h1>

        <div class="box-container">

            <div class="box">
                <span class="price"> $5 - $20 </span>
                <img src="p-1.jpg" alt="">
                <h3>tasty burger</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <a href="#" class="btn">order now</a>
            </div>
            <div class="box">
                <span class="price"> $5 - $20 </span>
                <img src="p-2.jpg" alt="">
                <h3>tasty cakes</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <a href="#" class="btn">order now</a>
            </div>
            <div class="box">
                <span class="price"> $5 - $20 </span>
                <img src="p-3.jpg" alt="">
                <h3>tasty sweets</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <a href="#" class="btn">order now</a>
            </div>
            <div class="box">
                <span class="price"> $5 - $20 </span>
                <img src="p-4.jpg" alt="">
                <h3>tasty cupcakes</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <a href="#" class="btn">order now</a>
            </div>
            <div class="box">
                <span class="price"> $5 - $20 </span>
                <img src="p-5.jpg" alt="">
                <h3>cold drinks</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <a href="#" class="btn">order now</a>
            </div>
            <div class="box">
                <span class="price"> $5 - $20 </span>
                <img src="p-6.jpg" alt="">
                <h3>cold ice-cream</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <a href="#" class="btn">order now</a>
            </div>

        </div>

    </section>

    <!-- popular section ends -->

    <!-- steps section starts  -->

    <div class="step-container">

        <h1 class="heading">how it <span>works</span></h1>

        <section class="steps">

            <div class="box">
                <img src="step-1.jpg" alt="">
                <h3>choose your favorite food</h3>
            </div>
            <div class="box">
                <img src="step-2.jpg" alt="">
                <h3>free and fast delivery</h3>
            </div>
            <div class="box">
                <img src="step-3.jpg" alt="">
                <h3>easy payments methods</h3>
            </div>
            <div class="box">
                <img src="step-4.jpg" alt="">
                <h3>and finally, enjoy your food</h3>
            </div>

        </section>

    </div>

    <!-- steps section ends -->

    <!-- gallery section starts  -->

    <section class="gallery" id="gallery">

        <h1 class="heading"> our food <span> gallery </span> </h1>

        <div class="box-container">

            <div class="box">
                <img src="g-1.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-2.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-3.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-4.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-5.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-6.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-7.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-8.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">ordern now</a>
                </div>
            </div>
            <div class="box">
                <img src="g-9.jpg" alt="">
                <div class="content">
                    <h3>tasty food</h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                    <a href="#" class="btn">order now</a>
                </div>
            </div>

        </div>

    </section>

    <!-- gallery section ends -->

    <!-- review section starts  -->

    <section class="review" id="review">

        <h1 class="heading"> our customers <span>reviews</span> </h1>

        <div class="box-container">

            <div class="box">
                <img src="pic1.png" alt="">
                <h3>john deo</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti delectus, ducimus facere quod
                    ratione vel laboriosam? Est, maxime rem. Itaque.</p>
            </div>
            <div class="box">
                <img src="pic2.png" alt="">
                <h3>john deo</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti delectus, ducimus facere quod
                    ratione vel laboriosam? Est, maxime rem. Itaque.</p>
            </div>
            <div class="box">
                <img src="images/pic3.png" alt="">
                <h3>john deo</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti delectus, ducimus facere quod
                    ratione vel laboriosam? Est, maxime rem. Itaque.</p>
            </div>

        </div>

    </section>

    <!-- review section ends -->

    <!-- order section starts  -->

    <section class="order" id="order">

        <h1 class="heading"> <span>order</span> now </h1>

        <div class="row">

            <div class="image">
                <img src="order-img.jpg" alt="">
            </div>

            <form action="foodSave" method="post" th:object="${order}">

                <div class="inputBox">
                    <input type="text" placeholder="name" name="name">
                    <input type="email" placeholder="email" name="email">
                </div>

                <div class="inputBox">
                    <input type="number" placeholder="number" name="number">
                    <input type="text" placeholder="food_name" name="food_name">
                </div>

                <textarea placeholder="address" name="address" id="" cols="30" rows="10"></textarea>

                <input type="submit" value="order now" class="btn">

            </form>

        </div>

    </section>
    <!-- order section ends -->


</body>

</html>