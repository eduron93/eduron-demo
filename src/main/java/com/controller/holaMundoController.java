package com.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class holaMundoController {
	@GetMapping("hola")
	public String hola() {
		return "Hola Mundo";
	}
}
