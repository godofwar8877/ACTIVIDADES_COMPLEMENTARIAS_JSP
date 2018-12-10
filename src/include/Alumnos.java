package include;



import java.lang.String;

public class Alumnos {
    private long numero_control;
    private String nombre;
    private String apellidop;
    private String apellidom;
    private String email;
    private long telefono;
    private String fecha_nacimiento;
    private String sexo;
    private String calle;
    private String numero_ext;
    private String numero_int;
    private String colonia;
    private String password;
    private String estatus;
    private int semestre;
    private int localidades_idlocalidades;
    private int rol_idrol;

    public Alumnos(long numero_control, String nombre, String apellidop, String apellidom, String email, long telefono, String fecha_nacimiento, String sexo, String calle, String numero_ext, String numero_int, String colonia, String password, String estatus, int semestre, int localidades_idlocalidades, int rol_idrol) {
        this.numero_control = numero_control;
        this.nombre = nombre;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.email = email;
        this.telefono = telefono;
        this.fecha_nacimiento = fecha_nacimiento;
        this.sexo = sexo;
        this.calle = calle;
        this.numero_ext = numero_ext;
        this.numero_int = numero_int;
        this.colonia = colonia;
        this.password = password;
        this.estatus = estatus;
        this.semestre = semestre;
        this.localidades_idlocalidades = localidades_idlocalidades;
        this.rol_idrol = rol_idrol;
    }

    public long getNumero_control() {
        return numero_control;
    }

    public void setNumero_control(long numero_control) {
        this.numero_control = numero_control;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getNumero_ext() {
        return numero_ext;
    }

    public void setNumero_ext(String numero_ext) {
        this.numero_ext = numero_ext;
    }

    public String getNumero_int() {
        return numero_int;
    }

    public void setNumero_int(String numero_int) {
        this.numero_int = numero_int;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }

    public int getLocalidades_idlocalidades() {
        return localidades_idlocalidades;
    }

    public void setLocalidades_idlocalidades(int localidades_idlocalidades) {
        this.localidades_idlocalidades = localidades_idlocalidades;
    }

    public int getRol_idrol() {
        return rol_idrol;
    }

    public void setRol_idrol(int rol_idrol) {
        this.rol_idrol = rol_idrol;
    }
}

