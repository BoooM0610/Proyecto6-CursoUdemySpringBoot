package com.cursoudemy.app.controllers;

import com.cursoudemy.app.models.entity.Cliente;
import com.cursoudemy.app.models.entity.Factura;
import com.cursoudemy.app.models.entity.ItemFactura;
import com.cursoudemy.app.models.entity.Producto;
import com.cursoudemy.app.models.service.IClienteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/factura")
@SessionAttributes("factura")
public class FacturaController
{
    @Autowired
    private IClienteService clienteService;

    private final Logger log = LoggerFactory.getLogger(getClass());

    @GetMapping("/form/{clienteId}")
    public String crear(@PathVariable(value = "clienteId") Long clienteId, Map<String, Object> model, RedirectAttributes flash)
    {
        Cliente cliente = clienteService.findOne(clienteId);
        if (cliente == null)
        {
            flash.addAttribute("error", "El cliente no exite en la Base de Datos");

            return "redirect:/listar";
        }
        Factura factura = new Factura();
        factura.setCliente(cliente);

        model.put("factura", factura);
        model.put("titulo", "Crear Factura");

        return "factura/form";
    }

    @GetMapping(value = "/cargar-productos/{term}", produces = { "application/json" })
    public @ResponseBody List<Producto> cargarProductos(@PathVariable(value = "term") String term)
    {
        return clienteService.findByNombre(term);
    }

    @PostMapping("/form")
    public String guardar(Factura factura, @RequestParam(name = "item_id[]", required = false) Long[] itemId,
                          @RequestParam(name = "cantidad[]", required = false) Integer[] cantidad,
                          RedirectAttributes flash, SessionStatus status)
    {
        for (int i = 0; i < itemId.length; i++)
        {
            Producto producto = clienteService.findProductoById(itemId[i]);

            ItemFactura itemFactura = new ItemFactura();
            itemFactura.setCantidad(cantidad[i]);
            itemFactura.setProducto(producto);
            factura.addItemFactura(itemFactura);

            log.info("ID: " + itemId[i].toString() + ", cantidad: " + cantidad[i].toString());
        }
        clienteService.saveFactura(factura);

        status.setComplete();

        flash.addFlashAttribute("success", "Factura creada con éxito!");

        return "redirect:/ver/" + factura.getCliente().getId();
    }
}
