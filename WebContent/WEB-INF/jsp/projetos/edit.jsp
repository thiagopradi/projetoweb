<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Lord Canvas</title>
    <link href="/projeto-web/css/estilo.css" rel="stylesheet" type="text/css" />
    <script src="/projeto-web/javascripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="/projeto-web/javascripts/jscript.js" type="text/javascript"></script>
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
            <a href="<c:url value="/"/>" class="menu-item">Principal</a><br />
            <a href="${pageContext.request.contextPath}/projetos/list" class="menu-item">Projetos</a><br />
            <a href="sobreNos.htm" class="menu-item">Sobre Nós</a><br />
          </div>
        </div>
      </div>
      <div class="area-central">
        <div class="cabecalho">
          Projetos
        </div>
        <div class="area-texto">
          <div align="justify">
            <h1>Novo Projeto</h1>
            <form id="frmPrincipal" action="${pageContext.request.contextPath}/projetos/update" method="post" class=".form-stacked">
            <input type="hidden" name="projeto.id" value="${projeto.id}" />
			<input type="hidden" name="_method" value="put" />
              <div class="field">
                <div align="left">
                  Título
                </div>
                <input id="txtTitulo" type="text" class="righttextbox" name="projeto.titulo" value="${projeto.titulo}"/>
              </div>

              <div class="field">
                <div align="left">
                  Descrição
                </div>
                <input id="txtDescricao" type="text" class="righttextbox" name="projeto.descricao" value="${projeto.descricao }"/>
              </div>

              <div class="field">
                <div align="left">
                  Data Início
                </div>
                <input id="txtDataInicio" type="text" class="righttextbox" name="projeto.dataInicio" value="<fmt:formatDate value="${projeto.dataInicio}" pattern="dd/MM/yyyy"/>" onkeypress="formatar(this, '##/##/####');"
                maxlength="10" />
              </div>

              <div class="field">
                <div align="left">
                  Data Fim
                </div>
                <input id="txtDataFim" type="text" class="righttextbox" name="projeto.dataFim" value="<fmt:formatDate value="${projeto.dataFim}" pattern="dd/MM/yyyy"/>" onkeypress="formatar(this, '##/##/####');"
                maxlength="10" />
              </div>
              <br />
              <br />
              <div class="direito-texto field">
                <div align="center">
                  <a href="#" class="login" onclick="limpar('frmPrincipal');">Limpar</a> 
                  <input type="submit" value="Atualizar" class="btn primary login" />
                </div>
              </div>
            </form>

          </div>
        </div>
      </div>
      <div class="direita">
        <div class="login-area">
          <div class="login-topo">
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
