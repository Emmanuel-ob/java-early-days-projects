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
public interface TasktableLocalHome extends EJBLocalHome {

    entitypackages.TasktableLocal findByPrimaryKey(java.lang.String key)  throws FinderException;
    
    entitypackages.TasktableLocal create(java.lang.String key)  throws CreateException;

    Collection findByTaskName(String taskName) throws FinderException;

    Collection findByDescription(String description) throws FinderException;

    Collection findByTeamMember(String teamMember) throws FinderException;

    Collection findByTaskStatus(String taskStatus) throws FinderException;

    Collection findByTaskCreator(String taskCreator) throws FinderException;

}
