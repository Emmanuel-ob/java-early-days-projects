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
public interface LogintableLocalHome extends EJBLocalHome {

    entitypackages.LogintableLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.LogintableLocal create(java.lang.String key)  throws CreateException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByName(String name) throws FinderException;

    Collection findByPassword(String password) throws FinderException;

}
