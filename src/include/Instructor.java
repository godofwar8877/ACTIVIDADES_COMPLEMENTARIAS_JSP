package include;

public class Instructor {
    private int idinstructor;
    private String nombre;
    private String apellidop;
    private String apellidom;
    private String sexo;
    private String rfc;
    private String formacion;


    public Instructor(int idinstructor, String nombre, String apellidop, String apellidom, String sexo, String rfc, String formacion) {
        this.idinstructor = idinstructor;
        this.nombre = nombre;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.sexo = sexo;
        this.rfc = rfc;
        this.formacion = formacion;
    }

    public int getIdinstructor() {
        return idinstructor;
    }

    public void setIdinstructor(int idinstructor) {
        this.idinstructor = idinstructor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidop() {
        return apellidop;
    }

    public void setApellidop(String apellidop) {
        this.apellidop = apellidop;
    }

    public String getApellidom() {
        return apellidom;
    }

    public void setApellidom(String apellidom) {
        this.apellidom = apellidom;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getFormacion() {
        return formacion;
    }

    public void setFormacion(String formacion) {
        this.formacion = formacion;
    }

    }

