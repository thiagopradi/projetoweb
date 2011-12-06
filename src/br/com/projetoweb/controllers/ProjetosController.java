package br.com.projetoweb.controllers;

import java.util.List;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.projetoweb.daos.ProjetoDao;
import br.com.projetoweb.helpers.HibernateUtil;
import br.com.projetoweb.models.Projeto;

@Resource
public class ProjetosController {
	private Result result;
	private ProjetoDao projetoDao;

	public ProjetosController(Result result) {
		this.result = result;
		this.projetoDao = new ProjetoDao(HibernateUtil.getSession());
	}

	public void novo() {

	}

	public void add(Projeto projeto) {
		projetoDao.salva(projeto);
		result.include("message", "Projeto adicionado com sucesso!");
		result.redirectTo("/projetos/list");
	}

	public List<Projeto> list() {
		try {
			result.include("projetoList", projetoDao.loadAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			return (List<Projeto>) projetoDao.loadAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public void remove(Projeto projeto) {
		projetoDao.remove(projeto);
		result.include("message", "Projeto removido com sucesso!");
		result.redirectTo("/projetos/list");
	}

	@Get
	@Path("/projetos/{id}/edit")
	public void edit(Long id) {
		Projeto projeto = projetoDao.procura(id);
		System.out.println(projeto.getDescricao());
		result.include("projeto", projeto);
	}

	public void update(Projeto projeto) {
		projetoDao.atualiza(projeto);
		result.include("message", "Projeto adicionado com sucesso!");
		result.redirectTo("/projetos/list");
	}
}
