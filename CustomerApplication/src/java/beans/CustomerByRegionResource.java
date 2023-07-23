/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import javax.ejb.EJB;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.FormParam;
import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Uche
 */
@Path("customerByRegion")
public class CustomerByRegionResource {

    @Context
    private UriInfo context;
    
    @EJB
    CustomerManager manager;

    /**
     * Creates a new instance of CustomerByRegionResource
     */
    public CustomerByRegionResource() {
    }
    
    
    @GET
    @Path("byRegion")
    @Produces(MediaType.TEXT_HTML)
    public String getCustomerByRegionGet(@QueryParam("r")@DefaultValue("west")String region) {
        return "<h3>Customer by Region " +manager.getCustomerCountByRegion(region)+ "</h3>";
        
    //QueryParam Example: http://localhost:8080/CustomerApplication/webresources/customerByRegion/byRegion?r=west
    }
    
    @GET
    @Path("{r}")
    @Produces(MediaType.TEXT_HTML)
    public String getCustomerByRegionPath(@PathParam("r")@DefaultValue("west")String region) {
        return "<h3>Customer by Region " +manager.getCustomerCountByRegion(region)+ "</h3>";
    //PathParam URL Example: http://localhost:8080/CustomerApplication/webresources/customerByRegion/west
    }
    
    @GET
    @Produces("text/html")
    public String getHtml() {
        return "<h3>Customer by Region " +manager.getCustomerCount()+ "</h3>";
    //GET URL Example: http://localhost:8080/CustomerApplication/webresources/customerByRegion
    }

    @POST
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Produces(MediaType.TEXT_HTML)
    public String getCustomerByRegionPost(@FormParam("region")String r) {
        
        return "<h3>Customer by Region " +manager.getCustomerCountByRegion(r)+ "</h3>";    }
   //POST URL Example: http://localhost:8080/CustomerApplication
}
