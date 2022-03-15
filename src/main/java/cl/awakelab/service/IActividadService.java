package cl.awakelab.service;

import cl.awakelab.model.entity.Actividades;

import java.util.List;

public interface IActividadService {
    void createCapacitacion(Actividades actividades);
    List<Actividades> readCapacitaciones();
    Actividades readOne(Long idActividad);
    void update(Actividades actividades);
    void delete(Long idActividad);
    List<Actividades> buscarPorNombre(String txt);
}
