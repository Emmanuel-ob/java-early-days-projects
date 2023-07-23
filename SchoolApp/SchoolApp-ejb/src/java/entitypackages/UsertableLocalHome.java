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
public interface UsertableLocalHome extends EJBLocalHome {

    entitypackages.UsertableLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.UsertableLocal create(java.lang.String key)  throws CreateException;

    Collection findByUserId(String userId) throws FinderException;

    Collection findByPassword(String password) throws FinderException;

    Collection findByRole(String role) throws FinderException;

    Collection findByStatus(String status) throws FinderException;

    Collection findByAll() throws FinderException;

}
