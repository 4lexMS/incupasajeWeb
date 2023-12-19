package com.tienda.tienda.repository;

import com.tienda.tienda.domain.Ciudad;
import com.tienda.tienda.domain.Granja;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

//public interface GranjaRepository extends JpaRepository<Modulounit, Integer>{
public interface GranjaRepository extends JpaRepository<Granja, Integer> {

    @Query("select g from Granja g order by g.nombre")
    List<Granja> buscarTodos();
    
   List<Granja>findByNombreContaining(String consulta);
  
}
