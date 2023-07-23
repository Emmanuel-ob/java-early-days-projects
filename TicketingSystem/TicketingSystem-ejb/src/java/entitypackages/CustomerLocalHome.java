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
public interface CustomerLocalHome extends EJBLocalHome {

    entitypackages.CustomerLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.CustomerLocal create(java.lang.String key)  throws CreateException;

    Collection findByDeviceNo(String deviceNo) throws FinderException;

    Collection findByFirstName(String firstName) throws FinderException;

    Collection findByLastName(String lastName) throws FinderException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByPhoneNumber(String phoneNumber) throws FinderException;

    Collection findByAddress() throws FinderException;

}
