package cl.awakelab.model.DAO;

import cl.awakelab.model.entity.Actividades;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;



@Repository
public class ActividadDAOImpl extends BaseDAO implements IActividadDAO {


    @Autowired
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template){
        this.template = template;
    }

    @Override
    public void createCapacitacion(Actividades actividades) {
        String sql = "insert into actividades (nombre, fecha , horario, profesor, ubicacion, categoria) values (?, ?, ?, ?, ?, ?)";
        template.update(sql, new Object[] {actividades.getNombre(), actividades.getFecha(), actividades.getHorario(),actividades.getProfesor(),actividades.getUbicacion(),actividades.getCategoria()});
    }

    @Override
    public List<Actividades> readCapacitaciones() {

        String sql = "select idActividad, nombre, fecha , horario, profesor, ubicacion, categoria from actividades";

        return template.query(sql, new CapacitacionRowMapper());
    }

    @Override
    public Actividades readOne(Long idActividades) {
        String sql = "select idActividad, nombre, fecha , horario, profesor, ubicacion, categoria from actividades where idActividad = ? ";
        return template.queryForObject(sql, new Object[] {idActividades}, new CapacitacionRowMapper());
    }

    @Override
    public void update(Actividades actividades)  {
       /* SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date = sdf.parse(String.valueOf(actividades.getFecha()));
        java.sql.Date sqlDate_updated = new java.sql.Date(date.getTime());
        System.out.println("sqlDate_updated = " + sqlDate_updated);*/
        String sql = "update actividades set nombre = ?, fecha = ?, horario = ?, profesor = ?, ubicacion = ?, categoria = ? where idActividad = ?";
        template.update(sql, new Object[] {actividades.getNombre(), actividades.getFecha(), actividades.getHorario(),actividades.getProfesor(),actividades.getUbicacion(),actividades.getCategoria(), actividades.getIdActividad()});
    }

    @Override
    public void delete(Long idActividades) {
        String sql = "delete from actividades where idActividad = ?";
        template.update(sql, new Object[] {idActividades});

    }

    @Override
    public List<Actividades> buscarPorNombre(String txt) {
            String txtTrim = txt.trim();
            String sql = "SELECT * FROM actividades where lower(nombre) LIKE '%"+txtTrim+"%'";
            return getJdbcTemplate().query(sql, new CapacitacionRowMapper());
        }
    }

    class CapacitacionRowMapper implements RowMapper<Actividades> {
        public Actividades mapRow(ResultSet rs, int rowNum) throws SQLException {
            return new Actividades(rs.getLong("idActividad"), rs.getString("nombre"), rs.getDate("fecha"), rs.getString("horario"),
                    rs.getString("profesor"), rs.getString("ubicacion"), rs.getString("categoria"));
        }
    }

