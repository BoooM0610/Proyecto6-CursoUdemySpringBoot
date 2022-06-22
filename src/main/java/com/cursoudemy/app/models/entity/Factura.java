package com.cursoudemy.app.models.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "facturas")
public class Factura implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String descripcion;

    private String observacion;

    @Temporal(TemporalType.DATE)
    @Column(name = "create_at")
    private Date createAt;

    @ManyToOne(fetch = FetchType.LAZY)
    private Cliente cliente;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "factura_id")
    private List<ItemFactura> items;

    public Factura()
    {
        this.items = new ArrayList<ItemFactura>();
    }

    @PrePersist
    public void prePersist()
    {
        this.createAt = new Date();
    }

    public void addItemFactura(ItemFactura item)
    {
        this.items.add(item);
    }

    public Double getTotal()
    {
        Double total = 0.0;
        int size = items.size();

        for (int i = 0; i < size; i++)
        {
            total += items.get(i).caclularImporte();
        }

        return total;
    }

    private static final long serialVersionUID = 1L;
}
