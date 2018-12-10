package models;

import include.Rol;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloRol extends conexion{

    public ArrayList<Rol> obtenerRolesFK() {
        ArrayList<Rol> roles = new ArrayList<Rol>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idrol, nombre_rol FROM rol";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                roles.add(new Rol(rs.getInt("idrol"),
                        rs.getString("nombre_rol")));
            }

        } catch (Exception e) {

        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {

            }
        }
        return roles;
    }

}