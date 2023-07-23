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
public interface SemesterregistrationLocalHome extends EJBLocalHome {

    entitypackages.SemesterregistrationLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.SemesterregistrationLocal create(java.lang.String key)  throws CreateException;

    Collection findByUserId(String userId) throws FinderException;

    Collection findByFaculty(String faculty) throws FinderException;

    Collection findByDepartment(String department) throws FinderException;

    Collection findByCourseOfStudy(String courseOfStudy) throws FinderException;

    Collection findByLevel(String level) throws FinderException;

    Collection findBySession(String session) throws FinderException;

    Collection findBySemester(String semester) throws FinderException;

}
