	<!--[if lt IE 9]><script type="text/javascript" src="excanvas.js"></script><![endif]-->
	<script src="tagcanvas.min.js" type="text/javascript"></script>
	
	
	<!-- CODEMIRROR: Download from http://codemirror.net/codemirror.zip -->
    <link rel="stylesheet" href="codemirror.css" />
    <script src="codemirror.js"></script>
	
	<link rel="stylesheet" href="firepad.css" />
    <script src="firepad.js"></script>
	
	<script type="text/javascript">
	window.onload = function() {
	// set colour of text and outline of active tag
	TagCanvas.interval = 20;
	TagCanvas.textFont = 'Helvetica,Arial Black,sans-serif';
	TagCanvas.textColour = '#00f';
	TagCanvas.textHeight = 50;
	TagCanvas.outlineColour = '#f96';
	TagCanvas.outlineThickness = 5;
	TagCanvas.maxSpeed = 0.05;
	TagCanvas.minBrightness = 0.1;
	TagCanvas.pulsateTime = 0.75;
	TagCanvas.initial = [0.1,-0.1];
	TagCanvas.decel = 0.98;
	TagCanvas.reverse = true;
	TagCanvas.hideTags = false;
	TagCanvas.shadow = '#ccf';
	TagCanvas.shadowBlur = 3;
	TagCanvas.weight = true;
	TagCanvas.clickToFront = 600;
	//TagCanvas.weightFrom = 'data-weight';
	TagCanvas.fadeIn = 800;
	TagCanvas.depth = 0.92;
	TagCanvas.pulsateTo = 0.6;
	TagCanvas.weightMode = 'both';

	TagCanvas.Start('myCanvas2');
	};
	</script>
	
  
	<div id="myCanvasContainer">
	 <canvas width="750" height="550" id="myCanvas2">
	  <p>Anything in here will be replaced on browsers that support the canvas element</p>
	  <ul>
		<?php
		// On récupère tout le contenu de la table jeux_video
		$clefs = $bdd->prepare('SELECT * FROM motclefs WHERE idCours = :idC ORDER BY frequence DESC Limit 20');
		$clefs->execute(array(':idC'=>$_SESSION['idCours']));
		$compteur=0;
		// On affiche chaque entrée une à une
		while ($donnees = $clefs->fetch())
		{
		?>
		<!-- il faut modifier l'intervalle de valeur -->
		<li><a style="font-size: <?php echo $donnees['tailleMot']+10; ?>px" href="#"><?php echo $donnees['mot']; ?></a></li>
		<script>listeMot[<?php echo $compteur; ?>]="<?php echo $donnees['mot']; ?>";</script>
		<?php
		$compteur++;
		}
		$clefs->closeCursor(); // Termine le traitement de la requête
		?>  
	  <!---->
	  </ul>
	 </canvas>
	</div>
