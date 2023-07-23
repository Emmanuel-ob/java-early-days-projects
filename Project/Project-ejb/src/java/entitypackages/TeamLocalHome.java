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
public interface TeamLocalHome extends EJBLocalHome {

    entitypackages.TeamLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.TeamLocal create(java.lang.String key)  throws CreateException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByTitle(String title) throws FinderException;

}
