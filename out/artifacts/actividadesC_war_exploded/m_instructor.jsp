<%@ page import="controller.controladorInstructor" %>
<%@ page import="include.Instructor" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%
    int idinstructor = 0;
    try {
        idinstructor = Integer.parseInt(request.getParameter("idinstructor"));
    } catch (NumberFormatException e){

    }
    controladorInstructor cc = new controladorInstructor();
    ArrayList<Instructor> instructor = new ArrayList<Instructor>();
    instructor = cc.obtenerInstructor(idinstructor);
%>
<div class="container">
    <form class="col s12" action="/modificarinstructor" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar instructor</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idinstructor" name="idinstructor" type="text" readonly="readonly" value="<% out.print(instructor.get(0).getIdinstructor()); %>">
                <label for="idinstructor" class="center-align">Id</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="nombre" name="nombre" type="text" value="<% out.print(instructor.get(0).getNombre()); %>">
                <label for="nombre" class="center-align">Nombre</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="apellidop" name="apellidop" type="text" value="<% out.print(instructor.get(0).getApellidop()); %>">
                <label for="apellidop" class="center-align">Apellido Paterno</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="apellidom" name="apellidom" type="text" value="<% out.print(instructor.get(0).getApellidom()); %>">
                <label for="apellidom" class="center-align">Apellido Materno</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="sexo" name="sexo" type="text" value="<% out.print(instructor.get(0).getSexo()); %>" >
                <label for="sexo" class="center-align">Sexo</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="rfc" name="rfc" type="text" value="<% out.print(instructor.get(0).getRfc()); %>">
                <label for="rfc" class="center-align">RFC</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="formacion" name="formacion" type="text" value="<% out.print(instructor.get(0).getFormacion()); %>">
                <label for="formacion" class="center-align">Formacion</label>
            </div>
            <div class="col s2">

            </div>
        </div>


        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="instructores.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>



<jsp:include page='views/footer.jsp'></jsp:include>
