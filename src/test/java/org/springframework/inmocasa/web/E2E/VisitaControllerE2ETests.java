package org.springframework.inmocasa.web.E2E;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(SpringExtension.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.MOCK)
@AutoConfigureMockMvc
public class VisitaControllerE2ETests {
	
	@Autowired
	private MockMvc mockMvc;

	
	@WithMockUser(value = "bravo9", authorities = { "cliente" })
	@Test
	@DisplayName("Prueba en la que se crea una visita")
	void testCreateValoracionOk() throws Exception {
		mockMvc.perform(get("/visita/vivienda/{vivienda}/new",2)).andExpect(status().isOk()).andExpect(model().attributeExists("visita"))
				.andExpect(view().name("viviendas/visitas/createOrUpdateVisita"));
	}

}