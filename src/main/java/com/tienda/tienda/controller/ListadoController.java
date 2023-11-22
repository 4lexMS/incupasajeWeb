package com.tienda.tienda.controller;

import com.tienda.tienda.domain.Modulounit;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tienda.tienda.services.ModuloService;

@Controller
public class ListadoController {

    private final ModuloService moduloService;

    public ListadoController(ModuloService moduloService) {
        this.moduloService = moduloService;
    }

    @RequestMapping("/")
    public String listadoTienda(Model model) {
        List<Modulounit> destacados = moduloService.buscardestacados();
        model.addAttribute("modulo",destacados);
        return "listado";

    }
}
