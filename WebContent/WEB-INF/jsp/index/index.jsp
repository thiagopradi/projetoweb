<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Lord Canvas</title>
    <link href="css/estilo.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
      <div id="topo-superior">
        <div class="logotipo">
        </div>
      </div>
      <div id="topo-inferior">
      </div>
      <div id="body-area">
        <div class="esquerda">
          <div class="esquerda-menu-topo">
          </div>
          <div class="esquerda-menu-area">
            <div align="right">
              <a href="${pageContext.request.contextPath}/" class="menu-item">Principal</a> <br />
              <a href="${pageContext.request.contextPath}/sobreNos" class="menu-item">Sobre Nós</a><br />
            </div>
          </div>
        </div>
        <div class="area-central">
          <div class="cabecalho">
            Bem vindo ao Lord Canvas
          </div>
          <div class="area-texto">
            <div align="justify">
            <div id="error">
   				<h3>${error}</h3>
			</div>
			  <div id="message">
   				<h3>${message}</h3>
			</div>
              <p>
                Este site foi desenvolvido para o trabalho final de Desenvolvimento Web.
              </p>
              <br />
              <br />
              <p>
                Requisitos
              </p>
              <br />
              <ol>
                <li>Um cadastro Mestre Detalhe; </li>
                <li>Um cadastro categorizado (exemplo: produto e categorias);</li>
                <li>Login e senha para acesso ao sistema;</li>
                <li>Desenvolvido em Java (no servidor) e tendo como resultado no cliente (navegador)
                  as tecnologias HTML, JavaScript e CSS;</li>
                <li>Um Javascript e um CSS desenvolvido pela própria equipe;</li>
                <li>Mapeamento objeto/relacional (JPA/Hibernate/Toplink) para armazenamento dos dados.</li>
              </ol>
            </div>
          </div>
        </div>
        <div class="direita">
          <div class="login-area">
            <div class="login-topo">
            </div>


            <div class="login-body">
              <div class="cabecalho-direito">
                <div align="center">
                  Efetuar o login
                </div>

              </div>
              <form action="${pageContext.request.contextPath}/autenticar" method="post" class=".form-stacked">

                <div class="textbox">
                  <label>
                  </label>
                   <input id="txtUsuario" type="text" class="righttextbox" name="usuario.email" value="Usuário" />
                </div>
                <div class="textbox">
                  <label>
                    <input id="txtSenha" type="password" class="righttextbox" name="usuario.password" value="Senha" />
                  </label>
                </div>
                <div class="direito-texto">
                  <label>
                    <input type="checkbox" id="chkLembrarMe" value="checkbox" />
                  </label>
                  Lembrar-me
                </div>
                <div class="direito-texto">
                  <div align="center">
                    <input type="submit" value="Acessar" class="btn primary" />
                    <a href="${linkTo[UsuariosController].novo}">Cadastrar</a>
                  </div>
                </div>

              </form>

            </div>
            <div class="login-rodape">
            </div>
          </div>
        </div>
      </div>
      <div id="rodape">
        <div class="rodape-links">
          <div align="center">
            <a href="principal.htm" class="rodape-link">Principal</a> | <a href="projeto.htm"
              class="rodape-link">Projeto</a> | <a href="sobreNos.htm" class="rodape-link">Sobre Nós</a>
          </div>
        </div>
        <div class="rodape-copyrights">
          <div align="center">
            &copy; Todos os direitos reservados
          </div>
        </div>
      </div>
  </body>
</html>
