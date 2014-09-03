<?php include("header.php"); ?>
<?php
header("Content-Type: text/plain"); // Utilisation d'un header pour spécifier le type de contenu de la page. Ici, il s'agit juste de texte brut (text/plain). 

$variable1 = $_POST["variable1"];
$variable2 = $_POST["variable2"];
$variable3 = $_POST["variable3"];
$variable4 = $_POST["variable4"];

$req = $bdd->prepare('INSERT INTO updatebloc(idUtilisateur, idNote, contenuTotal,speed) VALUES(:idu,:idn,:nb,:sp)');
$req->execute(array(
	'idu' => $variable3,
	'idn' => $variable2,
	'nb' => $variable1,
	'sp' => $variable4
	));

echo 'Info stockee !';
?>