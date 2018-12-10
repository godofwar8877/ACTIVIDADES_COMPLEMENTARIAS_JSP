package servlet;

import controller.controladorInstructor;
import include.Instructor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletModificarInstructor", urlPatterns = {"/modificarinstructor"})
public class ServletModificarInstructor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {int idinstructor = 0;
        String nombre = request.getParameter("nombre");
        String apellidop = request.getParameter("apellidop");
        String apellidom = request.getParameter("apellidom");
        String sexo = request.getParameter("sexo");
        String rfc = request.getParameter("rfc");
        String formacion = request.getParameter("formacion");

        try {
            idinstructor = Integer.parseInt(request.getParameter("idinstructor"));
        } catch (NumberFormatException e){

        }

        Instructor nuevoInstructor = new Instructor(idinstructor, nombre, apellidop, apellidom, sexo, rfc, formacion);

        controladorInstructor cc = new controladorInstructor();
        if(cc.actualizarInstructor(nuevoInstructor)) {
            response.sendRedirect("instructores.jsp");
        } else {
            response.sendRedirect("m_instructor.jsp?idinstructor=" + idinstructor);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
