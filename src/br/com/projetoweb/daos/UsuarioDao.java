package br.com.projetoweb.daos;

import java.io.Serializable;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.projetoweb.models.Usuario;


public class UsuarioDao {
	private Session session;

	public UsuarioDao(Session session) {
		this.session = session;
	}

	public void salva(Usuario p) {
		this.session.save(p);
	}

	public void remove(Usuario p) {
		this.session.delete(p);
	}

	public Usuario procura(Long id) {
		return (Usuario) this.session.load(Usuario.class, id);
	}

	public void atualiza(Usuario p) {
		this.session.update(p);
	}
	
	public Usuario autenticar(String email, String senha) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");  
		EntityManager entityManager = factory.createEntityManager();  
		
		 try {
			 	Query query = entityManager.createQuery("from Usuario where email = :email and senha = :senha");
			    query.setParameter("email", email);
			    query.setParameter("senha", senha);
			    return (Usuario) query.getSingleResult();
			 } catch (Exception e) {
			             return null;			 
			 }
	}
}
