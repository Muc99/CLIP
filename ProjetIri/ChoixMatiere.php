<?php include("header.php"); ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        
        <!-- Our stylesheet -->
        <link rel="stylesheet" href="assets/css/styles.css" />
        <link rel="stylesheet" href="css/menuMatiere/style.css" />

    </head>
    <body>
    	<?php include("header2.php"); ?>
        <div id="main" style="width:1000px; margin:0 auto;">
			<?php
			//recupere le contenu de la note
			$resultat = $bdd->query('SELECT Distinct matiere.nom as nom, matiere.idMatiere as idMatiere, count(*) as nbCours FROM cours, matiere WHERE cours.idMatiere=matiere.idMatiere group by matiere.nom');	

			// On affiche chaque entrée une à une
			$count = 1;
			while ($sepBloc = $resultat->fetch())
			{
			$nom=$sepBloc['nom'];
			?>

				<div style="margin-left: 70px;float :left;margin-bottom:70px;" class="folder">
				<div class="front" onmouseover="openFolder(this.id)" onmouseout="closeFolder(this.id)" id="<?php echo $sepBloc['idMatiere']; ?>" onclick='move(this.id,"<?php echo $nom?>")'><?php echo $sepBloc['nbCours'];?></div>
				<div class="back"></div>
				<p style="padding-top:110px;text-align:center;"><?php echo $sepBloc['nom'];?></p>
				</div>
				
			<?php	
			$count = $count+1;
			}
			$resultat->closeCursor(); // Termine le traitement de la requête
			?> 			
        </div>
		

        
        <!-- JavaScript Includes -->
		<script>
		function openFolder(folder){
			var element = document.getElementById(folder);
			element.classList.add("open");
		}
		function closeFolder(folder){
			var element = document.getElementById(folder);
			element.classList.remove("open");
		}
		//store id of cours
		function move(id, nom){			
			window.location.replace("navigationCours.php?idM="+id+"&nM="+nom);
		}
		</script>

        
     </body>
</html>
