package com.mujerfintech.controller;

import com.mujerfintech.service.NoticiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private NoticiaService noticiaService;

    // Cambiado de "/index" a "/"
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("noticias", noticiaService.obtenerTodasLasNoticias());
        return "layout"; // TIENE que coincidir con el nombre del archivo .html en el proyecto
    }
}
