package com.mujerfintech.controller;

import com.mujerfintech.model.Noticia;
import com.mujerfintech.service.NoticiaService;
import com.mujerfintech.service.ScrapingService;
import org.springframework.data.domain.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/noticias")
public class NoticiaController {

	@Autowired
	private NoticiaService noticiaService;

	@Autowired
	private ScrapingService scrapingService; // Servicio para realizar scraping

	// Endpoint para crear una noticia (POST)
	@PostMapping
	public Noticia crearNoticia(@RequestBody Noticia noticia) {
		return noticiaService.crearNoticia(noticia);
	}

	// Endpoint para obtener todas las noticias (GET)
	@GetMapping
	public List<Noticia> obtenerTodasLasNoticias() {
		return noticiaService.obtenerTodasLasNoticias();
	}

	// Endpoint para obtener una noticia por ID (GET)
	@GetMapping("/{id}")
	public Noticia obtenerNoticiaPorId(@PathVariable Long id) {
		return noticiaService.obtenerNoticiaPorId(id).orElse(null);
	}

	// Endpoint para eliminar una noticia por ID (DELETE)
	@DeleteMapping("/{id}")
	public void eliminarNoticia(@PathVariable Long id) {
		noticiaService.eliminarNoticia(id);
	}

	// Endpoint para iniciar scraping
	@PostMapping("/scrapear")
	public String iniciarScraping() throws IOException {
		scrapingService.scrapearNoticias(); // Ejecutar scraping asíncrono
		return "Scraping completado exitosamente"; // Respuesta simple
	}

	@GetMapping("/pagina")
	public Map<String, Object> obtenerNoticiasPorPagina(@RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "12") int size) {
		Page<Noticia> paginaNoticias = noticiaService.obtenerNoticiasPorPagina(page, size);
		Map<String, Object> response = new HashMap<>();
		response.put("noticias", paginaNoticias.getContent());
		response.put("totalPages", paginaNoticias.getTotalPages());
		response.put("currentPage", paginaNoticias.getNumber());
		return response;
	}

}
