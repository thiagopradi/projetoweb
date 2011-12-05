package br.com.projetoweb.helpers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import br.com.projetoweb.models.Projeto;
import br.com.projetoweb.models.Usuario;

public class HibernateUtil {
	private static SessionFactory factory;
	static {
		AnnotationConfiguration cfg = new AnnotationConfiguration();
		cfg.addAnnotatedClass(Usuario.class);
		cfg.addAnnotatedClass(Projeto.class);

		factory = cfg.buildSessionFactory();
	}

	public static Session getSession() {
		return factory.openSession();
	}
}
