/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.ejb.Stateless;
import javax.ejb.LocalBean;

/**
 *
 * @author Obute
 */
@Stateless
@LocalBean
public class CustomerManager {

    public int getCustomerCount() {
        return 27;
    }

    public int getCustomerCountByRegion(String region) {
        if (region.equalsIgnoreCase("east")) {
            return 15;
        } else if (region.equalsIgnoreCase("west")) {
            return 12;
        } else {
            return 0;
        }
    }
    
}
