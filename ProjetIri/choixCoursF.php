<!DOCTYPE html>
<html lang="en" class="demo-1 no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<meta name="description" content="Hover Effects with animated SVG Shapes using Snap.svg" />
		<meta name="keywords" content="animated svg, hover effect, grid, svg shape html, " />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/liste/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/liste/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/liste/component.css" />
		<script src="js/liste/snap.svg-min.js"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<title>CLIP-Choix du cours</title>
		<?php include("header.php"); ?>

  <script> 
	//store id of cours
	function move(id,nom){			
		window.location.replace("navigation.php?idC="+id+"&nC="+nom);
	}
  </script>
	</head>
	<body style="background-color:white;">
		<?php include("header2.php"); ?>   
		
		<div style="color:rgb(30,134,90);margin-top:-60px;margin-left:0 "><a style="color:rgb(30,134,90);" href="ChoixMatiere.php">> Revenir aux matières</a></div>
		<div id="main" style="width:1000px; margin:0 auto;">
		<h2 style="text-align:center;color:rgb(30,134,90);margin-top:0px; font-size:40px;"><?php echo $_SESSION['nomMatiere']?></h2>
		<div class="container" >
			<!-- Top Navigation -->

			<section id="grid" class="grid clearfix">
				
				<?php
				// On récupère tout le contenu de la table jeux_video
				$reponse = $bdd->prepare('SELECT * FROM cours where idMatiere=:idM');
				$reponse->execute(array(':idM'=>$_SESSION['idMatiere']));
				// On affiche chaque entrée une à une
				while ($donnees = $reponse->fetch())
				{
				$nom=$donnees['Nom'];
				?>
				<!-- il faut modifier l'intervalle de valeur -->
				<a id="<?php echo $donnees['idCours']; ?>" onclick='move(this.id,"<?php echo $nom?>")' data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z" >
					<figure>
						<img src="img/liste/<?php echo $donnees['idCours']%2 + 9; ?>.png" />
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
						<figcaption>
							<h2><?php echo $donnees['Nom']; ?></h2>
							<p><?php echo $donnees['soustitre']; ?></p>
							<button>Ecrire</button>
						</figcaption>
					</figure>
				</a>
				<?php	
				}
				$reponse->closeCursor(); // Termine le traitement de la requête
				?> 
				
			</section>
		</div><!-- /container -->
		</div>
		<script>
			(function() {
	
				function init() {
					var speed = 250,
						easing = mina.easeinout;

					[].slice.call ( document.querySelectorAll( '#grid > a' ) ).forEach( function( el ) {
						var s = Snap( el.querySelector( 'svg' ) ), path = s.select( 'path' ),
							pathConfig = {
								from : path.attr( 'd' ),
								to : el.getAttribute( 'data-path-hover' )
							};

						el.addEventListener( 'mouseenter', function() {
							path.animate( { 'path' : pathConfig.to }, speed, easing );
						} );

						el.addEventListener( 'mouseleave', function() {
							path.animate( { 'path' : pathConfig.from }, speed, easing );
						} );
					} );
				}

				init();

			})();
		</script>
	</body>
</html>