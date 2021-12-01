package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {
	
	@GetMapping
	public String hello() {
		return "Hello World";
	}
	
	@GetMapping("/Habilidade")
	public String habilidade() {
		return "\nEstou utilizando a mentalidade de Persistência e a habilidade de Atenção aos Detalhes\n";
	}
	
	@GetMapping("/Objetivos")
	public String objetivos() {
		return "Esta semana quero aprender e entender os conceitos de APIs e a utilização do Spring Boot";
	}

}
