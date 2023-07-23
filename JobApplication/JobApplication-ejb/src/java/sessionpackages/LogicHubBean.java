/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.ApplicantsinformationLocal;
import entitypackages.ApplicantsinformationLocalHome;
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
public class LogicHubBean implements SessionBean {
    
    private SessionContext context;
    ApplicantsinformationLocalHome applicantsInformationlh = null;
    
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
      applicantsInformationlh = lookupApplicantsinformationBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        applicantsInformationlh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
    applicantsInformationlh = null;
   
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
        applicantsInformationlh = lookupApplicantsinformationBean();
    }

    private ApplicantsinformationLocalHome lookupApplicantsinformationBean() {
        try {
            Context c = new InitialContext();
            ApplicantsinformationLocalHome rv = (ApplicantsinformationLocalHome) c.lookup("java:comp/env/ApplicantsinformationBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public void createApplication(String email, String surname, String othername, String sex, int age, byte cv, byte passport) {
    ApplicantsinformationLocal applicantsInformationl = null;
        try {
            applicantsInformationl = applicantsInformationlh.create(email);
            applicantsInformationl.setSurname(surname);
            applicantsInformationl.setOthername(othername);
            applicantsInformationl.setSex(sex);
            applicantsInformationl.setAge(age);
            applicantsInformationl.setCv(cv);
            applicantsInformationl.setPassport(passport);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
