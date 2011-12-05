<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Lord Canvas</title>
    <link href="css/estilo.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <form id="frmPrincipal" name="form1" method="post" action="">
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
              <a href="principal.htm" class="menu-item">Principal</a><br />
              <a href="projeto.htm" class="menu-item">Projetos</a><br />
              <a href="sobreNos.htm" class="menu-item">Sobre Nós</a><br />
            </div>
          </div>
        </div>
        <div class="area-central">
          <div class="cabecalho">
            Bem vindo ao Lord Canvas
          </div>
          <div class="area-texto">
            <div align="justify">
                      <h1>Cadastro</h1>
          <div>
          <form action="${pageContext.request.contextPath}/autenticar" method="post" class=".form-stacked">

	<div class="clearfix">
		<label> Nome: </label>
		<div class="input">
			<input type="text" name="usuario.name" />
		</div>
	</div>
	
	<div class="clearfix">
		<label>E-mail</label>
		<div class="input">
			<input type="text" name="usuario.email" />
		</div>
	</div>

	<div class="clearfix">
	<label>Senha: </label>
		<div class="input">
 			<input type="password" name="usuario.password" /> 
		</div>
	</div>
	
	
 		<input type="submit" value="Cadastrar" class="btn primary" />
 </form>
         
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
                    <input id="txtUsuario" type="text" class="righttextbox" name="usuario.email" value="Usuário" />
                  </label>
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
    </form>
  </body>
</html>