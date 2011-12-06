package br.com.projetoweb.daos;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.hibernate.Session;

import br.com.projetoweb.models.Projeto;
import br.com.projetoweb.models.Usuario;

public class ProjetoDao {
	private Session session;

	public ProjetoDao(Session session) {
		this.session = session;
	}

	public void salva(Projeto p) {
		this.session.getTransaction().begin();
		this.session.save(p);
		this.session.getTransaction().commit();
	}

	public void remove(Projeto p) {
		this.session.getTransaction().begin();
		this.session.delete(p);
		this.session.getTransaction().commit();
	}

	public Projeto procura(Long id) {
		return (Projeto) this.session.load(Projeto.class, id);
	}
	
	public Collection<Projeto> loadAll() throws Exception {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");  
		EntityManager entityManager = factory.createEntityManager();  
		
		try {
			Query query = entityManager.createQuery("from Projeto");
			List<Projeto> resultList = query.getResultList();
			return resultList;
		} catch (Exception e) {
			throw new Exception("Erro ao listar os projetos", e);
		}
	} 

	public void atualiza(Projeto p) {
		this.session.getTransaction().begin();
		this.session.update(p);
		this.session.getTransaction().commit();
	}

}
