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
public interface SubjectLocalHome extends EJBLocalHome {

    EntityPackages.SubjectLocal findByPrimaryKey(java.lang.Integer key)  throws FinderException;
    
    EntityPackages.SubjectLocal create(java.lang.Integer key)  throws CreateException;

    Collection findBySubjectId(Integer subjectId) throws FinderException;

    Collection findBySubjectName(String subjectName) throws FinderException;

    Collection findByCategoryId(int categoryId) throws FinderException;

}
