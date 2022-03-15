package cl.awakelab.model.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name="actividades")
public class Actividades {

    @Id
//    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column
    private Long idActividad;
    @Column
    private String nombre;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    private String horario;
    private String profesor;
    private String ubicacion;
    private String categoria;


    public Actividades(Long idActividad, String nombre, Date fecha, String horario, String profesor, String ubicacion, String categoria) {
        this.idActividad = idActividad;
        this.nombre = nombre;
        this.fecha = fecha;
        this.horario = horario;
        this.profesor = profesor;
        this.ubicacion = ubicacion;
        this.categoria = categoria;
    }

    public Actividades() {

    }

    public Long getIdActividad() {
        return idActividad;
    }

    public void setIdActividad(Long idActividad) {
        this.idActividad = idActividad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getProfesor() {
        return profesor;
    }

    public void setProfesor(String profesor) {
        this.profesor = profesor;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return "Actividades{" +
                "idActividad=" + idActividad +
                ", nombre='" + nombre + '\'' +
                ", fecha=" + fecha +
                ", horario='" + horario + '\'' +
                ", profesor='" + profesor + '\'' +
                ", ubicacion='" + ubicacion + '\'' +
                ", categoria='" + categoria + '\'' +
                '}';
    }
}
