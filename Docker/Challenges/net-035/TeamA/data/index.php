<?php $adresse_ip = $_SERVER['REMOTE_ADDR'];
shell_exec('bash send.sh '.$adresse_ip);
echo 'Mise à jour initialisée';
?>
