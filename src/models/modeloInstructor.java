package models;

import include.Instructor;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloInstructor extends conexion {

    public boolean insertarInstructor(Instructor instructor) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "INSERT INTO instructor (idinstructor, nombre, apellidop, apellidom, sexo, rfc, formacion)" +
                    " VALUES(?, ?, ?, ?, ?, ?, ?)";

            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, instructor.getIdinstructor());
            pst.setString(2, instructor.getNombre());
            pst.setString(3, instructor.getApellidop());
            pst.setString(4, instructor.getApellidom());
            pst.setString(5, instructor.getSexo());
            pst.setString(6, instructor.getRfc());
            pst.setString(7, instructor.getFormacion());


            if (pst.executeUpdate() == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {

            }
        }
        return flag;
    }

    public ArrayList<Instructor> obtenerInstructores(){
        ArrayList<Instructor> instructores = new ArrayList<Instructor>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idinstructor, nombre, apellidop, apellidom, sexo, rfc, formacion FROM instructor";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                instructores.add(new Instructor(rs.getInt("idinstructor"),
                        rs.getString("nombre"),
                        rs.getString("apellidop"),
                        rs.getString("apellidom"),
                        rs.getString("sexo"),
                        rs.getString("rfc"),
                        rs.getString("formacion")));
            }

        } catch (Exception e) {

        }finally {
            try {
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {

            }
        }
        return instructores;
    }

    public ArrayList<Instructor> obtenerInstructor(int idinstructor){
        ArrayList<Instructor> instructor = new ArrayList<Instructor>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idinstructor, nombre, apellidop, apellidom, sexo, rfc, formacion FROM instructor WHERE idinstructor = ?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1, idinstructor);
            rs = pst.executeQuery();
            while (rs.next()){
                instructor.add(new Instructor(rs.getInt("idinstructor"),
                        rs.getString("nombre"),
                        rs.getString("apellidop"),
                        rs.getString("apellidom"),
                        rs.getString("sexo"),
                        rs.getString("rfc"),
                        rs.getString("formacion")));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            try {
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return instructor;
    }

    public boolean actualizarInstructor(Instructor instructor){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "UPDATE instructor SET idinstructor = ?, nombre = ?, apellidop = ?, " +
                    "apellidom = ?, sexo = ?, rfc = ?, formacion = ? WHERE idinstructor = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1,instructor.getIdinstructor());
            pst.setString(2,instructor.getNombre());
            pst.setString(3,instructor.getApellidop());
            pst.setString(4,instructor.getApellidom());
            pst.setString(5,instructor.getSexo());
            pst.setString(6,instructor.getRfc());
            pst.setString(7,instructor.getFormacion());
            pst.setInt(8,instructor.getIdinstructor());


            if(pst.executeUpdate() == 1){
                flag = true;
            }

        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception a) {
                System.out.println(a.getMessage());
            }
        }
        return flag;
    }

    public boolean borrarInstructor(int idinstructor){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "DELETE FROM instructor WHERE idinstructor = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, idinstructor);


            if(pst.executeUpdate() == 1){
                flag = true;
            }
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return flag;
    }
}

