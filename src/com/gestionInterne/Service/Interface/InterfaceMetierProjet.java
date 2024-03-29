package com.gestionInterne.Service.Interface;

import java.util.List;

import com.gestionInterne.DAO.entity.Projet;


public interface InterfaceMetierProjet {

	public Projet addProjet(Projet p);

	public void deleteProjet(Projet p);

	public Projet updateProjet(Projet p);

	public Projet getProjet(int idProjet);

	public List<Projet> getAllProjet();
	
	public List<Projet> getAllProjetbyName(int idname);
	
	public List<Projet> getAllProjetbyChef(int idname);

}
