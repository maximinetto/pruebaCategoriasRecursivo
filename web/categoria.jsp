<%-- 
    Document   : categoria
    Created on : 18/04/2019, 16:19:29
    Author     : maxim
--%>

<% 
                    
                   
                    
    CategoriaL categoriaService = Fabrica.getInstance().getCategoriaLogica();
    List<Categoria> listaPadres = categoriaService.getCategoriasPadre();
    pageContext.setAttribute("listaPadres", listaPadres);
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entities.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="logica.Fabrica"%>
<%@page import="logica.CategoriaL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div> 
            
           <ul>
                <c:forEach var="categoria" items="${listaPadres}">
                    <li>
                        ${categoria.nombre}
                        <c:set var="categorias" value="${categoria.categoriasHijos}" scope="request" />
                        <jsp:include page="categoria_recursiva.jsp" />
                    </li> 
                </c:forEach>
            </ul>

        </div>
    </body>
</html>
