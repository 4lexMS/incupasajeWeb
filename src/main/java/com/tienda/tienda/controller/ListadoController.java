package com.tienda.tienda.controller;

import com.tienda.tienda.domain.Ciudad;
import com.tienda.tienda.domain.Granja;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tienda.tienda.services.GranjaService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ListadoController {

    private final GranjaService moduloService;

    public ListadoController(GranjaService moduloService) {
        this.moduloService = moduloService;
    }

    @RequestMapping("/")
    public String listadoprincipal(Model modelo) {
        return "listado";

    }

    @RequestMapping("/informacion")
    public String informacion(Model info) {
        return "informacion";

    }

    @RequestMapping("/postulate")
    public String postular() {
        return "postulate";

    }

    @RequestMapping("/contacto")
    public String contactoUbi() {
        return "contacto";

    }

    @RequestMapping("/granjas")
    public String listadoGranjas(Model model) {
        // List<Modulounit> destacados = moduloService.buscardestacados();
        List<Granja> granja = moduloService.listargranjas();
        model.addAttribute("modulo", granja);
        return "granjas";

    }
    
    @RequestMapping("/buscar")
    public String buscargranja(@RequestParam("q") String consulta,Model model){
    List<Granja> granja = moduloService.bucarxnombre(consulta);
    model.addAttribute("modulo", granja);
    return "granjas";
    }
}
