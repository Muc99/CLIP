<html>
<head>
	<meta charset="utf-8">
	<title>IRI</title>
		
	<?php include("header.php"); 
		$blockcount = 0;
	?>
		
	
	<?php
	$valeur = $bdd->prepare('SELECT dateStart FROM cours WHERE idCours=:idC');
	$valeur->execute(array(':idC'=>$_SESSION['idCours']));
	$dateD = $valeur->fetch(PDO::FETCH_ASSOC);
	
	$count = 0;
	?>
	
	<?php
	//recupere le contenu de la note
	$resuls = $bdd->prepare('SELECT contenu FROM note WHERE idNote=:idN');
	$resuls->execute(array(':idN'=>$_SESSION['idNote']));
	$texteInit = $resuls->fetch(PDO::FETCH_ASSOC);
	?>
	
	<script>
	var note = <?php echo $_SESSION["idNote"]; ?>;
	var utilisateur = <?php echo $_SESSION["idUtilisateur"]; ?>;
	
	//calcul de la date (si edition ou lecture)
	var stringDate = '<?php echo $dateD['dateStart']; ?>';
	var dateInit = new Date(stringDate);
	var dateToday = new Date();
	
	var  edition = true;
	//Il faudra mettre une date de fin!
	if (dateToday>dateInit)
	{
		edition = false;
	}
	
	var speedBlock = new Array();
	var speedMax = new Array();
	var speedMin = new Array();
	var listeMot = new Array();
	</script>
	
		<link rel="stylesheet" type="text/css" href="css/sidebar/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/sidebar/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/sidebar/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/sidebar/style.css" />
		<link rel="stylesheet" type="text/css" href="css/sidebar/component.css" />
		<script src="js/sidebar/modernizr.custom.js"></script>
		<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
		<script type="text/javascript" src="handleEditor.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css/chart/style.css" />

		<script type="text/javascript" src="js/chart/modernizr.custom.79639.js"></script> 
		<!--[if lte IE 8]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->	
		<script type="text/javascript" src="js/chart/d3.v2.js"></script>
		<script type="text/javascript" src="jquery.js"></script>
	
</head>
<body>
<div id="st-container" class="st-container">
			<!-- 	
				example menus 
				these menus will be on top of the push wrapper
			-->
			
			<nav class="st-menu st-menu4 st-effect-1-3" id="menu-5" style="margin-top:60px;z-index:1001; border-style: solid;">
				<?php include("tagCloud.php");?> 
			</nav>
			
			<!-- COURBE ATTENTION -->
			<nav class="st-menu st-menu3 st-effect-1-2" id="menu-4" style="margin-top:60px;z-index:1001; border-style: solid;padding-left:10px;padding-right:10px;">
				<?php include("courbe.php");?> 
			</nav>
			
			<nav class="st-menu st-effect-2 st-effect-1-reverse st-effect-1-reverse-2" id="menu-2">
			<div class="icone-user">
			<img src="icons/svg/utilisateur.svg" style="float:left">
			<div style="color:white; margin-left:120px; font-size:34px; padding-top:20px;margin-bottom:20px;"><?php echo $_SESSION['pseudo']; ?></div>
			</div>
				<h2 style="text-align:center;" class="icon icon-">Menu</h2>
				<ul>
					<!--<li><a class="icon icon-nouvellenote" href="#">Nouvelle note</a></li>-->
					<li><a class="icon icon-listecours" href="choixCoursF.php">Cours</a></li>
					<div id="st-trigger-effects">
					<button class="icon icon-courbe buttonMenu" data-effect="st-effect-1-2">Courbes d'activité</button>
					</div>
					<div id="st-trigger-effects">
					<button class="icon icon-nuage buttonMenu" data-effect="st-effect-1-3">Nuage de mots</button>
					</div>
					<li><a class="icon icon-deconnexion" href="connexionF.php">Déconnexion</a></li>
				
				</ul>
			</nav>

			<!-- content push wrapper -->
			<div class="st-pusher">
					<div class="st-content"><!-- this is the wrapper for the content -->
					
					<div class="st-content-inner" ><!-- extra div for emulating position:fixed of the menu -->
					
						<!-- HEADER -->
						<header class="codrops-header">
						<div class="main clearfix">
							<div id="st-trigger-effects" class="Column">
								<button class ="menu-button" data-effect="st-effect-2">M</button>
							</div>
							<div class="Column2">
								<div  style="float:left;">
									<button class="action-button" onClick="set_editor_content()">Sauvegarder</button>
								</div>
								<div id="st-trigger-effects" style="margin-left:120px;">
									<button class="action-button" data-effect="st-effect-1-reverse-2">Galerie</button>
								</div>
							</div>
						</div>
						
							<span style="font-size:27px;margin-bottom:-60px;"><?php echo $_SESSION['nomCours']?></span>
						
						</header>
						
						<!-- FIN HEADER -->
