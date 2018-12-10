<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.Alumnos" %>
<%@ page import="controller.controladorAlumnos" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>Alumnos</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_alumno.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>NUMERO DE CONTROL</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO PATERNO</th>
                    <th>APELLIDO MATERNO</th>
                    <th>EMAIL</th>
                    <th>TELEFONO</th>
                    <th>FECHA DE NACIMIENTO</th>
                    <th>SEXO</th>
                    <th>CALLE</th>
                    <th>NUMERO EXT</th>
                    <th>NUMERO INT</th>
                    <th>COLONIA</th>
                    <th>PASSWORD</th>
                    <th>ESTATUS</th>
                    <th>SEMESTRE</th>
                    <th>LOCALIDADES</th>
                    <th>ROL</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controladorAlumnos ca = new controladorAlumnos();
                    int control = 0;
                    ArrayList<Alumnos> alumnos = new ArrayList<Alumnos>();
                    alumnos = ca.obtenerAlumnos();
                    if(alumnos.size() > 0){
                        for(int a=0; a<alumnos.size();a++){
                            htmlcode += "<tr><td>" + alumnos.get(a).getNumero_control()
                                    + "</td><td>" + alumnos.get(a).getNombre()
                                    + "</td><td>" + alumnos.get(a).getApellidop()
                                    + "</td><td>" + alumnos.get(a).getApellidom()
                                    + "</td><td>" + alumnos.get(a).getEmail()
                                    + "</td><td>" + alumnos.get(a).getTelefono()
                                    + "</td><td>" + alumnos.get(a).getFecha_nacimiento()
                                    + "</td><td>" + alumnos.get(a).getSexo()
                                    + "</td><td>" + alumnos.get(a).getCalle()
                                    + "</td><td>" + alumnos.get(a).getNumero_ext()
                                    + "</td><td>" + alumnos.get(a).getNumero_int()
                                    + "</td><td>" + alumnos.get(a).getColonia()
                                    + "</td><td>" + alumnos.get(a).getPassword()
                                    + "</td><td>" + alumnos.get(a).getEstatus()
                                    + "</td><td>" + alumnos.get(a).getSemestre()
                                    + "</td><td>" + alumnos.get(a).getLocalidades_idlocalidades()
                                    + "</td><td>" + alumnos.get(a).getRol_idrol()
                                    + "</td><td>" +
                                     "<a class=\"btn blue\" href=\"m_alumno.jsp?numero_control="+alumnos.get(a).getNumero_control()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"delete_alumno('"+ alumnos.get(a).getNumero_control()+"')\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen alumnos</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>

