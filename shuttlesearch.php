<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shuttle</title>


    <!-- swiper css link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

    <!-- font awesome cdn link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

    <!-- custom css file link -->
    <link rel="stylesheet" href="style.css">


</head>

<body>
    <!-- header section starts -->
    <section class="header">
        <a href="home.html" class="logo">travel.</a>
        <nav class="navbar">
            <a href="home.html">home</a>
            <a href="about.html">about</a>
            <a href="service.html">service</a>
            <a href="book.html">book</a>
        </nav>
        <div class="fas fa-bars" id="menu-btn"></div>
    </section>
    <!-- header section ends -->


    <div class="heading" style="background:url(./images/header-bg-3.png) no-repeat">
        <h1>shuttle</h1>
    </div>



    <section class="location">
        <h1 class="heading-title"><?php echo $_POST['airport']; ?></h1>
        <div class="box-container">

            <?php

            // create connection
            $dbConn = mysqli_connect("localhost", "Informatics", "IS41090", "project");

            // check connection
            if (!$dbConn) {
                die("Connection failed!" . mysqli_connect_error());
            }

            $airport = $_POST['airport'];

            // select datas
            $query = mysqli_query($dbConn, "SELECT shuttle.bus_brand, shuttle.bus_price, shuttle.bus_score, shuttle_brand.shuttlebrand_name From shuttle 
JOIN shuttle_brand ON shuttle.bus_brand = shuttle_brand.shuttlebrand_id 
WHERE shuttle.airport = '$airport'");

            // output data
            if (mysqli_num_rows($query) == 0) { ?>
                <div class="box1">
                    <div class="content">
                        <h3>Sorry, No results were found!</h3>
                        <a href="shuttle.html" class="btn">try again</a>
                    </div>
                </div>
                <?php } else {

                while ($row = mysqli_fetch_array($query)) { ?>
                    <div class="box">
                        <div class="image">
                            <img src="images/shuttle-4.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3><span>bus brand: </span><?php echo $row['shuttlebrand_name']; ?></h3>
                            <h3><span>price: </span>$<?php echo $row['bus_price']; ?></h3>
                            <h3><span>score: </span><?php echo $row['bus_score']; ?></h3>
                            <a href="book.html" class="btn">book now</a>
                        </div>
                    </div>
            <?php }
            }
            ?>
        </div>

        </div>
    </section>







    <!-- footer section starts -->
    <section class="footer">
        <div class="box-container">

            <div class="box">
                <h3>quick links</h3>
                <a href="home.html"><i class="fas fa-angle-right"></i>home</a>
                <a href="about.html"><i class="fas fa-angle-right"></i>about</a>
                <a href="service.html"><i class="fas fa-angle-right"></i>service</a>
                <a href="book.html"><i class="fas fa-angle-right"></i>book</a>
            </div>

            <div class="box">
                <h3>extra links</h3>
                <a href="#"><i class="fas fa-angle-right"></i>ask questions</a>
                <a href="#"><i class="fas fa-angle-right"></i>about us</a>
                <a href="#"><i class="fas fa-angle-right"></i>privacy policy</a>
                <a href="#"><i class="fas fa-angle-right"></i>terms of use</a>
            </div>

            <div class="box">
                <h3>contact info</h3>
                <a href="#"><i class="fas fa-phone"></i>+123-456-7890</a>
                <a href="#"><i class="fas fa-phone"></i>+111-222-3333</a>
                <a href="#"><i class="fas fa-envelope"></i>informatics@gmail.com</a>
                <a href="#"><i class="fas fa-map"></i>dublin, ireland - d04</a>
            </div>

            <div class="box">
                <h3>follow us</h3>
                <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
                <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
                <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
                <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
            </div>

        </div>
    </section>
    <!-- footer section ends -->








    <!-- swiper js link -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

    <!-- custom js file link -->
    <script src="script.js"></script>

</body>

</html>