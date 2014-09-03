  <script type="text/javascript">
	var nbJours = 6;
	var listeC = new Array();
	var valeurs = new Array();
	for (var i=0; i<12;i++)
	{
		val = Math.random()*50+1;
		valeurs[i]=Math.round(val);
	}

	for (var i=0; i<nbJours;i++)
	{
		var nbCours= Math.random()*4 + 1;
		var numC = new Array();
		var numR = new Array();
		var numX = new Array();
		for (var j=0; j<nbCours;j++)
		{
			while(true)
			{
				numR[j] = Math.random()*13+1;
				numC[j]=Math.round(numR[j]);
				
				var index= numX.indexOf(numC[j]);
				if(index == -1)
				{
					numX[j]=numC[j];
					break;
				}
			}
		}
		listeC[i] = numC;
		
	}
	var u = setTimeout(function () {
    var chart = new CanvasJS.Chart("chartContainer",
    {
      title:{
        text: "Courbes d'activité",
		fontSize: 25,
      },   
	legend: {
        fontSize: 20,
		fontFamily: "calibri",
     },

      data: [
      {        
        type: "splineArea",
        color: "rgba(54,158,173,.7)",
		showInLegend: true,
		legendText: "Activité de la classe",
        dataPoints: [
			{x: 1, y: valeurs[0],label: "Lundi"},     
			{x: 2, y: valeurs[1],label: "Mardi"},     
			{x: 3, y: valeurs[2],label: "Mercredi"},     
			{x: 4, y: valeurs[3],label: "Jeudi"},     
			{x: 5, y: valeurs[4],label: "Vendredi"},     
			{x: 6, y: valeurs[5],label: "Samedi"},        
			]
	  },
      {        
        type: "splineArea",
        color: "rgba(54,32,173,.7)",
		showInLegend: true,
		legendText: "Activité de <?php echo $_SESSION['pseudo'];?>",
        dataPoints: [
			{x: 1, y: valeurs[6],label: "Lundi"},     
			{x: 2, y: valeurs[7],label: "Mardi"},     
			{x: 3, y: valeurs[8],label: "Mercredi"},     
			{x: 4, y: valeurs[9],label: "Jeudi"},     
			{x: 5, y: valeurs[10],label: "Vendredi"},     
			{x: 6, y: valeurs[11],label: "Samedi"},     
			]
		}                  
      ],
	  toolTip:{
		 content: function(e){
		 var cours="";
		 for (var i=0; i<listeC[e.entries[0].dataPoint.x-1].length;i++)
		 {
				var numC = listeC[e.entries[0].dataPoint.x-1][i];
				if(numC == 1)
				{
					cours= cours + "Les TOC<br/>";
				}
				if(numC == 2)
				{
					cours= cours + "Le totalitarisme<br/>";
				}
				if(numC == 3)
				{
					cours= cours + "Rome<br/>";
				}
				if(numC == 4)
				{
					cours= cours + "Le croissant fertile<br/>";
				}		
				if(numC == 5)
				{
					cours= cours + "1958-1962<br/>";
				}	
				if(numC == 6)
				{
					cours= cours + "Le stress<br/>";
				}	
				if(numC == 7)
				{
					cours= cours + "L'autisme<br/>";
				}	
				if(numC == 8)
				{
					cours= cours + "Stérochimie<br/>";
				}	
				if(numC == 9)
				{
					cours= cours + "Les alcènes<br/>";
				}	
				if(numC == 10)
				{
					cours= cours + "Les glucides<br/>";
				}
				if(numC == 11)
				{
					cours= cours + "Test psychologique<br/>";
				}
				if(numC == 12)
				{
					cours= cours + "Banque - PME<br/>";
				}
				if(numC == 13)
				{
					cours= cours + "Probabilité<br/>";
				}
				if(numC == 0)
				{
					cours= cours + "Java<br/>";
				}
			
		 }
		 return (cours);
		}
      },
    });

    chart.render();
  },500);
  </script>
	<script type="text/javascript" src="canvasjs/canvasjs.min.js"></script>


  <div id="chartContainer" style="height: 100%; width: 100%;">
  </div>



