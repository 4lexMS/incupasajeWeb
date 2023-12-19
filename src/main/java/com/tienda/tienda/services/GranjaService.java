package com.tienda.tienda.services;

import com.tienda.tienda.domain.Granja;
import java.util.List;
import org.springframework.stereotype.Service;
import com.tienda.tienda.repository.GranjaRepository;

@Service
public class GranjaService {

    private final GranjaRepository granjarepository;

    public GranjaService(GranjaRepository tiendarepository) {
        this.granjarepository = tiendarepository;
    }

     public List<Granja> listargranjas() {
        return granjarepository.buscarTodos();
    }
     
     public List<Granja> bucarxnombre(String consulta){
     return granjarepository.findByNombreContaining(consulta);
     }
     
     public Granja guardar(Granja granja){
     return granjarepository.save(granja);
     }
}
