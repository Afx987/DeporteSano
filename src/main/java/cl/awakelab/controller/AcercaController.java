package cl.awakelab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AcercaController {

    @GetMapping("/Acerca")
    public ModelAndView mostrarAcerca() {

        return new ModelAndView("acerca");

    }
}
