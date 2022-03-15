package cl.awakelab.controller;


import cl.awakelab.model.entity.Actividades;
import cl.awakelab.service.IActividadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class ActividadController {

    @Autowired
    private IActividadService actividadService;

    //Crear
    @RequestMapping(value= "/crearActividad" ,  method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView crearActividad(@ModelAttribute Actividades actividad){
        ModelAndView vista = new ModelAndView("crearActividad");
        //Se valida la vista en caso que no se cree la actividad
        if(actividad.getIdActividad() == null ) {
            vista.addObject("actividad", actividad);
            //Si no existe algun campo valida crear la actividad
            if(actividad.getNombre()!=null && actividad.getFecha()!=null && actividad.getCategoria()!=null && actividad.getProfesor()!=null && actividad.getHorario()!=null &&
                    actividad.getUbicacion()!=null)
            {
                actividadService.createCapacitacion(actividad);
            }
        }
        return vista;
    }

    @RequestMapping(value="/busquedaNombre", method=RequestMethod.GET)
    public ModelAndView busquedaNombre(@RequestParam("nombre") String nombre){
        List<Actividades> actividad = actividadService.buscarPorNombre(nombre);
        return new ModelAndView("actividades", "actividades", actividad);
    }

    //Listar todos
    @RequestMapping(value = "/actividades", method = RequestMethod.GET)
    public ModelAndView listarTodas(){
        List<Actividades> actividades = actividadService.readCapacitaciones();
        return new ModelAndView("actividades", "actividades", actividades);
    }

    //Listar por actividad
    @RequestMapping(value = "/lugar", method = RequestMethod.GET)
    public ModelAndView listarLugar(Long idActividad){
        List<Actividades> actividadLugar = (List<Actividades>) actividadService.readOne(idActividad);
        return new ModelAndView("actividadLugar", "actividadLugar", actividadLugar);
    }

    //Get by id por Actividad
    @GetMapping("/actividad")
    public Actividades leerActividad(Map<Long, Object> map){
        Actividades actividad = new Actividades();
        map.put(actividad.getIdActividad(), actividad);
        return actividad;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(       Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true, 10));
    }

    //Actualizar

    @PostMapping("/modificarActividad")
    public String modificarActividad(@ModelAttribute("actividad") Actividades actividad) {


        actividadService.update(actividad);

        return "redirect:/actividades";
    }

    @RequestMapping("/editar")
    public ModelAndView editarActividad(@RequestParam Long idActividad){
        ModelAndView vista = new ModelAndView("editarActividad");
        Actividades actividad = actividadService.readOne(idActividad);
        vista.addObject("actividad", actividad);
        return vista;
    }

    //Borrar

    @GetMapping("/borrar")
    public String deleteCustomer(@RequestParam("idActividad") Long idActividad) {
        actividadService.delete(idActividad);
        return "redirect:/actividades";
    }

}
