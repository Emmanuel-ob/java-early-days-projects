/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.StaffrecordsLocal;
import entitypackages.StaffrecordsLocalHome;
import helperpackage.StaffHelper;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.CreateException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Admin
 */
public class CodeLogicBean implements SessionBean {
    
    private SessionContext context;
    StaffrecordsLocalHome staffRecordslh = null;
    
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
     staffRecordslh = lookupStaffrecordsBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        staffRecordslh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
        staffRecordslh = null;
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
        staffRecordslh = lookupStaffrecordsBean();
    }

    private StaffrecordsLocalHome lookupStaffrecordsBean() {
        try {
            Context c = new InitialContext();
            StaffrecordsLocalHome rv = (StaffrecordsLocalHome) c.lookup("java:comp/env/StaffrecordsBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public void createRecords(String id, String lastName, String firstName, String sex, int age, String department) {

        StaffrecordsLocal staffRecordsl = null;
        try {
            staffRecordsl = staffRecordslh.create(id);
            staffRecordsl.setLastName(lastName);
            staffRecordsl.setFirstName(firstName);
            staffRecordsl.setSex(sex);
            staffRecordsl.setAge(age);
            staffRecordsl.setDepartment(department);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }

    }

    public StaffHelper viewStaff(String id) {
       StaffrecordsLocal staffRecordsl = null;
       StaffHelper staffHelper =null;
        try{
       staffRecordsl = staffRecordslh.findByPrimaryKey(id);
       staffHelper = new StaffHelper(staffRecordsl.getId(),staffRecordsl.getLastName(),
               staffRecordsl.getFirstName(), staffRecordsl.getSex(), staffRecordsl.getAge(), staffRecordsl.getDepartment());

       }catch(Exception ex){}

        return staffHelper;
    }


     public String updateRecords(String id, String lastName, String firstName, String sex, int age, String department) {
String result ="";
        StaffrecordsLocal staffRecordsl = null;
        try {
          staffRecordsl = staffRecordslh.findByPrimaryKey(id);
            staffRecordsl.setLastName(lastName);
            staffRecordsl.setFirstName(firstName);
            staffRecordsl.setSex(sex);
            staffRecordsl.setAge(age);
            staffRecordsl.setDepartment(department);
            result = "Updated succesfully";
        } catch (Exception ex) {
            result = "Update failed";
            ex.printStackTrace();
        }
return result;
    }

 public String deleteStaff(String id) {
     String result = "";
       StaffrecordsLocal staffRecordsl = null;

        try{
       staffRecordsl = staffRecordslh.findByPrimaryKey(id);
      staffRecordsl.remove();
      result = " deleted Succesfully";
       }catch(Exception ex){
       result = "failed";
       }

        return result;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
