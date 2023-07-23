/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Admin
 */
public class taskHelper {
private String taskName;
private String description;
private String teamMembers;
private String taskStatus;
private String taskCreator;

    public taskHelper(String taskName, String description, String teamMembers, String taskStatus, String taskCreator) {
        this.taskName = taskName;
        this.description = description;
        this.teamMembers = teamMembers;
        this.taskStatus = taskStatus;
        this.taskCreator = taskCreator;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTaskCreator() {
        return taskCreator;
    }

    public void setTaskCreator(String taskCreator) {
        this.taskCreator = taskCreator;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getTaskStatus() {
        return taskStatus;
    }

    public void setTaskStatus(String taskStatus) {
        this.taskStatus = taskStatus;
    }

    public String getTeamMembers() {
        return teamMembers;
    }

    public void setTeamMembers(String teamMembers) {
        this.teamMembers = teamMembers;
    }


}
