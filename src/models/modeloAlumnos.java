package models;

import include.Alumnos;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class modeloAlumnos extends conexion {

    public boolean insertarAlumnos(Alumnos alumno){
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "INSERT INTO alumnos" +
                    "(numero_control, nombre, apellidop, apellidom, email, telefono, fecha_nacimiento, sexo, calle, " +
                    "numero_ext, numero_int, colonia, password, estatus, semestre, localidades_idlocalidades, rol_idrol )" +
                    "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            pst = getConection().prepareStatement(consulta);
            pst.setLong(1, alumno.getNumero_control());
            pst.setString(2, alumno.getNombre());
            pst.setString(3, alumno.getApellidop());
            pst.setString(4, alumno.getApellidom());
            pst.setString(5, alumno.getEmail());
            pst.setLong(6, alumno.getTelefono());
            pst.setString(7, alumno.getFecha_nacimiento());
            pst.setString(8, alumno.getSexo());
            pst.setString(9, alumno.getCalle());
            pst.setString(10, alumno.getNumero_ext());
            pst.setString(11, alumno.getNumero_int());
            pst.setString(12, alumno.getColonia());
            pst.setString(13, alumno.getPassword());
            pst.setString(14, alumno.getEstatus());
            pst.setInt(15, alumno.getSemestre());
            pst.setInt(16, alumno.getLocalidades_idlocalidades());
            pst.setInt(17, alumno.getRol_idrol());

            if (pst.executeUpdate() == 1) {
                flag = true;
            }
        }catch (Exception ex) {
            System.out.println(ex.getMessage());
        }finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            }catch (Exception e) {

            }
        }
        return flag;
    }

    public ArrayList<Alumnos> obtenerAlumnos(){
        ArrayList<Alumnos> alumnos = new ArrayList<Alumnos>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT numero_control, nombre, apellidop, apellidom, email, telefono, fecha_nacimiento, sexo, calle," +
                    "numero_ext, numero_int, colonia, password, estatus, semestre, localidades_idlocalidades, rol_idrol FROM alumnos";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                alumnos.add(new Alumnos(rs.getLong("numero_control"),
                        rs.getString("nombre"),
                        rs.getString("apellidop"),
                        rs.getString("apellidom"),
                        rs.getString("email"),
                        rs.getLong("telefono"),
                        rs.getString("fecha_nacimiento"),
                        rs.getString("sexo"),
                        rs.getString("calle"),
                        rs.getString("numero_ext"),
                        rs.getString("numero_int"),
                        rs.getString("colonia"),
                        rs.getString("password"),
                        rs.getString("estatus"),
                        rs.getInt("semestre"),
                        rs.getInt("localidades_idlocalidades"),
                        rs.getInt("rol_idrol")));
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
        return alumnos;
    }


    public ArrayList<Alumnos> obtenerAlumno(long numero_control){
        ArrayList<Alumnos> alumno = new ArrayList<Alumnos>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT numero_control, nombre, apellidop, apellidom, email, telefono, fecha_nacimiento, sexo, calle," +
                    "numero_ext, numero_int, colonia, password, estatus, semestre, localidades_idlocalidades, rol_idrol" +
                    " FROM alumnos WHERE numero_control = ?";
            pst = getConection().prepareCall(consulta);
            pst.setLong(1, numero_control);
            rs = pst.executeQuery();
            while (rs.next()){
                alumno.add(new Alumnos(rs.getLong("numero_control"),
                        rs.getString("nombre"),
                        rs.getString("apellidop"),
                        rs.getString("apellidom"),
                        rs.getString("email"),
                        rs.getLong("telefono"),
                        rs.getString("fecha_nacimiento"),
                        rs.getString("sexo"),
                        rs.getString("calle"),
                        rs.getString("numero_ext"),
                        rs.getString("numero_int"),
                        rs.getString("colonia"),
                        rs.getString("password"),
                        rs.getString("estatus"),
                        rs.getInt("semestre"),
                        rs.getInt("localidades_idlocalidades"),
                        rs.getInt("rol_idrol")));
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
        return alumno;
    }

    public boolean actualizarAlumnos(Alumnos alumnos){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "UPDATE alumnos SET numero_control = ?, nombre = ?, apellidop = ?, apellidom = ?, email = ?, telefono = ?," +
                    "fecha_nacimiento = ?, sexo = ?, calle = ?, numero_ext = ?, numero_int = ?, colonia = ?, password = ?, estatus = ?, " +
                    "semestre = ?, localidades_idlocalidades = ?, rol_idrol = ?" +
                    " WHERE numero_control = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setLong(1, alumnos.getNumero_control());
            pst.setString(2, alumnos.getNombre());
            pst.setString(3, alumnos.getApellidop());
            pst.setString(4, alumnos.getApellidom());
            pst.setString(5, alumnos.getEmail());
            pst.setLong(6, alumnos.getTelefono());
            pst.setString(7, alumnos.getFecha_nacimiento());
            pst.setString(8, alumnos.getSexo());
            pst.setString(9, alumnos.getCalle());
            pst.setString(10, alumnos.getNumero_ext());
            pst.setString(11, alumnos.getNumero_int());
            pst.setString(12, alumnos.getColonia());
            pst.setString(13, alumnos.getPassword());
            pst.setString(14, alumnos.getEstatus());
            pst.setInt(15, alumnos.getSemestre());
            pst.setInt(16, alumnos.getLocalidades_idlocalidades());
            pst.setInt(17, alumnos.getRol_idrol());
            pst.setLong(18, alumnos.getNumero_control());

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

    public boolean borrarAlumnos(long numero_control){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "DELETE FROM alumnos WHERE numero_control = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setLong(1, numero_control);


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

