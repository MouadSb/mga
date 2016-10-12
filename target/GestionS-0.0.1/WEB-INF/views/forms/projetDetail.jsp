<div class="modal" id="policy">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header"> 
			<div class="col-md-12">
				<img src="../resources/images/logoSB.png" class="img-responsive pull-left" alt="">
				<button type="button" class="close pull-right" data-dismiss="modal">
					<span>&times;</span>
				</button>
			</div>
				
				 
			</div>
			<div class="modal-body">
				<ul class="nav nav-tabs">
				  <li class="active"><a data-toggle="tab" href="#home">Projet</a></li>
				  <li><a data-toggle="tab" href="#menu1" onclick="tacheDetails()">Tache</a></li> 
				</ul>

				<div class="tab-content">
				  <div id="home" class="tab-pane fade in active">
					<form  >
					 <div class="row">

						<input type="hidden" id="idProjet" >				 
					  <div class="form-group col-md-6">
						<label for="proprietaire">Nom de projet</label>
						<input type="text" class="form-control" id="nomProjet"  placeholder="Nom de projet">
					  </div>
					  
					  <div class="form-group col-md-6">
						<label for="proprietaire">Propri�taire</label>
						<input type="text" class="form-control" id="proprietaireP" placeholder="Propri�taire">
					  </div>
					 
					   <div class="form-group col-md-6">
						<label for="nom-de-projet">Date de debut</label>
						<input type="date" class="form-control" id="date-de-debutP" placeholder="Nom de projet">
					  </div>
					  <div class="form-group col-md-6">
						<label for="nom-de-projet">Date de fin</label>
						<input type="date" class="form-control" id="date-de-finP" placeholder="Nom de projet">
					  </div>
				<!--  	  <div class="form-group col-md-6">
						<label for="proprietaire">Categorie</label>
						<input type="texte" class="form-control" id="proprietaire" aria-describedby="emailHelp" placeholder="Propri�taire">
					  </div>

					 
					   <div class="form-group col-md-6">
						<label for="nom-de-projet">Budget</label>
						<input type="texte" class="form-control" id="nom-de-projet" aria-describedby="emailHelp" placeholder="Nom de projet">
					  </div> 
					  
					   <div class="form-group col-md-6">
						<label for="nom-de-projet">Budget en cours</label>
						<input type="texte" class="form-control" id="nom-de-projet" aria-describedby="emailHelp" placeholder="Nom de projet">
					  </div>
					  
				-->
					  <div class="form-group col-md-6">
						<label for="Status">Status</label>
							<select class="form-control" id="statutP">
							  <option value="Non d�mar�e">Non d�mar�e</option>
							  <option value="En cours">En cours</option>
							  <option value="En attente de validation interne">En attente de validation interne</option>
							  <option value="En attente de validation client">En attente de validation client</option>	  
							  <option value="Finalis�e et remis">Finalis�e et remis</option> 
							</select>
					  </div>	
					 
					  
					 
					  <div class="form-group col-md-12">
						<label for="description" style="margin-left: 17px;">Description</label>
						<textarea class="form-control" id="description" rows="3" ></textarea>
					  </div>  
					 	
					  	 <button style="margin-bottom:5px;" id="btn_projetA" type="submit" class="btn btn-default cnx-btn pull-right mrg">Modifier</button>
					
					</div>
					</form>
				  </div>

				  <div id="menu1" class="tab-pane fade">
				  <div class="col-md-4">
				  	<select class="selectpicker">
					  <option>Mustard</option>
					  <option>Ketchup</option>
					  <option>Relish</option>
					</select>
				  </div><div class="col-md-4">
				  	<select class="selectpicker">
					  <option>Mustard</option>
					  <option>Ketchup</option>
					  <option>Relish</option>
					</select>
				  </div>
					<form>
						<table class="table table-bordered">
						   <thead>
						      <tr>
						        <th id="no-left-border">livrable</th>
						        <th>Affect� a</th>
						        <th>D�but</th>
						        <th>Ech�ance</th>
						        <th>Priorit�</th>
						        <th id="no-right-border">Statut</th>
						      </tr>
					   	    </thead>
					        <tbody>
						      <tr>
						        <td>test</td>
						        <td>test</td>
						        <td>test</td>
						        <td>test</td>
						        <td>test</td>
						        <td>test</td>
						      </tr>
					       </tbody>
						</table>
					  <button type="submit" class="btn btn-warning pull-right mrg">Envoyer</button>
					</form>
				  </div> 
				</div>
			</div>
			 
		</div>
	</div>
</div>

<script src="../resources/js/script.js"></script>