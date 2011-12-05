package br.com.projetoweb.business;

import java.io.Serializable;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.projetoweb.models.Usuario;

@Component
@SessionScoped
public class UserSession implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Usuario user;

    public boolean isLogged() {
        return user != null;
    }

    public void logout() {
        user = null;
    }

	public Usuario getUser() {
		return user;
	}

	public void setUser(Usuario user) {
		this.user = user;
	}
}

