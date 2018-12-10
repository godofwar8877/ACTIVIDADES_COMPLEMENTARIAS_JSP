package models;

import include.Localidad;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloLocalidad extends conexion{
    public ArrayList<Localidad> obtenerLocalidadesFK() {
        ArrayList<Localidad> localidades = new ArrayList<Localidad>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idlocalidades, localidad FROM localidades";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                localidades.add(new Localidad(rs.getInt("idlocalidades"),
                        rs.getString("localidad")));
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
        return localidades;
    }

}
