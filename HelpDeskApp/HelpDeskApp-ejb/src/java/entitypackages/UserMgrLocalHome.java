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
 * @author Obute
 */
public interface UserMgrLocalHome extends EJBLocalHome {

    entitypackages.UserMgrLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.UserMgrLocal create(java.lang.String key)  throws CreateException;

    Collection findByUserId(Integer userId) throws FinderException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByPassword(String password) throws FinderException;

    Collection findByRole(String role) throws FinderException;

    Collection findByStatus(String status) throws FinderException;
    
    Collection findByName(String name) throws FinderException;

    Collection findByAll() throws FinderException;

    
}
