<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>@sky.git - Photo Filters &amp; Captions</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
            margin: 0;
            background-color: #1e1e1e;
        }

        figure {
            position: relative;
            width: 220px;
            height: 320px;
            overflow: hidden;
            margin: 0 10px;
            border-radius: 0.6rem;
        }

        figure img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border: none;
        }

        figcaption {
            background-color: rgba(48, 48, 48, 0.3);
            color: #fff2de;
            padding: 10px 15px;
            margin: 0; /* Fixed invalid margin property */
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 42px;
            overflow: hidden;
            transition: 0.5s ease-in-out;
        }

        .caption-title {
            font-size: 1.2em;
        }

        .caption-full {
            opacity: 0;
            margin-top: 10px;
        }

        .expanded {
            height: 100%;
            transition: 0.5s ease-in-out;
            background-color: rgba(48, 48, 48, 0.7);
        }

        /* Fixed opacity value */
        .visible {
            opacity: 1;
        }

        .image-filter {
            filter: blur(5px) contrast(90%);
        }
    </style>
</head>

<body>
    <figure>
        <img src="https://images.unsplash.com/photo-1542259009477-d625272157b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1738&q=80"
            alt="Tropical beach" title="Photo by Ganapathy Kumar for Unsplash">
        <figcaption>
            <div class="caption-title">Sunsets</div>
            <div class="caption-full">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quis pariatur corrupti
                nesciunt aliquam! Assumenda, distinctio suscipit dicta at cupiditate optio voluptatem magni numquam dolore
                eveniet commodi ut ratione quidem itaque!</div>
        </figcaption>
    </figure>
    <figure>
        <img src="https://images.unsplash.com/photo-1566371486490-560ded23b5e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80"
            alt="People looking down at the bay" title="Photo by Tron Le for Unsplash">
        <figcaption>
            <div class="caption-title">Adventure</div>
            <div class="caption-full">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quis pariatur corrupti
                nesciunt aliquam! Assumenda, distinctio suscipit dicta at cupiditate optio voluptatem magni numquam dolore
                eveniet commodi ut ratione quidem itaque!</div>
        </figcaption>
    </figure>
    <figure>
        <img src="https://images.unsplash.com/photo-1597634285596-01fd1bffe116?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80"
            alt="Lounges by the water" title="Photo by Yang Wewe for Unsplash">
        <figcaption>
            <div class="caption-title">Relaxation</div>
            <div class="caption-full">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quis pariatur corrupti
                nesciunt aliquam! Assumenda, distinctio suscipit dicta at cupiditate optio voluptatem magni numquam dolore
                eveniet commodi ut ratione quidem itaque!</div>
        </figcaption>
    </figure>
    <script src="about.js"></script>
    <script>
        const figure = document.querySelectorAll('figure');
        const caption = document.querySelectorAll('figcaption');
        const fullCaption = document.querySelectorAll('.caption-full');
        const figureImage = document.querySelectorAll('figure img');

        figure.forEach((fig, idx) => {
            fig.addEventListener('mouseover', () => {
                caption[idx].classList.toggle('expanded'); /* Fixed classList method */
                fullCaption[idx].classList.toggle('visible'); /* Fixed classList method */
                figureImage[idx].classList.add('image-filter');
            });

            fig.addEventListener('mouseout', () => {
                caption[idx].classList.toggle('expanded'); /* Fixed classList method */
                fullCaption[idx].classList.toggle('visible'); /* Fixed classList method */
                figureImage[idx].classList.remove('image-filter');
            });
        });
    </script>
</body>

</html>
