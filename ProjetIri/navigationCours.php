<?php include("header.php"); ?>
<?php

$variable1 = $_GET["idM"];
$variable2 = $_GET["nM"];
$_SESSION['idMatiere'] = $variable1; 
$_SESSION['nomMatiere'] = $variable2; 

header('Location: choixCoursF.php');
?>