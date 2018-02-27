<?php 
if(isset($_GET['page'])){
	$url=$_GET['page'];
	
	if($url=='accueil'){
		$url='accueil.php';
	}
	
	if((include $url) != TRUE){
		echo 'Erreur 404: Page non trouvé';
	}
}else{
	header('Location: index.php?page=accueil');
}
 ?>