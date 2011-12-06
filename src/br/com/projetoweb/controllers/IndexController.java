package br.com.projetoweb.controllers;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.projetoweb.interfaces.Public;

@Resource
public class IndexController {

	private final Result result;

	public IndexController(Result result) {
		this.result = result;
	}

	@Path("/")
	@Public
	public void index() {
	}
	
	@Path("/sobreNos")
	@Public
	public void sobreNos() {
		
		
	}

}
