/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import java.util.Collection;
import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;
import javax.ejb.FinderException;

/**
 *
 * @author Admin
 */
public interface StateLocalHome extends EJBLocalHome {

    entitypackages.StateLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.StateLocal create(java.lang.String key)  throws CreateException;

    Collection findByStateId(String stateId) throws FinderException;

    Collection findByState(String state) throws FinderException;

    Collection findByAll() throws FinderException;

}
