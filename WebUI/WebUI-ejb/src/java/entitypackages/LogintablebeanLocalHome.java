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
 * @author Uche
 */
public interface LogintablebeanLocalHome extends EJBLocalHome {

    entitypackages.LogintablebeanLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.LogintablebeanLocal create(java.lang.String key)  throws CreateException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByName(String name) throws FinderException;

    Collection findByPassword(String password) throws FinderException;

}
