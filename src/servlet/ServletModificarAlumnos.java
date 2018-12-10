package servlet;

import controller.controladorAlumnos;
import include.Alumnos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletModificarAlumnos", urlPatterns = {"/modificaralumnos"})
public class ServletModificarAlumnos extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long numero_control = 0;


        try {

            numero_control = Long.parseLong(request.getParameter("numero_control"));
        } catch (NumberFormatException e){

        }
        String nombre = request.getParameter("nombre");
        String apellidop = request.getParameter("apellidop");
        String apellidom = request.getParameter("apellidom");
        String email = request.getParameter("email");
        long telefono = 0;

        try {

            telefono = Long.parseLong(request.getParameter("telefono"));
        } catch (NumberFormatException e){

        }

        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String sexo = request.getParameter("sexo");
        String calle = request.getParameter("calle");
        String numero_ext = request.getParameter("numero_ext");
        String numero_int = request.getParameter("numero_int");
        String colonia = request.getParameter("colonia");
        String password = request.getParameter("password");
        String estatus = request.getParameter("estatus");
        int semestre = 0;
        int localidades_idlocalidades = 0;
        int rol_idrol = 0;

        try {
            semestre = Integer.parseInt(request.getParameter("semestre"));
            localidades_idlocalidades = Integer.parseInt(request.getParameter("localidades_idlocalidades"));
            rol_idrol = Integer.parseInt(request.getParameter("rol_idrol"));
        } catch (NumberFormatException e){

        }

        Alumnos nuevoAlumno = new Alumnos(numero_control, nombre, apellidop, apellidom, email, telefono, fecha_nacimiento, sexo, calle, numero_ext, numero_int, colonia, password, estatus, semestre, localidades_idlocalidades, rol_idrol);
        controladorAlumnos ca = new controladorAlumnos();
        if(ca.actualizarAlumnos(nuevoAlumno)) {
            response.sendRedirect("alumnos.jsp");
        } else {
            response.sendRedirect("m_alumno.jsp?numero_control=" + numero_control);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
