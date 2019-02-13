<?php include('db.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Register</title>
</head>
<body>

    <div class="header">
        <h2>Registrera</h2>
    </div>

    <form method="post" action="register.php">

        <?php include('errors.php'); ?> <!-- ### Error validation ###-->

        <div class="input-group">
            <label>Förnamn</label>
            <input type="text" name="firstname" value="<?php echo $firstname ?>">
        </div>
        <div class="input-group">
            <label>Efternamn</label>
            <input type="text" name="surename" value="<?php echo $surename ?>">
        </div>
        <div class="input-group">
            <label>E-post</label>
            <input type="email" name="email" value="<?php echo $email ?>">
        </div>
        <div class="input-group">
            <label>Lösenord</label>
            <input type="password" name="password_1">
        </div>
        <div class="input-group">
            <label>Bekräfta Lösenord</label>
            <input type="password" name="password_2">
        </div>
        <div class="input-group">
            <button type="submit" name="register" class="btn">Registrera</button>
        </div>

        <p>
            <a href="login.php">Loga in</a>
        </p>

    </form>

</body>
</html>