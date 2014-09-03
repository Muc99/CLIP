<!DOCTYPE html>
<html  lang="en" class="no-js">
  <head>
		<title>CLIP-Connexion</title>
		<?php include("header.php"); ?>
  
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<meta name="description" content="Minimal Form Interface: Simplistic, single input view form" />
		<meta name="keywords" content="form, minimal, interface, single input, big form, responsive form, transition" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/form/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/form/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/form/component.css" />
		<script src="js/form//modernizr.custom.js"></script>
  
  </head>

    <body style="background-color:white;">

			<div class="container">
			<!-- Top Navigation -->
			<header class="codrops-header" style="padding-bottom:0;padding-top:0">
				<img src="img/logo.png" width=320/>
			</header>
			<div id="rectangle">
			<section>
				<form id="theForm" class="simform" autocomplete="off">
					<div class="simform-inner">
						<ol class="questions">
							<li>
								<span><label for="q1">Nom d'utilisateur :</label></span>
								<input type="text" name="login" id="login" />
							</li>
							<li>
								<span><label for="q2">Mot de passe :</label></span>
								<input type="password" name="pass" id="pass" />
							</li>
						</ol><!-- /questions -->
						<button class="submit" type="submit">Send answers</button>
						<div class="controls">
							<button class="next"></button>
							<div class="progress"></div>
							<span class="number">
								<span class="number-current"></span>
								<span class="number-total"></span>
							</span>
							<span class="error-message"></span>
						</div><!-- / controls -->
					</div><!-- /simform-inner -->
					<span class="final-message"></span>
				</form><!-- /simform -->
				<input type="checkbox" name="checkbox" id="checkbox_id" value="value"/>
				<label for="checkbox_id" style="font-size:18px;color: rgb(27,109,72);padding-right:150px;">Se souvenir de moi</label>
				<a id="mdpO" style="color: rgb(27,109,72)">Mot de passe oublié?</a>
			
			</section>
			</div>
		</div><!-- /container -->
		<?php 
		if (!empty($_GET)) {
			if ($_GET['error'] == 'bad_login')
			{
			?>
				<p style="text-align:center;"><?php echo "Mauvais nom d'utilisateur ou mauvais mot de passe";?></p>
			<?php
			}
		}
		?>	
		
		<script src="js/form//classie.js"></script>
		<script src="js/form//stepsForm.js"></script>
		<script>
			var theForm = document.getElementById( 'theForm' );

			new stepsForm( theForm, {
				onSubmit : function( form ) {
					// hide form
					classie.addClass( theForm.querySelector( '.simform-inner' ), 'hide' );					
					document.forms["theForm"].submit();
					window.location.href = "handleConnexion.php?variable1="+ document.getElementById("login").value+"&variable2="+ document.getElementById("pass").value; /* connexon ICI*/
				}
			} );
		</script>
	
	
	</body>
</html>