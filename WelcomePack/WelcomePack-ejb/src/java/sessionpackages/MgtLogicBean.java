/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import EntityPackages.CandidatesLocalHome;
import EntityPackages.CategoriesLocalHome;
import EntityPackages.CentresLocalHome;
import EntityPackages.SubjectLocalHome;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Obute
 */
public class MgtLogicBean implements SessionBean {
    
    private SessionContext context;
    CandidatesLocalHome candidteslh = null;
    CategoriesLocalHome categorieslh = null;
    CentresLocalHome centreslh = null;
    SubjectLocalHome subjectlh = null;
    
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
        
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
        
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
        candidteslh = lookupCandidatesBean();
        categorieslh = lookupCategoriesBean();
        centreslh = lookupCentresBean();
        subjectlh = lookupSubjectBean();
    }

    private CandidatesLocalHome lookupCandidatesBean() {
        try {
            Context c = new InitialContext();
            CandidatesLocalHome rv = (CandidatesLocalHome) c.lookup("java:comp/env/CandidatesBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private CategoriesLocalHome lookupCategoriesBean() {
        try {
            Context c = new InitialContext();
            CategoriesLocalHome rv = (CategoriesLocalHome) c.lookup("java:comp/env/CategoriesBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private CentresLocalHome lookupCentresBean() {
        try {
            Context c = new InitialContext();
            CentresLocalHome rv = (CentresLocalHome) c.lookup("java:comp/env/CentresBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private SubjectLocalHome lookupSubjectBean() {
        try {
            Context c = new InitialContext();
            SubjectLocalHome rv = (SubjectLocalHome) c.lookup("java:comp/env/SubjectBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }




    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
