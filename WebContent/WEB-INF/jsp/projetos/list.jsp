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
    <script src="/projeto-web/javascripts/jquery.tablesorter.js" type="text/javascript"></script>
  	<script type="text/javascript">
  	
  	$(document).ready(function() 
  		    { 
  		        $("#projetos_table").tablesorter(); 
  		    } 
  		); 
  		   
  	</script>
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
     	 <div id="message">
   			<h3>${message}</h3>
		 </div>
          <div align="justify">
            <h1>Projetos</h1>
            <br />
            <a href="${pageContext.request.contextPath}/projetos/novo"> Novo Projeto</a>
            <br />
            <div>
              <table id="projetos_table" class="gridtable">
              <thead>
              <tr>
              <th> Nome </th>
              <th> Descrição </th>
              <th> Data Início </th>
              <th> Data Fim</th>
              <th> Ações </th>
              </tr>
              </thead>
              <tbody>
                <c:forEach items="${projetoList}" var="item">
                <tr>
              	<td>${item.titulo}</td>
              	<td>${item.descricao}</td>
              	<td><fmt:formatDate value="${item.dataInicio}" pattern="dd/MM/yyyy"/> </td>
              	<td><fmt:formatDate value="${item.dataFim}" pattern="dd/MM/yyyy"/> </td>
              	<td><a href="<c:url value="/projetos/${item.id}/edit"/>"> Editar </a> | 
              	<form action='<c:url value="/projetos/remove"/>' method="post">
        <input type='hidden' name='_method' value='delete'/>
        <input type='hidden' name='projeto.id' value='${item.id}'/>
        <input type="submit" value="Excluir"/>
    </form>             	
              	</td>
              </tr>
			  </c:forEach>
   
              </tbody>
              </table>
            
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
    </div>
  </body>
</html>