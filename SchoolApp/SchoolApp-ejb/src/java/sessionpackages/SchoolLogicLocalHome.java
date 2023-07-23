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
public interface SchoolLogicLocalHome extends EJBLocalHome {
    
    sessionpackages.SchoolLogicLocal create()  throws CreateException;

}
