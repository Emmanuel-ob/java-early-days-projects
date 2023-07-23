/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package EntityPackages;

import java.util.Collection;
import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;
import javax.ejb.FinderException;

/**
 *
 * @author Obute
 */
public interface CentresLocalHome extends EJBLocalHome {

    EntityPackages.CentresLocal findByPrimaryKey(java.lang.Integer key)  throws FinderException;
    
    EntityPackages.CentresLocal create(java.lang.Integer key)  throws CreateException;

    Collection findByCentreId(Integer centreId) throws FinderException;

    Collection findByCentreName(String centreName) throws FinderException;

}
