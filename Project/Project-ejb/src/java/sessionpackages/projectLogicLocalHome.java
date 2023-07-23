/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;

/**
 *
 * @author Admin
 */
public interface projectLogicLocalHome extends EJBLocalHome {
    
    sessionpackages.projectLogicLocal create()  throws CreateException;

}
