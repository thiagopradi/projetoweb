package br.com.projetoweb.daos;

import org.hibernate.Session;

import br.com.projetoweb.models.Projeto;

public class ProjetoDao {
	private Session session;

	public ProjetoDao(Session session) {
		this.session = session;
	}

	public void salva(Projeto p) {
		this.session.save(p);
	}

	public void remove(Projeto p) {
		this.session.delete(p);
	}

	public Projeto procura(Long id) {
		return (Projeto) this.session.load(Projeto.class, id);
	}

	public void atualiza(Projeto p) {
		this.session.update(p);
	}

}
