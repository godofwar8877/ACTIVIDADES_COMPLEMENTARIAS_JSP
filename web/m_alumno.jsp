<%@ page import="controller.controladorAlumnos" %>
<%@ page import="include.Alumnos" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="controller.controladorRol" %>
<%@ page import="include.Rol" %>
<%@ page import="controller.controladorLocalidad" %>
<%@ page import="include.Localidad" %>
<jsp:include page='views/header.jsp'></jsp:include>


<%
    controladorRol cc = new controladorRol();
    ArrayList<Rol> roles = new ArrayList<Rol>();
    roles = cc.obtenerRolesFK();


    String htmlselect = "";
    htmlselect += "<select name=\"rol_idrol\">\n" +
            "                <option value=\"\" selected disabled>Elige el rol" +
            "</option>\n";
    for(int a=0; a<roles.size();a++){
        htmlselect += "<option value=\""+roles.get(a).getIdrol()+"\">"+roles.get(a).getNombre_rol()+"</option>\n";
    }
    htmlselect += "            </select>";

%>

<%
    controladorLocalidad cl = new controladorLocalidad();
    ArrayList<Localidad> localidades = new ArrayList<Localidad>();
    localidades = cl.obtenerLocalidadesFK();


    String htmlselect1 = "";
    htmlselect += "<select name=\"localidades_idlocalidades\">\n" +
            "                <option value=\"\" selected disabled>Elige la localidad" +
            "</option>\n";
    for(int a=0; a<localidades.size();a++){
        htmlselect += "<option value=\""+localidades.get(a).getIdlocalidades()+"\">"+localidades.get(a).getLocalidad()+"</option>\n";
    }
    htmlselect1 += "            </select>";

%>

<%
    long numero_control = 0;
    try {
        numero_control = Long.parseLong(request.getParameter("numero_control"));
    } catch (NumberFormatException e){

    }
    controladorAlumnos ca = new controladorAlumnos();
    ArrayList<Alumnos> alumno = new ArrayList<Alumnos>();
    alumno = ca.obtenerAlumno(numero_control);
%>

<div class="container">
    <form class="col s12" action="/modificaralumnos" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar Alumno</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="numero_control" name="numero_control" type="text" readonly="readonly" value="<% out.print(alumno.get(0).getNumero_control()); %>">
                <label for="numero_control" class="center-align">Numero de Control</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="nombre" name="nombre" type="text" value="<% out.print(alumno.get(0).getNombre()); %>">
                <label for="nombre" class="center-align">Nombre</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="apellidop" name="apellidop" type="text" value="<% out.print(alumno.get(0).getApellidop()); %>">
                <label for="apellidop" class="center-align">Apellido Paterno</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="apellidom" name="apellidom" type="text" value="<% out.print(alumno.get(0).getApellidom()); %>">
                <label for="apellidom" class="center-align">Apellido Materno</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="email" name="email" type="text" value="<% out.print(alumno.get(0).getEmail()); %>">
                <label for="email" class="center-align">Email</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="telefono" name="telefono" type="text" value="<% out.print(alumno.get(0).getTelefono()); %>">
                <label for="telefono" class="center-align">Telefono</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="fecha_nacimiento" name="fecha_nacimiento" type="text" value="<% out.print(alumno.get(0).getFecha_nacimiento()); %>">
                <label for="fecha_nacimiento" class="center-align">Fecha de Nacimiento</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="sexo" name="sexo" type="text" value="<% out.print(alumno.get(0).getSexo()); %>">
                <label for="sexo" class="center-align">Sexo</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="calle" name="calle" type="text" value="<% out.print(alumno.get(0).getCalle()); %>">
                <label for="calle" class="center-align">Calle</label>
            </div>
            <div class="col s2">

            </div>
        </div>


        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="numero_ext" name="numero_ext" type="text" value="<% out.print(alumno.get(0).getNumero_ext()); %>">
                <label for="numero_ext" class="center-align">Numero EXT</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="numero_int" name="numero_int" type="text" value="<% out.print(alumno.get(0).getNumero_int()); %>">
                <label for="numero_int" class="center-align">Numero INT</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="colonia" name="colonia" type="text" value="<% out.print(alumno.get(0).getColonia()); %>">
                <label for="colonia" class="center-align">Colonia</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="password" name="password" type="text" value="<% out.print(alumno.get(0).getPassword()); %>">
                <label for="password" class="center-align">Password</label>
            </div>
            <div class="col s2">
            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="estatus" name="estatus" type="text" value="<% out.print(alumno.get(0).getEstatus()); %>">
                <label for="estatus" class="center-align">Estatus</label>
            </div>
            <div class="col s2">
            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="semestre" name="semestre" type="text" value="<% out.print(alumno.get(0).getSemestre()); %>">
                <label for="semestre" class="center-align">Semestre</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <%
                    out.print(htmlselect1);
                %>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <%
                    out.print(htmlselect);
                %>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="alumnos.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>



<jsp:include page='views/footer.jsp'></jsp:include>
