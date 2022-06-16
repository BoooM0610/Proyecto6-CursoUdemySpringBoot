package com.cursoudemy.app.models.dao;

import com.cursoudemy.app.models.entity.Cliente;
import org.springframework.data.repository.PagingAndSortingRepository;


public interface IClienteDao extends PagingAndSortingRepository<Cliente, Long>
{

}
