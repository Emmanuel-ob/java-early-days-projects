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
public interface UserprofileLocalHome extends EJBLocalHome {

    entitypackages.UserprofileLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.UserprofileLocal create(java.lang.String key)  throws CreateException;

    Collection findByCustomerId(Integer customerId) throws FinderException;

    Collection findByUserId(String userId) throws FinderException;

    Collection findByPhoneNumber(String phoneNumber) throws FinderException;

    Collection findByAddress(String address) throws FinderException;

    Collection findByDob(String dob) throws FinderException;

}
