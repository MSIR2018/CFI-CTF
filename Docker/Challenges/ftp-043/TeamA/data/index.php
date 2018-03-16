<?php

if(isset($_POST['valider']))

{	
		if(($ftp = ftp_connect("ftp://127.0.0.1",21))==false)
		{
			echo 'erreur de connexion';
		}
		if(!ftp_login($ftp,"bob","bouffeunefrite"))
		{
			echo 'l\'identification a échoué...';
		}
		else
		{
			echo 'connexion FTP ok';
		}
}
?>

<html>
<head>

</head>
<body>
		<form method="post" action="index.php">
		<input type="submit" value="Se Connecter" name="valider">
	</form>
</body>
</html>
