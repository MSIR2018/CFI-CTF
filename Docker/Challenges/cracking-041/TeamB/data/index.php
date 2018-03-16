<?php

if(($_GET['username']=="root") && ($_GET['password']=="passwordapk")) {
    echo "Félicitation le flag est :  apk_decrypt123b";
}else
{
    ?>


    <form action="index.php" method="GET">
        Username : <input type="text" name="username"><br>
        Password : <input type="text" name="password"><br>
        <input type="submit" value="submit">
    </form>

    <?php
}

?>

