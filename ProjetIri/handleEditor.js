//ATTRIBUTES
var lastNbCharacter=0;


//Function to call put mark	
var y = setInterval(function(){
	if(edition==true){
	set_editor_content()};
	}, 300000);
	
	
	
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
	

//Calculate typing speed	
function calculSpeed(){
		var newChara=tinyMCE.activeEditor.getContent().length-lastNbCharacter;
		lastNbCharacter=tinyMCE.activeEditor.getContent().length;
		return newChara;
}

	
//Function to get access to the editor
function get_editor_content() {
	//method1 getting the content of the active editor
	alert(tinyMCE.activeEditor.getContent());
}
function get_raw_editor_content() {
	// Get the raw contents of the currently active editor
	alert(tinyMCE.activeEditor.getContent({format : 'raw'}));
}


//Function to set time mark on the text
function set_editor_content() {
	// Sets the contents of the activeEditor editor
	//BUG SI UN SEUL MOT ou apre un espace!
	//condition si vide
	var text = tinyMCE.activeEditor.getContent();
	var checkifnull = text.replace(/ /g,'')
	checkifnull = checkifnull.replace(/&nbsp;/g,'')
	if (checkifnull == '')
	{
		return;
	}
	var n = text.lastIndexOf(" ");
	//condition si dernier truc est espace
	
	var res1 = text.slice(0,n);
	var res2 = text.slice(n);
	var d = new Date();
	tinyMCE.activeEditor.setContent('<span class="'+((d.getHours()<10?'0':'') + d.getHours())+':'+((d.getMinutes()<10?'0':'') + d.getMinutes())+':'+((d.getSeconds()<10?'0':'') + d.getSeconds())+'">'+ res1 + '</span>' + res2);

	var contenu = tinyMCE.activeEditor.getContent();
	
	tinyMCE.activeEditor.selection.select(tinyMCE.activeEditor.getBody(), true);
	tinyMCE.activeEditor.selection.collapse(false);
	
	sendText(contenu);
}

//function send text	
	function sendText(textE){

			var textF = encodeURIComponent(textE);
			var typingSpeed = calculSpeed();
			var xhr = getXMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
					//alert(xhr.responseText);
				}
			};
			xhr.open("POST", "handlingBlock.php", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("variable1="+textF+"&variable2="+note+"&variable3="+utilisateur+"&variable4="+typingSpeed);	
	}
	
	function sendComment(idBloc,idUtilisateur,contenu){

			var xhr = getXMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
					//alert(xhr.responseText);
				}
			};
			
			xhr.open("POST", "handlingComment.php", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("variable1="+idBloc+"&variable2="+idUtilisateur+"&variable3="+contenu);
	}	
	
	function sendVote(idBloc,valeur){
			var xhr = getXMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
					//alert(xhr.responseText);
				}
			};
			
			xhr.open("POST", "handlingVote.php", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send("variable1="+idBloc+"&variable2="+valeur);
	}	
	