<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                        Desenvolvido por:
                    </p>
                    <br />
                    <p>
                        Alan Filipe Cardozo Fabeni, Paulo Eduardo Danker, Rodrigo Eduardo Boni e Thiago
                        Pradi
                    </p>
                    <br />
                    <p>
                        Departamento de Sistemas e Computação, Universidade Regional de Blumenau
                    </p>
                    <br />
                    <p>
                        Blumenau - SC
                    </p>

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
