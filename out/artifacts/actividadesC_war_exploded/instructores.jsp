<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.Instructor" %>
<%@ page import="controller.controladorInstructor" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>Instructores</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_instructor.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>IDINSTRUCTOR</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO PATERNO</th>
                    <th>APELLIDO MATERNO</th>
                    <th>SEXO</th>
                    <th>RFC</th>
                    <th>FORMACION</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controladorInstructor cc = new controladorInstructor();
                    int instructor = 0;
                    ArrayList<Instructor> instructores = new ArrayList<Instructor>();
                    instructores = cc.obtenerInstructores();
                    if(instructores.size() > 0){
                        for(int a=0; a<instructores.size();a++){
                            htmlcode += "<tr><td>" + instructores.get(a).getIdinstructor()
                                    + "</td><td>" + instructores.get(a).getNombre()
                                    + "</td><td>" + instructores.get(a).getApellidop()
                                    + "</td><td>" + instructores.get(a).getApellidom()
                                    + "</td><td>" + instructores.get(a).getSexo()
                                    + "</td><td>" + instructores.get(a).getRfc()
                                    + "</td><td>" + instructores.get(a).getFormacion()
                                    + "</td><td>"
                                    + "<a class=\"btn blue\" href=\"m_instructor.jsp?idinstructor="+instructores.get(a).getIdinstructor()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"delete_instructor("+ instructores.get(a).getIdinstructor()+")\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen instructores</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
