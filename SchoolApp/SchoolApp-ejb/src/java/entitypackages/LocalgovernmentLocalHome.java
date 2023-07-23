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
public interface LocalgovernmentLocalHome extends EJBLocalHome {

    entitypackages.LocalgovernmentLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.LocalgovernmentLocal create(java.lang.String key)  throws CreateException;

    Collection findByLgaId(String lgaId) throws FinderException;

    Collection findByLgaName(String lgaName) throws FinderException;

    Collection findByState(String state) throws FinderException;

    Collection findByAll() throws FinderException;

}
