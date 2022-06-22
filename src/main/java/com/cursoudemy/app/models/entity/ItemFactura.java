package com.cursoudemy.app.models.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "facturas_items")
public class ItemFactura implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer cantidad;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "producto_id")
    private Producto producto;

    public Double caclularImporte()
    {
        return cantidad.doubleValue() * producto.getPrecio();
    }

    private static final long serialVersionUID = 1L;
}
