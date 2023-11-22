package com.tienda.tienda.services;

import com.tienda.tienda.domain.Modulounit;
import com.tienda.tienda.repository.TiendaRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class ModuloService {
    private final TiendaRepository tiendarepository;

    public ModuloService(TiendaRepository tiendarepository) {
        this.tiendarepository = tiendarepository;
    }
    

    public List<Modulounit> buscardestacados() {
        return tiendarepository.findAll();
    }
}
