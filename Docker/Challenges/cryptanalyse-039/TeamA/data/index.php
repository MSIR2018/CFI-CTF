<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <?php
    $nom='doe';
    $prenom='johnny';
    $date='1960-02-15';
    $adresse='34 rue de la madeleine';
    $lieu='guyancourt';
    $email='johnny.doe.cfi@gmail.com';
    $mdp='john1sth3b3s7';
    $portable='0645238533';
    $card='4012001037141112';
    $secu='177022523800522';
    $dog='garou';
    $metier='bucheron';
    $marque_voiture='renault';
    $model_voiture='r4';
    $imat_voiture='cr-461-mh';
    ?>
    <form method="post" action="index.php">
        <div class="panel panel-default">
            <div class="panel-heading text-center">Renseignement: Trouvez les informations de John pour valider ce Challenge (tout doit être écrit en minuscule)</div>
            <div class="panel-body">
                <?php
                if (isset($_POST['form']))
                {
                    if(($_POST['nom']==$nom) && ($_POST['prenom']==$prenom) && ($_POST['date']==$date) && ($_POST['lieu']==$lieu) && ($_POST['email']==$email) && ($_POST['mdp']==$mdp) &&
                        ($_POST['portable']==$portable) && ($_POST['card']==$card) && ($_POST['lieu']==$lieu) && ($_POST['secu']==$secu) && ($_POST['dog']==$dog) && ($_POST['metier']==$metier) &&
                        ($_POST['marque_voiture']==$marque_voiture) && ($_POST['model_voiture']==$model_voiture) && ($_POST['imat_voiture']==$imat_voiture) && ($_POST['adresse']==$adresse)
                    ){

                        echo '<center>Bravo belle analyse de renseignement ! Le flag est R3ns31gn3me3nts </center>';
                    }
                }else{
                ?>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Nom:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="nom" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Prenom:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="prenom" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Date de Naissance:</label>
                    <div class="col-md-3">
                        <input type="date" class="form-control" name="date" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Adresse:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="adresse" required="required">
                    </div>
                    <label for="nom" class="col-md-1 control-label">Ville:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="lieu" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Adresse Email:</label>
                    <div class="col-md-3">
                        <input type="email" class="form-control" name="email" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Mot de Passe Compte Gmail:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="mdp" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Numero de portable:</label>
                    <div class="col-md-3">
                        <input type="number" class="form-control" name="portable" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Numero de carte de credit:</label>
                    <div class="col-md-3">
                        <input type="number" class="form-control" name="card" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Numero de Sécurité sociale:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="secu" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Nom de son animal de compagnie:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="dog" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Son metier:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="metier" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Marque de sa voiture:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="marque_voiture" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Modele de sa voiture:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="model_voiture" required="required">
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label for="nom" class="col-md-3 control-label">Imatriculation de sa voiture:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="imat_voiture" required="required" placeholder="xx-000-xx">
                    </div>
                </div>

            </div>
            <div class="panel-footer">
                <input type="submit" value="Valider les informations" name="form" class="form-control btn btn-primary">
            </div>
            <?php } ?>
        </div>
        </form>
</div>
</body>
</html>