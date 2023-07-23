/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.StudentinformationLocal;
import entitypackages.StudentinformationLocalHome;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Admin
 */
public class CodeHubBean implements SessionBean {
    
    private SessionContext context;
    StudentinformationLocalHome studentInformationlh = null;
    
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
        studentInformationlh = lookupStudentinformationBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        studentInformationlh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
        studentInformationlh = null;
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

        studentInformationlh = lookupStudentinformationBean();
    }

    private StudentinformationLocalHome lookupStudentinformationBean() {
        try {
            Context c = new InitialContext();
            StudentinformationLocalHome rv = (StudentinformationLocalHome) c.lookup("java:comp/env/StudentinformationBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
     public String createStudentRecord(String id, String surName, String otherName, String sex, String course) {
String resut = "";
        StudentinformationLocal studentInformationl = null;
        try{
        studentInformationl = studentInformationlh.create(id);
        studentInformationl.setSurName(surName);
        studentInformationl.setOtherName(otherName);
        studentInformationl.setSex(sex);
        studentInformationl.setCourse(course);
          resut = "ok";

        }catch(Exception ed){resut = "failed";}
        return resut;

    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
