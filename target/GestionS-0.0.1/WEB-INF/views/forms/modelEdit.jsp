<div class="modal" id="update">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header"> 
			<div class="col-md-12">
				<img src="resources/images/logoSB.png" class="img-responsive pull-left" alt="">
				<button type="button" class="close pull-right" data-dismiss="modal">
					<span>&times;</span>
				</button>
			</div>
			</div>
			<div class="modal-body">
				<ul class="nav nav-tabs">
				  <li class="active"><a data-toggle="tab" href="#homeEdit" id="menuM">Projet</a></li>
				  <li><a data-toggle="tab" href="#menuEdit" id="menuM">Tache</a></li> 
				</ul>

				<div class="tab-content">
				  <div id="homeEdit" class="tab-pane fade in active">
					<form>
					<div class="form-group" style="display:none">
						<label for="nom-de-projet">Id projet</label>
						<input type="text" class="form-control" id="idProjetEdit"  placeholder="Nom de projet">
					  </div> 
					  <div class="form-group" style="display:none">
						<label for="nom-de-projet">Id tache</label>
						<input type="text" class="form-control" id="idTacheEdit"  placeholder="Nom de projet">
					  </div> 
					
					  <div class="form-group">
						<label for="nom-de-projet">Nom de projet</label>
						<input type="text" class="form-control" id="nomProjetEdit"  placeholder="Nom de projet">
					  </div> 
					 
					   <div class="form-group">
							<label for="chef-de-projet">Chef de projet</label>
							<select class="form-control" id="chefProjetM">
								<c:forEach var="chefList" items="${chefList}">
									<option value="${chefList.nom} ${chefList.prenom}">${chefList.nom} ${chefList.prenom}</option>
								</c:forEach>
							</select>
						</div>
					  <div class="form-group">
						<label for="nom-de-client">Nom de client</label>
						<input type="text" class="form-control" id="nomClientM" aria-describedby="emailHelp" placeholder="Nom de client">
					  </div>
					  <button style="margin-bottom:5px;" id="btn_tacheP" type="submit" class="btn btn-default cnx-btn pull-right mrg">Modifier</button>					  
					</form>
				  </div>
				  <div id="menuEdit" class="tab-pane fade">
					<form>
					<div class="form-group">
						<label for="nom-de-tache">Nom de tache</label>
						<input type="text" class="form-control" id="nomTacheM" aria-describedby="emailHelp" placeholder="Nom de tache">
					  </div> 
					  <div class="form-group">
							<label for="Status">Status</label>
							<select class="form-control" id="statusM">
							  <option value="Non démarée">Non démarée</option>
							  <option value="En cours">En cours</option>
							  <option value="En attente de validation interne">En attente de validation interne</option>
							  <option value="En attente de validation client">En attente de validation client</option>	  
							  <option value="Finalisée et remis">Finalisée et remis</option> 
							</select>
					  </div>					  
						<div class="form-group row">
						  <label for="example-date-input" class="col-xs-4 col-form-label">Date de fin</label>
						  <div class="col-xs-12">
							<input class="form-control" type="date"  id="datefTacheM">
						  </div>
						</div>
					  <div class="form-group">
							<label for="chef-de-projet">Nom de projet</label>
							<select class="form-control" id="nomProjetMT">
								 <c:forEach var="listptachev" items="${listptache}">
										<option value="${listptachev.nomProjet}">${listptachev.nomProjet}</option>
								</c:forEach>
							</select>
						</div>
					 
					  <button style="margin-bottom:5px;" id="btn_tacheT" type="submit" class="btn btn-default cnx-btn pull-right mrg">Modifier</button>
					</form>
				  </div> 
				</div>
			</div>
			 
		</div>
	</div>
</div>