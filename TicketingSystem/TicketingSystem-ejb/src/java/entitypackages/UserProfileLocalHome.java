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
public interface UserProfileLocalHome extends EJBLocalHome {

    entitypackages.UserProfileLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.UserProfileLocal create(java.lang.String key)  throws CreateException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByPhoneNumber(String phoneNumber) throws FinderException;

    Collection findByAddress(String address) throws FinderException;

    Collection findByDob(String dob) throws FinderException;

}
