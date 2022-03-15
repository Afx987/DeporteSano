package cl.awakelab.service;

import cl.awakelab.model.DAO.ActividadDAOImpl;
import cl.awakelab.model.entity.Actividades;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Service
public class ActividadServiceImpl implements IActividadService {

    @Autowired
    private ActividadDAOImpl actividadDAOImpl;


    @Override
    @Transactional
    public void createCapacitacion(Actividades actividades) {
            actividadDAOImpl.createCapacitacion(actividades);
    }

    @Override
    @Transactional
    public List<Actividades> readCapacitaciones() {
        return actividadDAOImpl.readCapacitaciones();
    }

    @Override
    @Transactional
    public Actividades readOne(Long idActividad) {
        return actividadDAOImpl.readOne(idActividad);
    }

    @Override
    @Transactional
    public void update(Actividades actividades) {

        actividadDAOImpl.update(actividades);
    }

    @Override
    @Transactional
    public void delete(Long idActividad) {
        actividadDAOImpl.delete(idActividad);
    }

    @Override
    @Transactional
    public List<Actividades> buscarPorNombre(String txt) {
        return actividadDAOImpl.buscarPorNombre(txt);
    }
}