<!-- canvas -->
						<canvas id="myCanvas" width="7" height="100" style="float:left;margin-left:220px; margin-top:105px;">
						Your browser does not support the HTML5 canvas tag.</canvas>
						
<!-- form1 -->
						<div id="content-editor" class="parent-writing" style="float:left;z-index:99;">
						
							<div id="tiny">

							<script type="text/javascript">
							tinyMCE.init({
									// General options
									plugins : "image",
									plugins: "autoresize",
									menubar:false,
									statusbar: false,
									overlayButton: true,
									skin: 'light',
									toolbar1: "bold italic underline alignleft aligncenter alignright link image forecolor",
									mode : "specific_textareas",
									editor_selector : "mceEditor",

									paste_data_images: true,
									forced_root_block : "",
									verify_html : true,
									cleanup : false,
							});
							</script>
							
							</div>

							<form method="post" action="somepage" >
									<textarea id="myarea1" class="mceEditor"><?php echo $texteInit['contenu'] ?></textarea>
							</form>		
						</div>
									
<!-- TEST IMAGE -->
							<!-- 1 par block / 33 de decalage en plus   a chaque fois, calcul par rapport a la hauteur - 100 (pas besoin de relative) /cacher si mode edition-->
							<?php
							//recupere le contenu de la note
							$resultat = $bdd->prepare('SELECT contenu, date, speed FROM bloc WHERE idNote=:idN');
							$resultat->execute(array(':idN'=>$_SESSION['idNote']));
							

							// On affiche chaque entrée une à une
							while ($sepBloc = $resultat->fetch())
							{
							?>
<!-- ajout de l'image -->
							<div id="st-trigger-effects">
							<button id="imageBloc<?php echo $count; ?>" class ="menu-button2" data-effect="st-effect-1-reverse" onClick='chooseBlock("<?php echo $sepBloc['date']; ?>",<?php echo $count; ?>)' align="right"  style="position: relative;float:left;left:<?php echo -$count*21;?>;top:92px">!</button>
							</div>
							<script>speedBlock[<?php echo $count; ?>] = <?php echo $sepBloc['speed'];?>;</script>
								<!-- PHP Only for canvas-->
								<?php 
									$getSpeed = $bdd->prepare('SELECT MAX(bloc.speed) as maxSpeed, MIN(bloc.speed) as minSpeed FROM bloc, note WHERE note.idCours=:idC AND bloc.idNote=note.idNote AND bloc.date = :idD');
									$getSpeed->execute(array(':idC'=>$_SESSION['idCours'],':idD'=>$sepBloc['date']));
								
									// On affiche chaque entrée une à une
									$speedStat = $getSpeed->fetch();
								?>
								<script>
									speedMax[<?php echo $count; ?>] = <?php echo $speedStat['maxSpeed'];?>;
									speedMin[<?php echo $count; ?>] = <?php echo $speedStat['minSpeed'];?>;
								</script>
								<?php
									$getSpeed->closeCursor(); // Termine le traitement		
								?>
							
							<?php	
							$count = $count+1;
							}
							$resultat->closeCursor(); // Termine le traitement de la requête
							?> 

