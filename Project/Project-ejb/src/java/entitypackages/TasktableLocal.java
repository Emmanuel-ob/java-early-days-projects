/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface TasktableLocal extends EJBLocalObject {

    String getTaskName();

    void setTaskName(String taskName);

    String getDescription();

    void setDescription(String description);

    String getTeamMember();

    void setTeamMember(String teamMember);

    String getTaskStatus();

    void setTaskStatus(String taskStatus);

    String getTaskCreator();

    void setTaskCreator(String taskCreator);


}
