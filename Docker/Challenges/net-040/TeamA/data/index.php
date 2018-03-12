<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<?php
if(isset($_GET['start'])){




    if(isset($_POST['valider'])){


        if(($_POST['username']=="administrator") && ($_POST['password']=="@mobcz+123")) {
            echo "Bravo ! Le flag est le mot de passe !";
        }
        else {
            echo "Nom d'utilisateur ou mot de passe incorrect ! Veuillez réssayer !";
        }

    }
    ?>


    <div class="container">

        <div style="margin-top: 150px">

            <form action="index.php?start" method="post">

                <div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3" style="margin-top: 150px">

                    <div class="form-group" style="margin-top: 30px">
                        <input type="text" class="form-control" name="username" placeholder="Nom d'utilisateur">
                    </div>
                    <div class="form-group" style="margin-top: 20px">
                        <input type="text" class="form-control" name="password" placeholder="Mot de passe">
                    </div>

                    <div class="form-group" style="margin-top: 20px">
                        <input type="submit" class="form-control btn btn-default" id="valider" value="Connexion" name="valider" placeholder="Mot de passe">
                    </div>

                </div>

            </form>

        </div>

    </div>


    <?php


}else {
    ?>


    <div class="container">

        <div style="margin-top: 150px">

            <a href="/archives_voip_a.zip" download>Télécharger l'archive pour commencer l'épreuve</a>

        </div>

        <a href="index.php?start"><button class="btn btn-primary">Commencer</button></a>

    </div>



    <?php
}



?>





