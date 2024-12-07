package com.mujerfintech.service;

import com.mujerfintech.model.Noticia;
import com.mujerfintech.repository.NoticiaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class NoticiaService {
	
	// Inyectamos para poder usar métodos de NoticiaRepository aquí.
    @Autowired
    private NoticiaRepository noticiaRepository;
    
    
    // Método para obtener noticias con paginación
    public Page<Noticia> obtenerNoticiasPorPagina(int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "fechaPublicacion")); // Ordenar por fecha descendente
        return noticiaRepository.findAll(pageable);
    }
    

    public Noticia crearNoticia(Noticia noticia) {
        return noticiaRepository.save(noticia);
    }

    public List<Noticia> obtenerTodasLasNoticias() {
        return noticiaRepository.findAll();
    }

    public Optional<Noticia> obtenerNoticiaPorId(Long id) {
        return noticiaRepository.findById(id);
    }

    public void eliminarNoticia(Long id) {
        noticiaRepository.deleteById(id);
    }
    

    
    
    
    
    
    
    
    
}
