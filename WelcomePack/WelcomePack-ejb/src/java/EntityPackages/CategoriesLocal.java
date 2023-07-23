/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package EntityPackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Obute
 */
public interface CategoriesLocal extends EJBLocalObject {

    Integer getCategoryId();

    void setCategoryId(Integer categoryId);

    String getCategoryName();

    void setCategoryName(String categoryName);


}
