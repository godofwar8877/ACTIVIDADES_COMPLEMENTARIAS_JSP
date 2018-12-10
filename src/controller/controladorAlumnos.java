package controller;

import include.Alumnos;
import include.Rol;
import models.modeloAlumnos;



import java.util.ArrayList;

public class controladorAlumnos {

    public boolean agregarAlumno(Alumnos alumnos){
        modeloAlumnos alumnos1 = new modeloAlumnos();
        return alumnos1.insertarAlumnos(alumnos);
    }

    public ArrayList<Alumnos> obtenerAlumnos(){
        modeloAlumnos alumnos = new modeloAlumnos();
        return alumnos.obtenerAlumnos();
    }

    public ArrayList<Alumnos> obtenerAlumno(long numero_control){
        modeloAlumnos alumno = new modeloAlumnos();
        return alumno.obtenerAlumno(numero_control);
    }
    public boolean actualizarAlumnos(Alumnos alumnos) {
        modeloAlumnos alumnos1 = new modeloAlumnos();
        return alumnos1.actualizarAlumnos(alumnos);
    }
    public boolean eliminarAlumnos(long numero_control){
        modeloAlumnos alumnos1 = new modeloAlumnos();
        return alumnos1.borrarAlumnos(numero_control);
    }
/*
    public static void main(String[] args) {

        controladorAlumnos cc = new controladorAlumnos();
        //Agregar un elemento
        //System.out.println(cc.agregarAlumno(new Alumnos(15930124, "James", "Roger", "Duque", "yesbro@gmail.com", 732118444, "1991-02-24", "H", "Bluber", "123ooo", "12uuu", "Chamuco", "whatwhat", "T", 6, 1, 1)));


        //Listar todos los elementos de la tabla
        ArrayList<Alumnos> alumnos = new ArrayList<Alumnos>();
        alumnos = cc.obtenerAlumnos();
        for (int a = 0; a < alumnos.size(); a++) {
            System.out.println("numero_control: " + alumnos.get(a).getNumero_control());
            System.out.println("nombre: " + alumnos.get(a).getNombre());
            System.out.println("apellidop: " + alumnos.get(a).getApellidop());
            System.out.println("apellidom: " + alumnos.get(a).getApellidom());
            System.out.println();
        }

        //Listar un elemento de la tabla por su llave primaria
        ArrayList<Alumnos> alumno = new ArrayList<Alumnos>();
        alumno = cc.obtenerAlumno(15930216);

        for (int b = 0; b < alumno.size(); b++) {
            System.out.println("numero_control: " + alumno.get(b).getNumero_control());
            System.out.println("nombre: " + alumno.get(b).getNombre());
            System.out.println("apellidop: " + alumno.get(b).getApellidop());
            System.out.println("apellidom: " + alumno.get(b).getApellidom());
            System.out.println();

            //Modificar un elemento
            //System.out.println(cc.actualizarAlumnos(new Alumnos(1, "Sara", "Quen", "Stacy", "F", "SQS120395QZ3", "Civica")));

            //Eliminar un elemento
            //System.out.println(cc.eliminarAlumnos(15930216));
        }
    }
    */
}
