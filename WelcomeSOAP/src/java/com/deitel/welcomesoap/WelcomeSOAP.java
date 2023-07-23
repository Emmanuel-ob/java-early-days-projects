/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.deitel.welcomesoap;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Uche
 */
@WebService(serviceName = "WelcomeSOAP")
public class WelcomeSOAP {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "welcome")
    public String welcome(@WebParam(name = "name") String name) {
        return "Welcome to JAX-WS web services with SOAP, " + name + " !";
    }
}
