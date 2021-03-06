package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;

@Controller
public class ControladorHome {

	// @Injects
	
	@Inject
	private ServicioEvento servicioEvento;
	
	
	// @RequestMappings

	@RequestMapping(path = "/inicioHome")
	public ModelAndView inicioHome() {
		
		ModelMap model = new ModelMap();
		model.put("keyListarEventos", servicioEvento.listarEventosService());

		return new ModelAndView ("inicio",model);
	}
	
	
	
	
}
