/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.taskHelper;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface projectLogicLocal extends EJBLocalObject {

    String signUp(String email, String name, String password);

    String authenticateUser(String email);

    String validatePassword(String email);

    String createTask(String taskName, String description, String teamMember, String taskStatus, String taskCreator);

    taskHelper viewTasks(String taskName);

    String createTeam(String email, String title);

    String updateTask(String taskName, String description, String teamMember, String taskStatus, String taskCreator);

    String deleteTask(String taskName);

    String confirmEmail(String email);
    
}
