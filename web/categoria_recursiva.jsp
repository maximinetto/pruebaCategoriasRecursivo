<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="entities.Categoria"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul>    
    <c:forEach var="categoria" items="${categorias}">

        ${categoria.nombre}
        <c:if test="${categoria.categoriasHijos != null }"> 
            <c:set var="categorias" value="${categoria.categoriasHijos}" scope="request" />
            <jsp:include page="categoria_recursiva.jsp" />
        </c:if>
    </c:forEach>
    
</ul>