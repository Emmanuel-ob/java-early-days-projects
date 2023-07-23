/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.LogintableLocal;
import entitypackages.LogintableLocalHome;
import entitypackages.TasktableLocal;
import entitypackages.TasktableLocalHome;
import entitypackages.TeamLocal;
import entitypackages.TeamLocalHome;
import helperpackages.loginHelper;
import helperpackages.taskHelper;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.CreateException;
import javax.ejb.FinderException;
import javax.ejb.RemoveException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Admin
 */
public class projectLogicBean implements SessionBean {
    
    private SessionContext context;
    TeamLocalHome teamlh = null;
    TasktableLocalHome taskTablelh = null;
    LogintableLocalHome loginTablelh = null;
    
    // <editor-fold defaultstate="collapsed" desc="EJB infrastructure methods. Click the + sign on the left to edit the code.">;

    // TODO Add code to acquire and use other enterprise resources (DataSource, JMS, enterprise bean, Web services)
    // TODO Add business methods or web service operations

    /**
     * @see javax.ejb.SessionBean#setSessionContext(javax.ejb.SessionContext)
     */
    public void setSessionContext(SessionContext aContext) {
        context = aContext;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbActivate()
     */
    public void ejbActivate() {
       teamlh = lookupTeamBean();
       taskTablelh = lookupTasktableBean();
       loginTablelh = lookupLogintableBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
     teamlh = null;
     taskTablelh = null;
     loginTablelh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
      teamlh = null;
      taskTablelh = null;
      loginTablelh = null;
    }
    
    // </editor-fold>;

    /**
     * See section 7.10.3 of the EJB 2.0 specification
     * See section 7.11.3 of the EJB 2.1 specification
     */
    public void ejbCreate() {
        // TODO implement ejbCreate if necessary, acquire resources
        // This method has access to the JNDI context so resource aquisition
        // spanning all methods can be performed here such as home interfaces
        // and data sources.
        teamlh = lookupTeamBean();
        taskTablelh = lookupTasktableBean();
        loginTablelh = lookupLogintableBean();
    }

    private LogintableLocalHome lookupLogintableBean() {
        try {
            Context c = new InitialContext();
            LogintableLocalHome rv = (LogintableLocalHome) c.lookup("java:comp/env/LogintableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private TasktableLocalHome lookupTasktableBean() {
        try {
            Context c = new InitialContext();
            TasktableLocalHome rv = (TasktableLocalHome) c.lookup("java:comp/env/TasktableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private TeamLocalHome lookupTeamBean() {
        try {
            Context c = new InitialContext();
            TeamLocalHome rv = (TeamLocalHome) c.lookup("java:comp/env/TeamBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String confirmEmail(String email) {
         String result;
        String output;
        LogintableLocal loginTablel = null;
        try {
            loginTablel = loginTablelh.findByPrimaryKey(email);
            output = loginTablel.getEmail();
            result = "Email already exist";
        } catch (FinderException ex) {
            result = "Email does not exist";
            ex.printStackTrace();
        }
        return result;
    }

    public String signUp(String email, String name, String password) {
        String result;
        LogintableLocal loginTablel = null;
        
        try {
            loginTablel = loginTablelh.create(email);
            loginTablel.setName(name);
            loginTablel.setPassword(password);
            result = "User account created successfully";
        } catch (CreateException ex) {
            result = "User account creation failed";
            ex.printStackTrace();
        }
        return result;
        
    }

    public String authenticateUser(String email) {
        LogintableLocal loginTablel = null;
        String output = null;
        try {
            loginTablel = loginTablelh.findByPrimaryKey(email);
             output = loginTablel.getEmail();
        } catch (FinderException ex) {
            output = "Wrong userId/email";
            ex.printStackTrace();
        }
        return output;

    }

     public String validatePassword(String email) {
        String password = null;
        LogintableLocal loginTablel = null;
        try {
            loginTablel = loginTablelh.findByPrimaryKey(email);
            password = loginTablel.getPassword();
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return password;
    }

    public String createTask(String taskName, String description, String teamMember, String taskStatus, String taskCreator) {
        TasktableLocal taskTl = null;
        String result;
        try {
            taskTl = taskTablelh.create(taskName);
            taskTl.setDescription(description);
            taskTl.setTeamMember(teamMember);
            taskTl.setTaskStatus(taskStatus);
            taskTl.setTaskCreator(taskCreator);
            result = "Task created successfully";
        } catch (CreateException ex) {
            result = "Task creation failed";
            ex.printStackTrace();
        }

        return result;
    }

    public taskHelper viewTasks(String taskName) {
        TasktableLocal taskTl = null;
        taskHelper taskH = null;
        try {
            taskTl = taskTablelh.findByPrimaryKey(taskName);
            taskH = new taskHelper(taskTl.getTaskName(), taskTl.getDescription(), taskTl.getTeamMember(), taskTl.getTaskStatus(),
              taskTl.getTaskCreator());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return taskH;
    }

    public String createTeam(String email, String title) {
        String result;
        TeamLocal teamLocal = null;
        try {
            teamLocal = teamlh.create(email);
            teamLocal.setTitle(title);
            result = "TeamMember added successfully";
        } catch (CreateException ex) {
            result = "TeamMember addition failed";
            ex.printStackTrace();
        }
        return result;
    }

    public String updateTask(String taskName, String description, String teamMember, String taskStatus, String taskCreator) {
        TasktableLocal taskTl = null;
        String result;
        try {
            taskTl = taskTablelh.findByPrimaryKey(taskName);
            taskTl.setDescription(description);
            taskTl.setTeamMember(teamMember);
            taskTl.setTaskStatus(taskStatus);
            taskTl.setTaskCreator(taskCreator);
            result = "Task updated successfully";
        } catch (FinderException ex) {
            result = "Task update failed";
            ex.printStackTrace();
        }
        return result;
    }

    public String deleteTask(String taskName) {
      TasktableLocal taskTl = null;
        String result;
        try {
            taskTl = taskTablelh.findByPrimaryKey(taskName);
            taskTl.remove();
            result = "Task updated successfully";
        } catch (Exception ex) {
            result = "Task update failed";
            ex.printStackTrace();
        }
        return result;
    }





    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
