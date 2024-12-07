package com.mujerfintech.service;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.mujerfintech.model.Noticia;
import com.mujerfintech.repository.NoticiaRepository;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

import java.util.Optional;

@Service
public class ScrapingService {

    @Autowired
    private NoticiaRepository noticiaRepository;

    
    private final String url = "https://elcomercio.pe/noticias/mujeres/";
    
    
    
    
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    @Async // Hacer que este método se ejecute de forma asíncrona
    public void scrapearNoticias() throws IOException {
        // Conectarse a la página y obtener el HTML
        Document doc = Jsoup.connect(url).get();

        // Buscar los elementos que contienen las noticias
        Elements noticias = doc.select("a.story-item__title");
        Elements fechas = doc.select("p.story-item__date");
        Elements imagenes = doc.select("img.story-item__img");
        Elements autores = doc.select("div.story-item__author-wrapper a.story-item__author");

        // Iteramos por todos los elementos encontrados
        for (int i = 0; i < noticias.size(); i++) {
            Element noticia = noticias.get(i);
            Optional<Element> fechaElemento = fechas.size() > i ? Optional.of(fechas.get(i)) : Optional.empty();
            Optional<Element> imagenElemento = imagenes.size() > i ? Optional.of(imagenes.get(i)) : Optional.empty();
            Optional<Element> autorElemento = autores.size() > i ? Optional.of(autores.get(i)) : Optional.empty();

            String titulo = noticia.text();
            String urlNoticia = noticia.attr("href");

            // Asegurar que la URL sea completa
            if (!urlNoticia.startsWith("http")) {
                urlNoticia = "https://elcomercio.pe" + urlNoticia;
            }

            // Verificar si la noticia ya existe por título
            if (noticiaRepository.existsByTitulo(titulo)) {
                continue; // Si la noticia ya está en la base de datos, no la agregamos
            }

            // Validar y parsear la fecha
            LocalDate fechaPublicacion = null;
            if (fechaElemento.isPresent()) {
                String fechaTexto = fechaElemento.get().select("span.story-item__date-time").first().text();
                try {
                    fechaPublicacion = LocalDate.parse(fechaTexto, formatter);
                } catch (DateTimeParseException e) {
                    e.printStackTrace();
                }
            }

            // Validar URL de imagen
            String imagenUrl = "URL no disponible";
            if (imagenElemento.isPresent()) {
                String src = imagenElemento.get().attr("src");
                String dataSrc = imagenElemento.get().attr("data-src");
                imagenUrl = !src.isEmpty() && !src.contains("default-md.png") ? src : dataSrc;
                if (!imagenUrl.startsWith("http")) {
                    imagenUrl = "https://elcomercio.pe" + imagenUrl;
                }
            }

            // Validar autor
            String autor = "Autor no disponible";
            if (autorElemento.isPresent()) {
                autor = autorElemento.get().text();
            }

            // Crear la noticia y guardar en la base de datos
            Noticia nuevaNoticia = new Noticia();
            nuevaNoticia.setTitulo(titulo);
            nuevaNoticia.setFechaPublicacion(fechaPublicacion);
            nuevaNoticia.setUrlNoticia(urlNoticia);
            nuevaNoticia.setImagenUrl(imagenUrl);
            nuevaNoticia.setAutor(autor);

            noticiaRepository.save(nuevaNoticia);
        }
    }
}
