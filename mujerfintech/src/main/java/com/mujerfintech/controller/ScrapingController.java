package com.mujerfintech.controller;

import com.mujerfintech.service.ScrapingService;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ScrapingController {

    @Autowired
    private ScrapingService scrapingService;

    // Endpoint para iniciar el scraping manualmente
    @GetMapping("/scrapear")
    public ResponseEntity<String> scrapearNoticias() throws IOException {
        scrapingService.scrapearNoticias(); // Llamamos al método correcto
        return new ResponseEntity<>("Se han buscado todas las noticias.", HttpStatus.OK); // Enviamos un mensaje
    }
}
