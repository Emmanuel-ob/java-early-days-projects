/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;

/**
 *
 * @author Uche
 */
public interface MyLogicLocalHome extends EJBLocalHome {
    
    sessionpackages.MyLogicLocal create()  throws CreateException;

}
