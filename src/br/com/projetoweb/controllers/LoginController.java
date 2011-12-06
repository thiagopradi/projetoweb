package br.com.projetoweb.controllers;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.projetoweb.business.UserSession;
import br.com.projetoweb.daos.UsuarioDao;
import br.com.projetoweb.helpers.HibernateUtil;
import br.com.projetoweb.interfaces.Public;
import br.com.projetoweb.models.Usuario;

@Resource
public class LoginController {

	private Result result;
	private UserSession userSession;

	public LoginController(Result result, UserSession userSession) {
		this.result = result;
		this.userSession = userSession;
	}

	@Public
	@Post("/autenticar")
	public void autenticar(Usuario usuario) {
		UsuarioDao ud = new UsuarioDao(HibernateUtil.getSession());
		Usuario user = ud.autenticar(usuario.getEmail(), usuario.getPassword());
		if (user != null) {
			userSession.setUser(user);
			result.redirectTo(ProjetosController.class).list();
		} else {
			result.include("error", "E-mail ou senha incorreta!").redirectTo("/");
		}
	}

	@Get("/logout")
	public void logout() {
		userSession.logout();
		result.redirectTo("/");
	}

}