<!-- button color -->
						<!--<button style=" z-index:105;float:left;margin-left:-715px;margin-top:70px; position:relative;" onclick="addColor()">color</button>-->						
							
							
<!-- form2 -->						
							<div id="content-editor2" class="parent-writing" style="float:left; display:none;">
								<form method="post" action="somepage" >
										<textarea id="myarea2" class="mceEditor"><?php echo $texteInit['contenu'] ?></textarea>
								</form>
							</div>
							
							
							<script>														
								//recupere le nombre de blocs
								var nbBloc = <?php echo $count; ?>;
								
								
								//get text from 1rst editor
								var textblocrecup = <?php echo $texteInit['contenu'] ?>;

								//activate the 2nd editor
								var editeur2 = document.getElementById('content-editor2');
								editeur2.style.display='inline';
										
							
								//taille de chaque bloc
								for (var i = 0; i < nbBloc; i++) { 
								
									var n = textblocrecup.indexOf("</span>");
									
									//coupe avant le span					
									var res1 = textblocrecup.slice(0,n);
									
									//remplir le bloc dans le 2nd editor
									tinyMCE.get('myarea2').setContent(res1);
									
									//calculer la taille de cet editor
									var tailleEditeur2 = editeur2.clientHeight;
									
									//on remplace les spans pour le calcul
									var textblocrecup = res1 + "1234567"+ textblocrecup.slice(n+7);

									
									//calcul de la position des images
									var position = tailleEditeur2-10;
									//alert(position);
									
									document.getElementById("imageBloc"+i).style.top = position;
								}
								editeur2.style.display='none';

							</script>
						<!-- /main -->

					</div><!-- /st-content-inner -->
				</div><!-- /st-content -->
			</div><!-- /st-pusher -->
		
			<nav class="st-menu st-menu2 st-effect-1-reverse" id="menu-3" style="padding-top:40px;">
				<!-- ici faire du php pour recuperer les blocs! -->
				<?php
				
				//recupere le contenu de la note
				$getblock = $bdd->prepare('SELECT utilisateur.pseudo, bloc.contenu, bloc.date, bloc.idBloc FROM bloc, utilisateur, note WHERE note.idCours=:idC AND note.idNote = bloc.idNote AND bloc.idNote != :idN AND note.idUtilisateur = utilisateur.idUtilisateur ORDER BY bloc.vote DESC;');
				$getblock->execute(array(':idC'=>$_SESSION['idCours'], ':idN'=>$_SESSION['idNote']));
				
				while ($bloc = $getblock->fetch())
				{
				$dateBlock = str_replace(":","-", $bloc['date']);
				?>
				<!-- ajout du bloc -->
				<div id="block<?php echo $blockcount ?>" class="<?php echo $dateBlock;?>" style="margin-right:30px; display:none">
					<hr color="#23aa72" width="100%" align="left" size="1">
					
					<div class="iconUtilisateur" style="float:left; width: 40px; vertical-align:top;">
					   <img src="img/utilisateur.png" WIDTH=30 HEIGHT=30/>
					</div>
						
					<div class="contenuBloc" style="margin-left: 40px; vertical-align:top;">
					<p style="color:black;"><b><?php echo $bloc['pseudo'];?></b></p>
					<p style="color:black; font-size:12px; font-family:helvetica; text-align : justify;"><?php echo $bloc['contenu'];?></p>
					</div>
					
					<div>
						<button class ="menu-button2" onClick='insertBlock("<?php echo $bloc['contenu'] ?>","<?php echo $dateBlock;?>",<?php echo $bloc['idBloc'] ?>)' style="margin-left:40px;width:90px;font-size:14px;">Integrer</button>
						<button class ="menu-button2" onClick='passBlock("<?php echo $dateBlock;?>",<?php echo $bloc['idBloc'] ?>)' style="float:right;width:90px;font-size:14px;background-color:rgb(241,128,39);">Passer</button>
					</div>
					
					<div>
					<?php 
					//PARTIE COMMENTAIRES
					$getblock2 = $bdd->prepare('SELECT contenu, pseudo FROM commentaire, utilisateur WHERE idBloc = :idB AND utilisateur.idUtilisateur = commentaire.idUtilisateur');
					$getblock2->execute(array(':idB'=>$bloc['idBloc']));
					while ($bloc2 = $getblock2->fetch())
					{
					?>
						<div style="margin-left:40px;">
						<hr color="#23aa72" width="100%" align="left" size="1">
						
						<div class="iconUtilisateur" style="float:left; width: 30px; vertical-align:top;">
						   <img src="img/utilisateur.png" WIDTH=25 HEIGHT=25/>
						</div>
							
						<div style="margin-left: 30px; vertical-align:top;">
						<p style="color:black; font-family:helvetica; font-size:12px;"><b><?php echo $bloc2['pseudo'];?></b></p>
						<p style="color:black; font-size:11px; font-family:helvetica; text-align : justify;"><?php echo $bloc2['contenu'];?></p>
						</div>
						</div>

					<?php
					}
					?>
					<!-- on rajoute le formulaire de commentaire-->
						<div id="comment<?php echo $blockcount ?>">
						<hr color="#23aa72" width="100%" align="left" size="1">
						<p style="color:black;font-size:12px;"><b>Laisser un commentaire</b></p>
						<textarea id="area<?php echo $blockcount ?>" style="border: 1px solid #cccccc; width:100%;resize: none;"></textarea>
						<button class ="menu-button2" style="width:90px;font-size:14px;" onClick='prepareComment("area<?php echo $blockcount ?>",<?php echo $bloc['idBloc']; ?>,"block<?php echo $blockcount ?>","comment<?php echo $blockcount ?>")'>Envoyer</button>
						</div>
					</div>
					<script>
					//envoie d'un commentaire
					function prepareComment(idArea,idB, idFather,idCommentBlock){
						var idBloc =idB;
						var idUtilisateur = <?php echo $_SESSION['idUtilisateur']; ?>;
						var contenu = document.getElementById(idArea).value;
						sendComment(idBloc,idUtilisateur,contenu);

						var fatherBloc = document.getElementById(idFather);
						
						// create a new div element 
						var div = document.createElement('div');
						div.innerHTML = '<div style="margin-left:40px;"><hr color="#23aa72" width="100%" align="left" size="1"><div class="iconUtilisateur" style="float:left; width: 30px; vertical-align:top;"><img src="img/utilisateur.png" WIDTH=25 HEIGHT=25/></div><div style="margin-left: 30px; vertical-align:top;"><p style="color:black; font-family:helvetica; font-size:12px;"><b><?php echo $_SESSION['pseudo'];?></b></p><p style="color:black; font-size:11px; font-family:helvetica; text-align : justify;">'+contenu+'</p></div></div>';						
											
						//insert before text box							
						var textareaBloc = document.getElementById(idCommentBlock);
						textareaBloc.parentElement.insertBefore(div,textareaBloc);	
					}
					</script>
				</div>
				<?php	
				$blockcount+= 1;
				}
				$resultat->closeCursor(); // Termine le traitement de la requête
				?> 
			</nav>
			
			<nav class="st-menu st-menu5 st-effect-1-reverse-2" id="menu-6">
			<h2 style="text-align:center;" class="icon icon-">Galerie</h2>
			<?php
			if($_SESSION['nomCours'] == "Les TOC")
			{
				echo '<img draggable="true" class="imgGalerie" src="img/liste/2.png" alt="" style="margin-left:10px;margin-top:10px;max-width:280;">';
				echo '<img class="imgGalerie" src="img/liste/8.png" alt="" style="margin-left:10px;margin-top:10px;max-width:280;">';
				}
			?>
			</nav>
			
			<script>
			var idListActu = 0;
			var idBlockPassed = new Array();
			for (var i=0; i < <?php echo $count ?>; i++)
			{
				idBlockPassed[i] = 0;
			}
			
			function chooseBlock(classValue, idListBlock) {			
				//moyen pour desactiver tout les autres blocs
				idListActu = idListBlock;
				for (var i=0; i < <?php echo $blockcount ?>; i++)
				{
					var idtest = "block"+i;
					document.getElementById(idtest).style.display='none';
				}
				//utiliser les class pour afficher les elements (pb array)
				var classBlock = classValue.slice(11);
				classBlock = classBlock.replace(":","-");
				classBlock = classBlock.replace(":","-");
				//ici, condition pour revnir a zero
				if(document.getElementsByClassName(classBlock).length <= idBlockPassed[idListActu])
				{
					idBlockPassed[idListActu]=0;
				}
				document.getElementsByClassName(classBlock)[idBlockPassed[idListActu]].style.display='inline-block';
			}
			function passBlock(classValue, idBlock){
			//Comment revenir au début?
				idBlockPassed[idListActu]+=1;
				chooseBlock(classValue,idListActu);
				sendVote(idBlock,-1);
			}
			
			function insertBlock(contenu, date, idBlock) {	
				date = date.slice(11);
				date = date.replace("-",":");
				date = date.replace("-",":");
				note = tinyMCE.get('myarea1').getContent();
				var count=0;
				//on veut savoir quelle est la span concernée (count)
				while(true)
				{
					count+=1;
					var n = note.indexOf('<span class="');
					if (note.indexOf(date) == n+13)
					{
						break;
					}
					else{
						note = note.replace('<span class="','1234567890123')
					}
				}
				//on veut savoir la position du la span fermante
				var index = 0;
				for (var i=0; i < count; i++)
				{
					index = note.lastIndexOf('</span>');
					note = note.slice(0,index) + "1234567" + note.slice(index+7);
				}
				
				//maintenant on place le texte
				var finalText = tinyMCE.get('myarea1').getContent();
				var part1 = finalText.slice(0,index);
				var part2 = finalText.slice(index);
				tinyMCE.get('myarea1').setContent(part1+contenu+part2);
				
				sendVote(idBlock,5);
				surligneMot();
			}
			
			var w = setInterval(function(){
			modifyIcons();
			modifyCanvas();
			}, 500);
			function modifyIcons(){
				//recupere le nombre de blocs
				var nbBloc = <?php echo $count; ?>;
				
				
				//get text from 1rst editor
				var textblocrecup = tinyMCE.get('myarea1').getContent();

				//activate the 2nd editor
				var editeur2 = document.getElementById('content-editor2');
				editeur2.style.display='inline';
						
			
				//taille de chaque bloc
				for (var i = 0; i < nbBloc; i++) { 
				
					var n = textblocrecup.indexOf("</span>");
					
					//coupe avant le span					
					var res1 = textblocrecup.slice(0,n);
					
					//remplir le bloc dans le 2nd editor
					tinyMCE.get('myarea2').setContent(res1);
					
					//calculer la taille de cet editor
					var tailleEditeur2 = editeur2.clientHeight;
					
					//on remplace les spans pour le calcul
					var textblocrecup = res1 + "1234567"+ textblocrecup.slice(n+7);

					
					//calcul de la position des images
					var position = tailleEditeur2-10;
					
					document.getElementById("imageBloc"+i).style.top = position;
				}
				editeur2.style.display='none';
			}
			
			function modifyCanvas(){
				
				//recupere le nombre de blocs
				var nbBloc = <?php echo $count; ?>;
						
				//get text from 1rst editor
				var textblocrecup = tinyMCE.get('myarea1').getContent();

				//activate the 2nd editor
				var editeur2 = document.getElementById('content-editor2');
				editeur2.style.display='inline';
				
				//calculate size of first editor
				var editeur = document.getElementById('content-editor');
				var tailleEditeur = editeur.clientHeight;
				
				//modif du canvas
				var c=document.getElementById("myCanvas");
				var tailleEditeurY = document.getElementById('content-editor').clientHeight-95;
				var ctx=c.getContext("2d");
				var grd=ctx.createLinearGradient(0,0,0,tailleEditeurY);	

				
				//taille de chaque bloc
				for (var i = 0; i < nbBloc; i++) { 
				
					var n = textblocrecup.indexOf("</span>");
					
					//coupe avant le span					
					var res1 = textblocrecup.slice(0,n);
					var tailleBloc = 0;
					
					//remplir le bloc dans le 2nd editor
					tinyMCE.get('myarea2').setContent(res1);
					
					//calculer la taille de cet editor
					var tailleEditeur2 = editeur2.clientHeight;

					//on remplace les spans pour le calcul
					var textblocrecup = res1 + "1234567"+ textblocrecup.slice(n+7);					
					
					//calcul de la position du canvas
					var position = tailleEditeur2/tailleEditeur;
					
					
					//test (PB PERIODE CREUSE : A FAIRE POUR 1 BLOC DONNE ET NON LE TOUT FAIRE UN NOUVEL ARRAY
					var value=((speedBlock[i]-speedMin[i])/(speedMax[i]-speedMin[i]))*10;
					var color="cyan";
					if(value<=8)
						color="lime";
					if(value<=6)
						color="yellow";
					if(value<=4)
						color="orange";
					if(value<=2)
						color="red";
					
					grd.addColorStop(position,color);
				}		
				editeur2.style.display='none';
				c.height=tailleEditeurY;
				ctx.fillStyle=grd;
				ctx.fillRect(0,0,7,tailleEditeur);
			}
			
			function addColor(){
			
				//recupere le contenu
				var content = tinymce.get('myarea1').selection.getContent();
				//content = content.slice(n+30);
				var dummy = content;
				//calcul sur la selection
				while(dummy.indexOf('</span>') !=-1)
				{
				/*
					var n = dummy.indexOf('</span>');
					var res1 = content.slice(0,n);
					var res2 = content.slice(n+7);
					var res1p = dummy.slice(0,n);
					var res2p = dummy.slice(n+7);
					content = res1+'</code></span><code style="color:red;font-family:verdana;">'+res2;
					dummy = res1p+'</code>1234567<code style="color:red;font-family:verdana;">'+res2p;*/
				}
				
				//remplacement de l'ancien texte
				tinyMCE.activeEditor.execCommand('mceInsertContent', true, '<code style="color:red;font-family:verdana;">'+content+'</code>');
				//tinyMCE.activeEditor.execCommand('mceInsertContent', true, '<span><code style="color:red;font-family:verdana;">vgb</code></span>');
			}
			
			var w = setTimeout(function(){
			surligneMot();
			}, 200);
			function surligneMot(){

				for (var i=0; i < 20; i++)
				{		
					var content = tinymce.get('myarea1').getContent();
					var dummy = content;
					//calcul sur la selection
					while(dummy.indexOf(listeMot[i]) !=-1)
					{		
						var n = dummy.indexOf(listeMot[i]);
						var res1 = content.slice(0,n);
						var res2 = content.slice(n+listeMot[i].length);
						var res1p = dummy.slice(0,n);
						var res2p = dummy.slice(n+listeMot[i].length);
						content = res1+'<code style="background:yellow;font-family:verdana;">'+listeMot[i]+'</code>'+res2;
						
						var str = new Array(listeMot[i].length + 1).join("o");
						dummy = res1p+'<code style="background:yellow;font-family:verdana;">'+str+'</code>'+res2p;
						//alert(content);
					}
					tinymce.get('myarea1').setContent(content);
				}
				
			}
			
			</script>
		
		</div><!-- /st-container -->
<script src="js/sidebar/classie.js"></script>
<script src="js/sidebar/sidebarEffects.js"></script>
</body>
</html>