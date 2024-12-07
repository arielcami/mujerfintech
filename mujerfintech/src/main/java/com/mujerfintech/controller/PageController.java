package com.mujerfintech.controller;

import com.mujerfintech.service.NoticiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @Autowired
    private NoticiaService noticiaService;

    // Asegúrate de que esta ruta sea diferente de "/index"
    @GetMapping("/noticias")
    public String mostrarNoticias(Model model) {
        model.addAttribute("noticias", noticiaService.obtenerTodasLasNoticias());
        return "noticias"; // Nombre de la plantilla que muestra las noticias
    }
}
