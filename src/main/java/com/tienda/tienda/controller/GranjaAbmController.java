package com.tienda.tienda.controller;

import com.tienda.tienda.domain.Granja;
import com.tienda.tienda.services.CiudadService;
import com.tienda.tienda.services.GranjaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GranjaAbmController {

    private final CiudadService ciudadservice;
    private final GranjaService granjaservice;

    public GranjaAbmController(CiudadService ciudadservice, GranjaService granjaservice) {
        this.ciudadservice = ciudadservice;
        this.granjaservice = granjaservice;
    }

    @RequestMapping("/granja/crear")
    public String mostrarFormAlta(Model model) {
        model.addAttribute("ciudad", ciudadservice.bucartodos());
        model.addAttribute("granja", new Granja());
        return "formGranja";
    }

    @PostMapping("/granja/guardar")
    public String guardar(Granja granja) {
        granjaservice.guardar(granja);
        return "redirect:/";
    }

}
