<?php

if(isset($_POST['valider']))
{
	if ($_POST['login']=="root" and $_POST['password']=="root")
	{
		header('location: bravo.php');
	}
	else
	{
		header('location: rate.php');
	}
	
}

?>

<html>
<head>

</head>
<body>
		<form method="post" action="index.php">
			<p>login <input type="text" name="login" /></p>
			<p>password <input type="password" name="password"/></p>
			<input type="submit" value="Valider" name="valider">
	</form>
</body>
</html>
