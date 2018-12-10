<%@ page import="controller.controladorAlumnos" %>
<%
    long numero_control = 0;


    try {
        numero_control = Integer.parseInt(request.getParameter("numero_control"));
    } catch (NumberFormatException e){

    }
    controladorAlumnos cc = new controladorAlumnos();
    if(cc.eliminarAlumnos(numero_control)){
        response.sendRedirect("alumnos.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
