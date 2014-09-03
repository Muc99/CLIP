<?php include("header.php"); ?>
<?php
header("Content-Type: text/plain"); // Utilisation d'un header pour spécifier le type de contenu de la page. Ici, il s'agit juste de texte brut (text/plain). 

$variable1 = $_POST["variable1"];
$variable2 = $_POST["variable2"];
$variable3 = $_POST["variable3"];

$req = $bdd->prepare('INSERT INTO commentaire(idBloc, idUtilisateur, contenu) VALUES(:idB,:idU,:idC)');
$req->execute(array(
	'idB' => $variable1,
	'idU' => $variable2,
	'idC' => $variable3
	));

echo 'Info stockee !';
?>