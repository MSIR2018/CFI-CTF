<?php

if (isset($_POST['valider']))
{
	$login = $_POST['login'];
	$password = $_POST['password'];

	try {
		$bdd = new PDO ('mysql:host=localhost;dbname=flag_team_A','root','Azerty@123');
	}
	catch (Exeption $e) {
		die ('erreur : ' .$e->getmessage()) or die(print_r($bdd->errorInfo()));
	}
$req = $bdd->query("select * from utilisateurs where login='$login' and password='$password'");
$req->execute();
$resultat = $req->fetch();
echo 'vous êtes connectés en tant que '.$resultat['login'].' voici le mot de passe '.$resultat['password'];

}

?>

<html>
<head>

</head>
<body>
<?php
echo $
?>
	<form method="post" action="index.php">
			<p>login <input type="text" name="login" /></p>
			<p>password <input type="password" name="password"/></p>
			<input type="submit" value="Valider" name="valider">
	</form>
</body>
</html>