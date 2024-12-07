package com.mujerfintech.repository;

import com.mujerfintech.model.Noticia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


@Repository
public interface NoticiaRepository extends JpaRepository<Noticia, Long> {
	// Verificar si ya existe una noticia con el mismo título
    boolean existsByTitulo(String titulo);
    
    
    // findAll con Pageable para paginación
    Page<Noticia> findAll(Pageable pageable);
    
    
   
}

