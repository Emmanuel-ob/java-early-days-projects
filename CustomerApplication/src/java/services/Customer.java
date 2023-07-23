/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package services;

import beans.CustomerManager;
import javax.ejb.EJB;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author Uche
 */
@Path("customer")
public class Customer {
    
    @EJB
    CustomerManager manager;
    
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String getCustomerCount(){
        return "<h3> Customer count: " + manager.getCustomerCount() + "</h3>";
    } 
}
