<?php include("header.php"); ?>
<?php
$loginInit = $_GET["variable1"];
$passInit = $_GET["variable2"];

//on récupère les valeurs des champs
$login = trim($loginInit); //supprime les espaces en début et fin de chaine
$login = htmlspecialchars($login, ENT_QUOTES); // supprime les caracteres speciaux html dans la chaine
$login = stripslashes($login); // Supprime les antislashs d'une chaîne.       
	
$pass = trim($passInit);
$pass = htmlspecialchars($pass, ENT_QUOTES);
$pass = stripslashes($pass);

//cryptage sha1 du mot de pass
//$pass = sha1($pass);

//on sélectionne la table identifiant et on teste le champ login
$resultats = $bdd->prepare('SELECT idUtilisateur, pseudo, password FROM utilisateur WHERE pseudo=:login AND password=:pass');
//on execute la requète
$resultats->execute(array(':login'=>$login,':pass'=>$pass));
//on récupére les données dans un tableau
$donnees = $resultats->fetch(PDO::FETCH_ASSOC);

//si le password est différent on met un message d'erreur
if ($donnees['password'] != $pass) {
	header('Location: connexionF.php?error=bad_login');
}
//sinon c'est bon
else {
	//on crée des variables accessibles depuis toutes les pages
	$_SESSION['idUtilisateur']	=	$donnees['idUtilisateur'];
	$_SESSION['pseudo']		=	$donnees['pseudo'];    
	$_SESSION['password']		=	$donnees['password'];  
	
	// Utiliser la redirection ---------------
	header('Location: ChoixMatiere.php');
	
}
?>
