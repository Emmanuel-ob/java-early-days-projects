/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.deitel.welcomerestxml;



import java.io.StringWriter;
import javax.ws.rs.GET; // annotation to indicate method uses HTTP GET
import javax.ws.rs.Path; // annotation to specify path of resource
import javax.ws.rs.PathParam; // annotation to get parameters from URI
import javax.ws.rs.Produces; // annotation to specify type of data
import javax.xml.bind.JAXB; // utility class for common JAXB operations

/**
 * REST Web Service
 *
 * @author Uche
 */
@Path("welcome")
public class WelcomeRESTXMLResource {

    // retrieve welcome message
@GET // handles HTTP GET requests
@Path( "{name}" ) // URI component containing parameter
@Produces( "application/xml" ) // response formatted as XML
public String getXml( @PathParam( "name" ) String name )
  {
 String message = "Welcome to JAX-RS web services with REST and " +
 "XML, " + name + "!"; // our welcome message
 StringWriter writer = new StringWriter();

 return writer.toString(); // return XML as String
 } // end method getXml

    
}
