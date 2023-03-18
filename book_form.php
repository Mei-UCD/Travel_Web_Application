<?php

$connection = mysqli_connect("localhost", "Informatics", "IS41090", "project");

//Check connection
if (!$connection)
        {
            die("Connection failed!" . mysqli_connect_error());
        }




// if (isset($_POST['send'])) {
//     $name = $_POST['name'];
//     $email = $_POST['email'];
//     $phone = $_POST['phone'];
//     $address = $_POST['address'];
//     $location = $_POST['location'];
//     $guests = $_POST['guests'];
//     $arrivals = $_POST['arrivals'];
//     $leaving = $_POST['leaving'];

//     $request = "INSERT INTO book_form(id, name, email, phone, address, location, guests, arrivals, leaving) VALUES (' ', '$name', '$email', '$phone', '$address', '$location', '$guests', '$arrivals', '$leaving')
//     ON DUPLICATE KEY UPDATE email = '$email', phone = '$phone', 
//     address = '$address', location = '$location', guests = '$guests', arrivals = '$arrivals',
//     leaving = '$leaving'";

//     mysqli_query($connection, $request);

//     header('location:book.html');
// } else {
//     echo 'something went wrong try again';
// }



if (isset($_POST['send'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $location = $_POST['location'];
    $guests = $_POST['guests'];
    $arrivals = $_POST['arrivals'];
    $leaving = $_POST['leaving'];

    $sql = "SELECT * FROM book_form WHERE name = '$name'";
    $result = mysqli_query($connection, $sql);
    $rows = mysqli_num_rows($result);

    if ($rows == 0) {
        $request = "INSERT INTO book_form(id, name, email, phone, address, location, guests, arrivals, leaving) VALUES 
        (' ', '$name', '$email', '$phone', '$address', '$location', '$guests', '$arrivals', '$leaving')";
        mysqli_query($connection, $request);

        header('location:book.html');
    } else {
        $query = "UPDATE book_form SET email = '$email', phone = '$phone', 
        address = '$address', location = '$location', guests = '$guests', arrivals = '$arrivals', leaving = '$leaving' WHERE name = '$name'";

    
    mysqli_query($connection, $query);

    header('location:book.html');
    }
}














// if(isset($_POST['send'])) {
//     $name = $_POST['name'];
//     $email = $_POST['email'];
//     $phone = $_POST['phone'];
//     $address = $_POST['address'];
//     $location = $_POST['location'];
//     $guests = $_POST['guests'];
//     $arrivals = $_POST['arrivals'];
//     $leaving = $_POST['leaving'];

//     $sql = "UPDATE book_form SET name = '$name', email = '$email', phone = '$phone', 
//     address = '$address', location = '$location', guests = '$guests', arrivals = '$arrivals',
//     leaving = '$leaving' WHERE name = '$name' OR email = '$email' OR phone = '$phone' OR address = '$address'"
// }

?>