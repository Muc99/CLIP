<?php include("header.php"); ?>
<?php
header("Content-Type: text/plain"); // Utilisation d'un header pour spécifier le type de contenu de la page. Ici, il s'agit juste de texte brut (text/plain). 

$variable1 = $_POST["variable1"]; //idBlock
$variable2 = $_POST["variable2"]; //vote

//recup du vote actual
$req1 = $bdd->prepare('Select vote FROM bloc WHERE idBloc=:idB');
$req1->execute(array('idB' => $variable1));
	
$res = $req1->fetch();
$vote = $res['vote'] + $variable2;
 

//modif du vote
$req2 = $bdd->prepare('UPDATE bloc SET vote=:vote WHERE idBloc=:idB');
$req2->execute(array('vote' => $vote,'idB' => $variable1));

echo 'Info stockee !';
?>