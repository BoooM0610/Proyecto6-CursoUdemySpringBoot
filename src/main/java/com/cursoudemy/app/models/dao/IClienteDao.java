package com.cursoudemy.app.models.dao;

import com.cursoudemy.app.models.entity.Cliente;

import java.util.List;

public interface IClienteDao
{
    public List<Cliente> findAll();
}
