package cl.awakelab.model.repository;

import cl.awakelab.model.entity.Actividades;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IActividadRepository extends JpaRepository<Actividades, Long> {

    List<Actividades> getByUbicacion(String ubicacion);
}
