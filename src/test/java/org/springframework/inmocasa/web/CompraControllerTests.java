package org.springframework.inmocasa.web;

import static org.junit.Assert.assertTrue;
import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.BDDMockito.given;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.csrf;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.time.LocalDate;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.csrf;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;
import org.springframework.inmocasa.configuration.SecurityConfiguration;
import org.springframework.inmocasa.model.Cliente;
import org.springframework.inmocasa.model.Compra;
import org.springframework.inmocasa.model.Propietario;
import org.springframework.inmocasa.model.Vivienda;
import org.springframework.inmocasa.model.enums.Estado;
import org.springframework.inmocasa.model.enums.Genero;
import org.springframework.inmocasa.service.ClienteService;
import org.springframework.inmocasa.service.CompraService;
import org.springframework.inmocasa.service.PropietarioService;
import org.springframework.inmocasa.service.ViviendaService;
import org.springframework.security.config.annotation.web.WebSecurityConfigurer;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import com.google.common.collect.Lists;

@WebMvcTest(controllers = CompraController.class, excludeFilters = @ComponentScan.Filter(type = FilterType.ASSIGNABLE_TYPE, classes = WebSecurityConfigurer.class), excludeAutoConfiguration = SecurityConfiguration.class)
@RunWith(SpringRunner.class)
class CompraControllerTests {

	private static final int TEST_VIVIENDA_ID_1 = 23;
	private static final int TEST_VIVIENDA_ID_2 = 2;
	private static final String testPropietarioUsername = "propietario1";

	@Autowired
	private MockMvc mockMvc;

	@MockBean
	private ViviendaService viviendaService;

	@MockBean
	private PropietarioService propietarioService;

	@MockBean
	private CompraService compraService;

	@MockBean
	private ClienteService clienteService;

	private Vivienda vivienda;

	private Vivienda vivienda2;

	private Compra compra1;

	private Propietario prop;

	private Cliente clie;

	@BeforeEach
	void setup() {
		vivienda = new Vivienda();
		vivienda.setTitulo("Hola");
		vivienda.setId(TEST_VIVIENDA_ID_1);
		vivienda.setTitulo("Piso en venta en ocho de marzo s/n");
		vivienda.setDireccion("Calle Ocho de Marzo s/n");
		vivienda.setZona("Cerro Amate");
		vivienda.setFechaPublicacion(LocalDate.of(2020, 01, 20));
		vivienda.setPrecio(2260);
		vivienda.setAmueblado(true);
		vivienda.setCaracteristicas("Caracteristicas");
		vivienda.setHorarioVisita("Martes de 9:00 a 13:00");

		vivienda2 = new Vivienda();
		vivienda2.setTitulo("Hola");
		vivienda2.setId(TEST_VIVIENDA_ID_2);
		vivienda2.setTitulo("Piso en venta en ocho de marzo s/n");
		vivienda2.setDireccion("Calle Ocho de Marzo s/n");
		vivienda2.setZona("Cerro Amate");
		vivienda2.setFechaPublicacion(LocalDate.of(2020, 01, 20));
		vivienda2.setPrecio(2260);
		vivienda2.setAmueblado(true);
		vivienda2.setCaracteristicas("Caracteristicas");
		vivienda2.setHorarioVisita("Martes de 9:00 a 13:00");

		prop = new Propietario();
		prop.setId(8);
		prop.setNombre("John");
		prop.setApellidos("Doe");
		prop.setDni("46900025N");
		prop.setEsInmobiliaria(false);
		prop.setGenero(Genero.MASCULINO);
		prop.setFechaNacimiento(LocalDate.of(1976, 6, 12));
		prop.setUsername("john123");
		prop.setPassword("john123");

		clie = new Cliente();
		clie.setId(8);
		clie.setNombre("John");
		clie.setApellidos("Doe");
		clie.setDni("46900025N");
		clie.setGenero(Genero.MASCULINO);
		clie.setFechaNacimiento(LocalDate.of(1976, 6, 12));
		clie.setUsername("pepe123");
		clie.setPassword("pepe123");

		compra1 = new Compra();

		compra1.setId(9);
		compra1.setVivienda(vivienda2);
		compra1.setEstado(Estado.ACEPTADO);
		compra1.setPrecioFinal(200000);
		vivienda.setPropietario(prop);
		vivienda2.setPropietario(prop);
		compra1.setCliente(clie);
	}

