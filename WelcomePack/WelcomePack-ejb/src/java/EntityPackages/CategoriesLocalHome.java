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
public interface CategoriesLocalHome extends EJBLocalHome {

    EntityPackages.CategoriesLocal findByPrimaryKey(java.lang.Integer key)  throws FinderException;
    
    EntityPackages.CategoriesLocal create(java.lang.Integer key)  throws CreateException;

    Collection findByCategoryId(Integer categoryId) throws FinderException;

    Collection findByCategoryName(String categoryName) throws FinderException;

}
