/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.StudentrecordsTbLocal;
import entitypackages.StudentrecordsTbLocalHome;
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
public class OurLogicBean implements SessionBean {
    
    private SessionContext context;
    StudentrecordsTbLocalHome studentRecordtlh = null;
    
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
      studentRecordtlh = lookupStudentrecordsTbBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
      studentRecordtlh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
    studentRecordtlh = null;
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
        studentRecordtlh = lookupStudentrecordsTbBean();
    }

    private StudentrecordsTbLocalHome lookupStudentrecordsTbBean() {
        try {
            Context c = new InitialContext();
            StudentrecordsTbLocalHome rv = (StudentrecordsTbLocalHome) c.lookup("java:comp/env/StudentrecordsTbBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String createStudentRecord(String id, String surName, String otherName, String sex, String course) {

        StudentrecordsTbLocal studentRecordtl = null;
        try{
        studentRecordtl = studentRecordtlh.create(id);
        studentRecordtl.setSurName(surName);
        studentRecordtl.setOtherName(otherName);
        studentRecordtl.setSex(sex);
        studentRecordtl.setCourse(course);


        }catch(Exception ed){}
        return null;

    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
