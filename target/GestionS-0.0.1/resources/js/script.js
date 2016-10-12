/************************************************ Administrateur button function ***********************************************/



			/**** Button update Projet Admin ****/
$("#btn_projetA").click(
		function() {
			var e = document.getElementById("statutP");
			var strUser = e.options[e.selectedIndex].value;
			var json = {
					"idProjet" : document.getElementById('idProjet').value,
					"nomProjet" : document.getElementById('nomProjet').value,
					"proprietaire" : document.getElementById('proprietaireP').value,
					"dateD" : document.getElementById('date-de-debutP').value,
					"dateF" : document.getElementById('date-de-finP').value,
					"statu" : strUser,	
					"description" : document.getElementById('description').value
				};

				$.ajax({
					type : "POST",
					dataType : 'json',
					url : "/GestionSphere/projetA/edit",
					data : json, // Note it is important
					success : function(result) {
						window.open("projets", "_self");
						//alert(result.success);
					},
					error : function(jqXHR, textStatus, errorThrown) {
						window.open("projets", "_self");
						//alert(jqXHR);
					}
				}); 
			
			
			
		});

		/**** Button update Projet Admin ****/
function tacheDetails(){
	
	var json = {
			"idProjet" :"1",
		};
	
	$.ajax({
		type : "POST",
		dataType : 'json',
		url : "/GestionSphere/tacheA/getAll",
		data : json, // Note it is important
		success : function(result) {
			  for(var index=0; index<result.length;index++){
                  $("#username").html(msg[index].username);
                  $("#exercise").html(msg[index].exercise);
                  $("#computer").html(msg[index].computer);
                  $("#content").html(msg[index].content);
             }
		},
		error: function(jqXHR, textStatus, errorThrown) {
			  alert(errorThrown);
			}
	});  
			
	
	 };





/*************************************** END Administrateur button function ***********************************************/
// DatatableJS
$(document).ready(function() {
	var table = $('#tableA').DataTable({
		"language": {
            "lengthMenu": "Afficher _MENU_ enregistrements",
            "zeroRecords": "Aucun enregistrement à afficher.",
            "info": "Page _PAGE_ sur _PAGES_",
            "infoEmpty": "Aucun enregistrement disponible",
            "infoFiltered": "(filtré _MAX_ nombre total d'enregistrements)",
            "loadingRecords": "Chargement...",
            "processing":     "En traitement...",
            "search":         "Rechercher:",
            "paginate": {
                "first":      "Premier",
                "last":       "Dernier",
                "next":       "Suivant",
                "previous":   "Précédent"
            },
            "aria": {
                "sortAscending":  ": Activer pour trier la colonne ascendante",
                "sortDescending": ": Activer pour trier la colonne descendante"
            }
        },
		 //  dom: 'l<"toolbar">frtip',
		   initComplete: function(){
		      $("div.dataTables_length")
		      .append('<div class="col-sm-4 col-md-6 pull-left id="divSearch"><select type="search" class="form-control select-table-filter" data-table="tableA"><option id="optionList" value="">Tout les projets</option>  <c:forEach var="listptache" items="${listptache}"><option id="optionList" value="${listptache.nomProjet}">${listptache.nomProjet}</option></c:forEach><select></div>');         
		   }			 
		});	
	var data = table.row( 0 ).data();
//	$(".divSearch").css( "pull-right" );
	$( ".dataTables_filter" ).parent().parent().removeClass("row");
	$( ".dataTables_length" ).parent().css( "background-color", "#23c0e3" );
	$( ".dataTables_filter" ).parent().css( "background-color", "#23c0e3" );
	$(".dataTables_filter").children("label").css("color","white");
	//$("div.toolbar").html('<b>Custom tool bar! Text/images etc.</b>');
});