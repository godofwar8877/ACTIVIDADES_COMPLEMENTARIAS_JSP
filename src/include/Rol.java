package include;

public class Rol {

    private int idrol;
    private String nombre_rol;
    private String descripcion;

    public Rol(int idrol, String nombre_rol) {
        this.idrol = idrol;
        this.nombre_rol = nombre_rol;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    public String getNombre_rol() {
        return nombre_rol;
    }

    public void setNombre_rol(String nombre_rol) {
        this.nombre_rol = nombre_rol;
    }
}
