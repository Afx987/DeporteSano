package cl.awakelab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SolucionesController {

    @GetMapping("/Soluciones")
    public ModelAndView mostrarSoluciones() {

        return new ModelAndView("soluciones");

    }
}
