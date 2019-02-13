<?php include('db.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Logga in</title>
</head>
<body>

    <div class="header">
        <h2>Logga in</h2>
    </div>

    <form method="post" action="login.php">

    <?php include('errors.php'); ?> <!-- ### Error validation ###-->

        <div class="input-group">
            <label>E-post</label>
            <input type="email" name="email">
        </div>
        <div class="input-group">
            <label>Lösenord</label>
            <input type="password" name="password">
        </div>
        <div class="input-group">
            <button type="submit" name="login" class="btn">Logga in</button>
        </div>

        <p>
            <a href="register.php">Skapa Konto</a>
        </p>

    </form>

</body>
</html>