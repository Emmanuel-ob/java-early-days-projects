/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;

/**
 *
 * @author Obute
 */
public interface TicketLogicLocalHome extends EJBLocalHome {
    
    sessionpackages.TicketLogicLocal create()  throws CreateException;

}
