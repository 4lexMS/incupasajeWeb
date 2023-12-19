package com.tienda.tienda.services;

import com.tienda.tienda.domain.Ciudad;
import com.tienda.tienda.repository.CiudadRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class CiudadService {

    private final CiudadRepository ciudadrepository;

    public CiudadService(CiudadRepository ciudadRepository) {
        this.ciudadrepository = ciudadRepository;
    }

    public List<Ciudad> bucartodos() {
        return ciudadrepository.findAll();
    }
}
