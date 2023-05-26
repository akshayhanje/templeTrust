<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: index.php");
    exit;
}
?>
 <!DOCTYPE html>
    <html>
        <head>
            <title>home</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
            <link rel ="stylesheet" href="style.css">

        </head>
        <body id="homepage">
            <div id="container">
                <header><img src="./img/temple2.jpg" alt="Header Image" class="img-Header" id="Manstambha">
                </header>
                <ul class="navmenu">
                    <li class="nav-item">
                        <a class="nav-link" href="home.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.php">Contact</a>
                    </li>
                   <li><a href="#">Dashboard</a></li>
                </ul>
            </div>
           
            <div class="con">
                <img src="./img/jain1.jpg" alt="your-image-description">
                <p>Jain temples are places of worship for followers of Jainism, a religion that originated in India over 2,500 years ago. These temples are known for their intricate and ornate architecture, which often includes beautiful carvings and sculptures of Jain Tirthankaras (enlightened teachers) and other figures. The temples serve as a place for worship, meditation, and community gatherings for Jains around the world. Some of the most famous Jain temples include the Ranakpur Temple in Rajasthan, India, and the Dilwara Temples in Mount Abu, India. Jain temples are also known for their strict rules and regulations, such as requiring visitors to remove their shoes and abstain from food and drink before entering the temple premises..</p>
              </div>
              </body>
    </html>
