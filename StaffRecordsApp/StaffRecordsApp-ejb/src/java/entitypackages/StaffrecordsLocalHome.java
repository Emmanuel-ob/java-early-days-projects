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
public interface StaffrecordsLocalHome extends EJBLocalHome {

    entitypackages.StaffrecordsLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.StaffrecordsLocal create(java.lang.String key)  throws CreateException;

    Collection findById(String id) throws FinderException;

    Collection findByLastName(String lastName) throws FinderException;

    Collection findByFirstName(String firstName) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByAge(int age) throws FinderException;

    Collection findByDepartment(String department) throws FinderException;

}
