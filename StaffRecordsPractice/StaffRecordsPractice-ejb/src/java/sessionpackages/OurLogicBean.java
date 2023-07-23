/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.StaffrecordpracticeLocal;
import entitypackages.StaffrecordpracticeLocalHome;
import helperpackages.StaffHelper;
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
public class OurLogicBean implements SessionBean {
    
    private SessionContext context;
    StaffrecordpracticeLocalHome staffRecordPracticelh = null;
    
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
       staffRecordPracticelh = lookupStaffrecordpracticeBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        staffRecordPracticelh = null;
        
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
        staffRecordPracticelh = null;
        
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
        staffRecordPracticelh = lookupStaffrecordpracticeBean();
    }

    private StaffrecordpracticeLocalHome lookupStaffrecordpracticeBean() {
        try {
            Context c = new InitialContext();
            StaffrecordpracticeLocalHome rv = (StaffrecordpracticeLocalHome) c.lookup("java:comp/env/StaffrecordpracticeBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public void createRecord(int id, String lastName, String firstName, String sex, int age, String email, String department) {

    StaffrecordpracticeLocal staffRecordPracticel = null;
        try {
            staffRecordPracticel = staffRecordPracticelh.create(new Integer(id));
            staffRecordPracticel.setLastName(lastName);
            staffRecordPracticel.setFirstName(firstName);
            staffRecordPracticel.setSex(sex);
            staffRecordPracticel.setAge(age);
            staffRecordPracticel.setEmail(email);
            staffRecordPracticel.setDepartment(department);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }

    }

    public StaffHelper viewRecord(int id) {
     StaffrecordpracticeLocal staffRecordPracticel = null;
     StaffHelper staffHelper = null;
     try{
       staffRecordPracticel = staffRecordPracticelh.findByPrimaryKey(new Integer(id));
     staffHelper = new  StaffHelper(staffRecordPracticel.getId().intValue(), staffRecordPracticel.getLastName(), staffRecordPracticel.getFirstName(),
     staffRecordPracticel.getSex(), staffRecordPracticel.getAge(), staffRecordPracticel.getEmail(), staffRecordPracticel.getDepartment());
     }catch (Exception ex){}
        return staffHelper;
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
