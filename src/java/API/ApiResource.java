/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package API;

import com.api.ben.Json;
import com.api.ben.Venta;
import java.sql.Time;
import java.util.Date;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author jorge
 */
@Path("api")
public class ApiResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of ApiResource
     */
    public ApiResource() {
    }

    /**
     * Retrieves representation of an instance of API.ApiResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String consultaVenta(@QueryParam("id_venta")int id_venta,
                                @QueryParam("producto") String producto,
                                @QueryParam("precio") double precio){
        //TODO return proper representation object
        
        Venta venta = new Venta();
        
        venta.setIdventa(id_venta);
        venta.setProducto(producto);
        venta.setPrecio(precio);    
        
        Json obj = new Json();
        obj.setVenta(venta);
        
        Gson gson = new Gson();
        String jsonString = gson.toJson(obj);
        
        return jsonString;
    }
    

    /**
     * PUT method for updating or creating an instance of ApiResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
}