	@WithMockUser(username = "john123", authorities = { "propietario" })
	@Test
	void showCompra() throws Exception {

		mockMvc.perform(get("/compras/{viviendaId}", TEST_VIVIENDA_ID_1)).andExpect(status().isOk())
				.andExpect(view().name("compras/showCompraDetails"));
	}

	@WithMockUser(username = "john123", authorities = { "propietario" })
	@Test
	@DisplayName("Se rechaza una compra y se elimina")
	void testRechazarCompraSuccess() throws Exception {
		Cliente clie = new Cliente();
		clie.setId(8);
		clie.setNombre("John");
		clie.setApellidos("Doe");
		clie.setDni("46900025N");
		clie.setGenero(Genero.MASCULINO);
		clie.setFechaNacimiento(LocalDate.of(1976, 6, 12));
		clie.setUsername("john123");
		clie.setPassword("john123");
		compra1 = new Compra();
		compra1.setVivienda(vivienda2);
		compra1.setEstado(Estado.RECHAZADO);
		compra1.setPrecioFinal(200);
		vivienda.setPropietario(prop);
		vivienda2.setPropietario(prop);
		compra1.setCliente(clie);

		List<Compra> compras = (List<Compra>) this.compraService.findAll();
		this.compraService.deleteById(compra1.getId());
		assertTrue(!compras.contains(compra1));

	}

	@WithMockUser(username = "john123", authorities = { "propietario" })
	@Test
	void testProcessAceptarComprarSuccess() throws Exception {
		given(this.compraService.findCompraById(9)).willReturn(compra1);
		mockMvc.perform(get("/compras/{compraId}/aceptar", 9).with(csrf())).andExpect(status().is3xxRedirection())
				.andExpect(view().name("redirect:/viviendas/ofertadas"));

	}

	// HU-018: Realizar compra (formulario)
	@WithMockUser(username = "pepe123", authorities = { "cliente" })
	@Test
	void testCreateCompra() throws Exception {
		given(this.viviendaService.findViviendaId(TEST_VIVIENDA_ID_1)).willReturn(vivienda);
		given(this.clienteService.findClienteByUsername("pepe123")).willReturn(Lists.newArrayList(clie));
		mockMvc.perform(get("/compras/create/{viviendaId}", 1).with(csrf())).andExpect(status().isOk())
				.andExpect(view().name("compras/form"));
	}

	// HU-018: Guardar compra
	@WithMockUser(username = "pepe123", authorities = { "cliente" })
	@Test
	void testSaveCompra() throws Exception {
		given(this.viviendaService.findViviendaId(TEST_VIVIENDA_ID_2)).willReturn(vivienda);
		given(this.clienteService.findClienteByUsername("pepe123")).willReturn(Lists.newArrayList(clie));
		mockMvc.perform(post("/compras/create/{viviendaId}", TEST_VIVIENDA_ID_2).with(csrf())
				.param("precioFinal", "100000").param("comentario", "Este es un ejemplo de compra"))
				.andExpect(status().is3xxRedirection()).andExpect(view().name("redirect:/viviendas/allNew"));
	}

	// HU-018 Casos negativos: Realizar compra (formulario) sin estar identificado
	@Test
	void testCreateCompraNotOk() throws Exception {
		given(this.viviendaService.findViviendaId(TEST_VIVIENDA_ID_2)).willReturn(vivienda2);
		mockMvc.perform(get("/compras/create/{viviendaId}", TEST_VIVIENDA_ID_2).with(csrf()))
				.andExpect(status().is4xxClientError());
	}

	// HU-018 Casos negativos: Guardar compra sin estar identificado
	@Test
	void testSaveCompraNotOk() throws Exception {
		given(this.viviendaService.findViviendaId(TEST_VIVIENDA_ID_2)).willReturn(vivienda);
		mockMvc.perform(post("/compras/create/{viviendaId}", TEST_VIVIENDA_ID_2).with(csrf())
				.param("precioFinal", "100000").param("comentario", "Este es un ejemplo de compra"))
				.andExpect(status().is4xxClientError());
	}

}
