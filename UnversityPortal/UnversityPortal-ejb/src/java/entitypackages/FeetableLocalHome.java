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
public interface FeetableLocalHome extends EJBLocalHome {

    entitypackages.FeetableLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.FeetableLocal create(java.lang.String key)  throws CreateException;

    Collection findByUserId(String userId) throws FinderException;

    Collection findByPin(String pin) throws FinderException;

    Collection findByFeestatus(String feestatus) throws FinderException;

}
