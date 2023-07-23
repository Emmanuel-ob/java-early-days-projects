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
public interface EmployeerecordsLocalHome extends EJBLocalHome {

    entitypackages.EmployeerecordsLocal findByPrimaryKey(java.lang.Integer key)  throws FinderException;
    
    entitypackages.EmployeerecordsLocal create(java.lang.Integer key)  throws CreateException;

    Collection findByStaffId(Integer staffId) throws FinderException;

    Collection findBySurName(String surName) throws FinderException;

    Collection findByOtherNames(String otherNames) throws FinderException;

    Collection findBySex(String sex) throws FinderException;

    Collection findByAge(int age) throws FinderException;

    Collection findByEmail(String email) throws FinderException;

    Collection findByDepartment(String department) throws FinderException;

    Collection findByAll() throws FinderException;
   


}
