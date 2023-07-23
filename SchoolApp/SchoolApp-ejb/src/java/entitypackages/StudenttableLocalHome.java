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
public interface StudenttableLocalHome extends EJBLocalHome {

    entitypackages.StudenttableLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.StudenttableLocal create(java.lang.String key)  throws CreateException;

    Collection findByStudentId(String studentId) throws FinderException;

    Collection findBySurName(String surName) throws FinderException;

    Collection findByOtherNames(String otherNames) throws FinderException;

    Collection findByFaculty(String faculty) throws FinderException;

    Collection findByDepartment(String department) throws FinderException;

    Collection findByCourse(String course) throws FinderException;

    Collection findByLevel(String level) throws FinderException;

}
