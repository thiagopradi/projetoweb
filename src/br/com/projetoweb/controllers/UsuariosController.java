package br.com.projetoweb.controllers;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.projetoweb.daos.UsuarioDao;
import br.com.projetoweb.helpers.HibernateUtil;
import br.com.projetoweb.interfaces.Public;
import br.com.projetoweb.models.Usuario;

@Resource
public class UsuariosController {
	private Result result;
	private UsuarioDao usuarioDao;

	public UsuariosController(Result result) {
		this.result = result;
		this.usuarioDao = new UsuarioDao(HibernateUtil.getSession());
	}

	@Get
	@Path("/usuario/novo")
	@Public
	public void novo(Usuario usuario) {
		result.include("usuario", usuario);
	}

	@Post
	@Path("/usuario")
	@Public
	public void salvar(Usuario usuario) {
		System.out.println(usuario.getNome());
		usuarioDao.salva(usuario);
		result.redirectTo(this).novo(usuario);
	}

	@Put
	@Path("/usuario")
	public void editar(Usuario usuario) {
		Usuario entity = usuarioDao.procura(usuario.getId());
		result.redirectTo(this).novo(entity);
	}
}
