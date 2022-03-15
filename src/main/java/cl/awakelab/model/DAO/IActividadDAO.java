package cl.awakelab.model.DAO;

import cl.awakelab.model.entity.Actividades;

import java.text.ParseException;
import java.util.List;

public interface IActividadDAO {
    void createCapacitacion(Actividades actividades);
    List<Actividades> readCapacitaciones();
    Actividades readOne(Long idActividades);
    void update(Actividades actividades) throws ParseException;
    void delete(Long idActividades);
    List<Actividades> buscarPorNombre(String txt);
}
