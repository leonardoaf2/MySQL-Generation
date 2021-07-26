package br.com.generation.meusite;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/meusite")
public class meusiteo {
	
	@GetMapping
	public String hello() {
		return "Meu objetivo é aprender e conseguir absorver melhor o conhecimento que será passado para mim";	
	}

}
