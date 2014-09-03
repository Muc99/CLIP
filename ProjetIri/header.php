<?php
session_start(); // On démarre la session AVANT toute chose
$bdd = new PDO('mysql:host=localhost;dbname=projetclip', 'root', '');
$bdd->exec("SET CHARACTER SET utf8");
?>