package include;

public class Localidad {

    private int idlocalidades;
    private String localidad;


    public Localidad(int idlocalidades, String localidad) {
        this.idlocalidades = idlocalidades;
        this.localidad = localidad;
    }

    public int getIdlocalidades() {
        return idlocalidades;
    }

    public void setIdlocalidades(int idlocalidades) {
        this.idlocalidades = idlocalidades;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }
}
