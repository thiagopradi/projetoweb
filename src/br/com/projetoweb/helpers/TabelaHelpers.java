package br.com.projetoweb.helpers;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import br.com.projetoweb.models.Projeto;
import br.com.projetoweb.models.Usuario;


public class TabelaHelpers {
	
	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		AnnotationConfiguration cfg = new AnnotationConfiguration();
		cfg.addAnnotatedClass(Projeto.class);
		cfg.addAnnotatedClass(Usuario.class);

		SchemaExport se = new SchemaExport(cfg);
		se.create(true, true);
	}
}
