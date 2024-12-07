DROP DATABASE IF EXISTS mujerfintech;
CREATE DATABASE mujerfintech DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
USE mujerfintech;

CREATE TABLE noticia (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    autor varchar(255) DEFAULT NULL,
    fecha_publicacion date DEFAULT NULL,
    imagen_url varchar(255) DEFAULT NULL,
    titulo varchar(255) DEFAULT NULL,
    url_noticia varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;