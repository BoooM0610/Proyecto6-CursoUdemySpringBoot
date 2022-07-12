package com.cursoudemy.app.models.dao;

import com.cursoudemy.app.models.entity.Factura;
import org.springframework.data.repository.CrudRepository;

public interface IFacturaDao extends CrudRepository<Factura, Long>
{

}
