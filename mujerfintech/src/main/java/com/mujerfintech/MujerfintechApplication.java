package com.mujerfintech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync // Mandamos a otro hilo poder realizar procesos asincrónicos
public class MujerfintechApplication {
    public static void main(String[] args) {
        SpringApplication.run(MujerfintechApplication.class, args);
    }
}
