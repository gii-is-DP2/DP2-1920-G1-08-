package org.springframework.inmocasa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.inmocasa.model.Compra;
import org.springframework.inmocasa.model.enums.Estado;
import org.springframework.inmocasa.repository.CompraRepository;
import org.springframework.inmocasa.repository.ViviendaRepository;
import org.springframework.stereotype.Service;

@Service
public class CompraService {
	
	CompraRepository compraRepository;
	
	ViviendaRepository viviendaRepository;
	
	@Autowired
	public CompraService(CompraRepository compraRepository, ViviendaRepository viviendaRepository) {
		super();
		this.compraRepository = compraRepository;
		this.viviendaRepository = viviendaRepository;
	}
	
	//Santi-Alvaro
	
	
	//Alvaro-MiguelEmmanuel
	
	
	//Alba-Alejandro
	
	public void saveCompra(Compra compra) {		
		compra.setEstado(Estado.PENDIENTE);
		compraRepository.save(compra);
	}

}
