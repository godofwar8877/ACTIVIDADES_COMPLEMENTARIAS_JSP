package controller;

import include.Rol;
import models.modeloRol;

import java.util.ArrayList;

public class controladorRol {

    public ArrayList<Rol> obtenerRolesFK(){
        modeloRol roles = new modeloRol();
        return roles.obtenerRolesFK();
    }

}
