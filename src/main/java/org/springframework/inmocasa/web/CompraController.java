package org.springframework.inmocasa.web;

import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.inmocasa.model.Cliente;
import org.springframework.inmocasa.model.Compra;
import org.springframework.inmocasa.model.Vivienda;
import org.springframework.inmocasa.model.enums.Estado;
import org.springframework.inmocasa.service.ClienteService;
import org.springframework.inmocasa.service.CompraService;
import org.springframework.inmocasa.service.ViviendaService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/compras")
public class CompraController {

	private static final String VIEWS_COMPRA_CREATE_UPDATE_FORM = "compras/form";

	CompraService compraService;

	ViviendaService viviendaService;

	ClienteService clienteService;

	@Autowired
	public CompraController(CompraService compraService, ViviendaService viviendaService,
			ClienteService clienteService) {
		this.compraService = compraService;
		this.viviendaService = viviendaService;
		this.clienteService = clienteService;
	}
	// Alvaro-MiguelEmmanuel

	// Alba-Alejandro
	@InitBinder("compra")
	public void initCompraBinder(WebDataBinder dataBinder) {
		dataBinder.setValidator(new CompraValidator());
	}

	@GetMapping(path = "/create/{viviendaId}")
	public String create(@PathVariable("viviendaId") Integer viviendaId, ModelMap model) {
		Compra compra = new Compra();
		Vivienda vivienda = viviendaService.findViviendaId(viviendaId);

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserDetails userPrincipal = (UserDetails) authentication.getPrincipal();
		Cliente cliente = clienteService.findClienteByUsername(userPrincipal.getUsername()).get(0);

		compra.setCliente(cliente);
		compra.setVivienda(vivienda);
		compra.setEstado(Estado.PENDIENTE);
		model.put("compra", compra);
		return VIEWS_COMPRA_CREATE_UPDATE_FORM;
	}

	@PostMapping(path = "/create/{viviendaId}")
	public String save(@PathVariable("viviendaId") Integer viviendaId, @Valid Compra compra, BindingResult binding,
			ModelMap model) {
		if (binding.hasErrors()) {
			model.put("compra", compra);
			return VIEWS_COMPRA_CREATE_UPDATE_FORM;
		} else {
			Vivienda vivienda = viviendaService.findViviendaId(viviendaId);

			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			UserDetails userPrincipal = (UserDetails) authentication.getPrincipal();
			Cliente cliente = clienteService.findClienteByUsername(userPrincipal.getUsername()).get(0);

			compra.setCliente(cliente);
			compra.setVivienda(vivienda);
			compra.setEstado(Estado.PENDIENTE);
			compraService.saveCompra(compra);
			return "redirect:/viviendas/allNew";
		}
	}

	// Santi-Alvaro
	@GetMapping(value = "/{compraId}")
	public String showCompra(@PathVariable("compraId") int compraId, ModelMap model) {
		String view = "compras/showCompraDetails";
		Compra compras = this.compraService.findCompraById(compraId);
		model.put("compras", compras);
		return view;

	}

	@GetMapping(value = "/{compraId}/aceptar")
	public String aceptarCompra(@PathVariable("compraId") int compraId, ModelMap model) {
		String view = "/viviendas/ofertadas";
		Compra compras = this.compraService.findCompraById(compraId);
		compras.setEstado(Estado.ACEPTADO);
		compras.setComentario("VENDIDA");
		compraService.save(compras);
		compraService.rechazarResto(compras);
		model.addAttribute("compras", compras);
		model.addAttribute("message", "La oferta ha sido aceptada correctamente");

		return "redirect:" + view;
	}

	@GetMapping(value = "/{compraId}/rechazar")
	public String rechazarCompra(@PathVariable("compraId") int compraId, ModelMap model) {
		String view = "/viviendas/ofertadas";
		Compra compras = this.compraService.findCompraById(compraId);
		compras.setEstado(Estado.RECHAZADO);
		compraService.deleteById(compras.getId());
		compraService.save(compras);
		model.addAttribute("compras", compras);
		model.addAttribute("message", "La oferta ha sido rechazada correctamente");
		return "redirect:" + view;
	}

}
