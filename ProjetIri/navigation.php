<?php include("header.php"); ?>
<?php

$variable1 = $_GET["idC"];
$variable2 = $_GET["nC"];
$_SESSION['idCours'] = $variable1; 
$_SESSION['nomCours'] = $variable2;

$resultats = $bdd->prepare('SELECT idNote FROM note WHERE idUtilisateur=:idU AND idCours=:idC');
$resultats->execute(array(':idU'=>$_SESSION['idUtilisateur'],':idC'=>$_SESSION['idCours']));
$donnees = $resultats->fetch(PDO::FETCH_ASSOC);

//si pas de note on en cree une
if ($donnees['idNote'] == null) {
	$req = $bdd->prepare('INSERT INTO note(idUtilisateur, idCours) VALUES(:idu,:idc)');
	$req->execute(array(
	'idu' => $_SESSION['idUtilisateur'],
	'idc' => $_SESSION['idCours']
	));
	//recupere la valeur de l'id cree
	$resultats = $bdd->prepare('SELECT idNote FROM note WHERE idUtilisateur=:idU AND idCours=:idC');
	$resultats->execute(array(':idU'=>$_SESSION['idUtilisateur'],':idC'=>$_SESSION['idCours']));
	$donnees = $resultats->fetch(PDO::FETCH_ASSOC);
}
//sinon c'est bon
else {
	$_SESSION['idNote'] = $donnees['idNote'];
}
header('Location: editorF.php');
?>