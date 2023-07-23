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
public interface StaffrecordpracticeLocalHome extends EJBLocalHome {

    entitypackages.StaffrecordpracticeLocal findByPrimaryKey(java.lang.Integer key)  throws FinderException;
    
    entitypackages.StaffrecordpracticeLocal create(java.lang.Integer key)  throws CreateException;

    Collection findById(Integer id) throws FinderException;

    Collection findByLastName(String lastName) throws FinderException;

    Collection findByFirstName(String firstName) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByAge(int age) throws FinderException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByDepartment(String department) throws FinderException;

}
