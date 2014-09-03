<html>
 <head>
  <title>CLIP-Choix du cours</title>
  <?php include("header.php"); ?>
  			<?php $contenu='test defilement';?>
  <script> 
	//Create Ajax acess
	function getXMLHttpRequest(){
			var xhr = null;
			
			if (window.XMLHttpRequest || window.ActiveXObject) {
				if (window.ActiveXObject) {
					try {
						xhr = new ActiveXObject("Msxml2.XMLHTTP");
					} catch(e) {
						xhr = new ActiveXObject("Microsoft.XMLHTTP");
					}
				} else {
					xhr = new XMLHttpRequest(); 
				}
			} else {
				alert("Votre navigateur ne supporte pas l'objet XMLHTTPRequest...");
				return null;
			}
		return xhr;
	}

	//store id of cours
	function move(id){
			var xhr = getXMLHttpRequest();
			xhr.onreadystatechange = function() {
			};
			xhr.open("GET", "navigation.php?variable1="+id, true);
			xhr.send(null);
			window.location.replace("editor.php");
	}
  </script>
  </head>

    <body>
		<?php
    	// On récupère tout le contenu de la table jeux_video
		$reponse = $bdd->query('SELECT * FROM cours');

		// On affiche chaque entrée une à une
		while ($donnees = $reponse->fetch())
		{
		?>
		<!-- il faut modifier l'intervalle de valeur -->
		<li><a id="<?php echo $donnees['idCours']; ?>" onclick="move(this.id)"> <?php echo $donnees['Nom']; ?></a></li>
		<?php
		}
		$reponse->closeCursor(); // Termine le traitement de la requête
		?>  
	
    </body>
</html>