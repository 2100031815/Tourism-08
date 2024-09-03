<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Refreshment</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="refreshment.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');
:root {
    --red: #ff3838;
}

*{
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

.gallery .box-container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-gap: 1.5rem;
}

.gallery .box-container .box {
    height: 25rem;
    border: 1rem solid #fff;
    box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
    border-radius: .5rem;
}

.gallery .box-container .box img {
    height: 100%;
    width: 100%;
    object-fit: cover;
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
    .gallery .box-container {
        display: grid;
        grid-template-columns: 1fr 1fr;
        grid-gap: 1.5rem;
    }
}
    </style>

</head>

<body>
    <section class="gallery" id="gallery">

        <h1 class="heading"> our <span> swimming pool </span> </h1>

        <div class="box-container">

            <div class="box">
                <img src="s-1.jpeg" alt="">
            </div>  
            <div class="box">
                <img src="s-2.jpeg" alt="">
            </div>
            <div class="box">
                <img src="s-3.jpeg" alt="">
            </div>
            <div class="box">
                <img src="s-4.jpeg" alt="">
            </div>
            <div class="box">
                <img src="s-5.jpeg" alt="">
            </div>
            <div class="box">
                <img src="s-6.jpeg" alt="">
            </div>
        </div>
        <br>
        <h1 class="heading"> Childern <span> swimming pool </span> </h1>
        <div class="box-container">
            <div class="box">
                <img src="s-7.jpeg" alt="">
            </div>
            <div class="box">
                <img src="s-8.jpeg" alt="">
            </div>
            <div class="box">
                <img src="s-9.jpeg" alt="">
            </div>
        </div>
    </section>

    <!-- custom js file link  -->
    <script src="foodScript.js"></script>


</body>

</html>