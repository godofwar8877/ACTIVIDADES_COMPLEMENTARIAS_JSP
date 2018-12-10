<%@ page import="controller.controladorInstructor" %>
<%
    int idinstructor = 0;


    try {
        idinstructor = Integer.parseInt(request.getParameter("idinstructor"));
    } catch (NumberFormatException e){

    }
    controladorInstructor cc = new controladorInstructor();
    if(cc.eliminarInstructor(idinstructor)){
        response.sendRedirect("instructores.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
