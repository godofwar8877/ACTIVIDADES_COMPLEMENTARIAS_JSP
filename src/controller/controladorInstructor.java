package controller;

import include.Instructor;
import models.modeloInstructor;
import java.util.ArrayList;

public class controladorInstructor {

    public boolean agregarInstructor(Instructor instructor){
        modeloInstructor instructor1 = new modeloInstructor();
        return instructor1.insertarInstructor(instructor);
    }

    public ArrayList<Instructor> obtenerInstructores(){
        modeloInstructor instructor = new modeloInstructor();
        return instructor.obtenerInstructores();
    }

    public ArrayList<Instructor> obtenerInstructor(int idinstructor){
        modeloInstructor instructor = new modeloInstructor();
        return instructor.obtenerInstructor(idinstructor);
    }
    public boolean actualizarInstructor(Instructor instructor){
        modeloInstructor instructor1 = new modeloInstructor();
        return instructor1.actualizarInstructor(instructor);
    }

    public boolean eliminarInstructor(int idinstructor){
        modeloInstructor instructor1 = new modeloInstructor();
        return instructor1.borrarInstructor(idinstructor);
    }
/*
    public static void main(String[] args){

        controladorInstructor cc = new controladorInstructor();
        //Agregar un elemento
        //System.out.println(cc.agregarInstructor(new Instructor(1, "Tom", "Cruz", "Perez", "M", "66t6atd6a", "etica")));
        //System.out.println(cc.agregarInstructor(new Instructor(2, "Zeus", "Crete", "Lightning", "M", "123456tuhgu1", "dios del cielo")));
        //System.out.println(cc.agregarInstructor(new Instructor(3, "Poseidon", "Cretes", "Ocean", "M", "125409nhjn34", "dios del oceano")));
        //System.out.println(cc.agregarInstructor(new Instructor(4, "Hades", "Cratos", "Underworld", "M", "562319hnjh12", "dios del inframundo")));

        //Listar todos los elementos de la tabla
        ArrayList<Instructor> instructores = new ArrayList<Instructor>();
        instructores = cc.obtenerInstructores();
        for (int a=0;a<instructores.size();a++){
            System.out.println("idinstructor: " + instructores.get(a).getIdinstructor() );
            System.out.println("nombre: " + instructores.get(a).getNombre());
            System.out.println("apellidop: "+ instructores.get(a).getApellidop());
            System.out.println("apellidom: "+ instructores.get(a).getApellidom());
            System.out.println("sexo: "+ instructores.get(a).getSexo());
            System.out.println("rfc: "+ instructores.get(a).getRfc());
            System.out.println("formacion: "+ instructores.get(a).getFormacion());
            System.out.println();
        }

        //Listar un elemento de la tabla por su llave primaria
        ArrayList<Instructor> instructor = new ArrayList<Instructor>();
        instructor = cc.obtenerInstructor(1);

        for (int b=0;b<instructor.size();b++){
            System.out.println("idinstructor: " + instructor.get(b).getIdinstructor());
            System.out.println("nombre: " + instructor.get(b).getNombre());
            System.out.println("apellidop: "+ instructor.get(b).getApellidop());
            System.out.println("apellidom: "+ instructor.get(b).getApellidom());
            System.out.println("sexo: "+ instructor.get(b).getSexo());
            System.out.println("rfc: "+ instructor.get(b).getRfc());
            System.out.println("formacion: "+ instructor.get(b).getFormacion());
            System.out.println();
        }

        //Modificar un elemento
        //System.out.println(cc.actualizarInstructor(new Instructor(1, "Saria", "Elf", "Woods", "M", "IQS128395PR6", "Universidad")));

        //Eliminar un elemento
        //System.out.println(cc.eliminarInstructor(5));
    }
    */
}


