package controller;

import include.Localidad;
import models.modeloLocalidad;

import java.util.ArrayList;

public class controladorLocalidad {

    public ArrayList<Localidad> obtenerLocalidadesFK(){
        modeloLocalidad localidades = new modeloLocalidad();
        return localidades.obtenerLocalidadesFK();
    }
}
