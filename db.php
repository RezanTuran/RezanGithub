<?php
session_start();

$firstname ="";
$surename ="";
$email ="";
$errors = array();

//skapa databaskoppling
$db = mysqli_connect('localhost','root','','webbshop');

//När man klicker register knappen-
if(isset($_POST['register'])) {
    $firstname = mysql_real_escape_string($_POST['firstname']);
    $surename = mysql_real_escape_string($_POST['surename']);
    $email = mysql_real_escape_string($_POST['email']);
    $password_1 = mysql_real_escape_string($_POST['password_1']);
    $password_2 = mysql_real_escape_string($_POST['password_2']);

    // Om det finns Error//
    if(empty($firstname)){
        array_push($errors,"Du måste skriva firstname");
    }
    if(empty($surename)){
        array_push($errors,"Du måste skriva efternamn");
    }
    if(empty($email)){
        array_push($errors,"Du måste skriva epostadress");
    }
    if(empty($password_1)){
        array_push($errors,"Du måste skriva lösenord");
    }
    if($password_1 != $password_2){
        array_push($errors,"Lösenord matchar inte");
    }

    // Om det inte finns Error Spara i databasen//
    if(count($errors) == 0){
        $password = md5($password_1);//Kryptera password innan sparas i databasen
        // $db = "INSERT INTO user (firstName, sureName, email, password) 
        // VALUES('$firstname','$surename','$email','$password')";
        // mysqli_query($db);
        mysqli_query($db,"INSERT INTO user (firstName,surName,email,pass) 
        VALUES ('$firstname','$surename','$email','$password')");
        

        $_SESSION['firstname'] = $firstname;
        $_SESSION['success'] = 'Nu är du inloggad';
        header('location: index.php'); // Skickas till när man loggar in.
    }
}

    // ### Loga in från login.php ### //

    if(isset($_POST['login'])){

        $email = mysql_real_escape_string($_POST['email']);
        $password = mysql_real_escape_string($_POST['password']);

    
        if(empty($email)){
            array_push($errors,"Du måste skriva epostadress");
        }
        if(empty($password)){
            array_push($errors,"Du måste skriva lösenord");
        }
        if(count($errors) == 0){
            $password = md5($password); // Kryptera password innan jämföra med databasen
            $query = "SELECT * FROM user WHERE email='$email' AND password='$password' ";
            $result = mysqli_query($db, $query);
            if (mysqli_num_rows($result) == 0) {

                // ### Logga in ###//
                $_SESSION['firstname'] = $firstname;
                $_SESSION['success'] = 'Nu är du inloggad';
                header('location: index.php');
            }else{
                array_push($errors, " Fel epost eller lösenord");
            }
        }
    }
    




    // ### Logout ### //

    if(isset($_GET['logout'])) {
        session_destroy(); // Tabort andra sessioner
        unset($_SESSION['firstname']);
        header('location: login.php');
    }

?>