/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.TrainingLocal;
import entitypackages.TrainingLocalHome;
import helperpackages.TrainingHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.CreateException;
import javax.ejb.FinderException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Admin
 */
public class TrainingLogicBean implements SessionBean {
    
    private SessionContext context;
    TrainingLocalHome traininglh = null;
    
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
        traininglh = lookupTrainingBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
     traininglh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
        traininglh = null;
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
        traininglh = lookupTrainingBean();
    }

    private TrainingLocalHome lookupTrainingBean() {
        try {
            Context c = new InitialContext();
            TrainingLocalHome rv = (TrainingLocalHome) c.lookup("java:comp/env/TrainingBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String createTraining(int trainingId, String trainingDate, String trainingTime, String trainingCenter) {
      TrainingLocal  trainingl = null;
      String result = "";
        try {
            trainingl = traininglh.create(new Integer(trainingId));
            trainingl.setTrainingDate(trainingDate);
            trainingl.setTrainingTime(trainingTime);
            trainingl.setTrainingCenter(trainingCenter);
            result = "Created Successfully";
        } catch (CreateException ex) {
             result = "Created Successfully";
            ex.printStackTrace();
        }
        return result;
    }

    public TrainingHelper viewTraining(int trainingId) {
         TrainingLocal  trainingl = null;
         TrainingHelper trainingHelper = null;
        try {
            trainingl = traininglh.findByPrimaryKey(new Integer(trainingId));
            trainingHelper = new TrainingHelper(trainingl.getTrainingId().intValue(), trainingl.getTrainingDate(),
                    trainingl.getTrainingTime(), trainingl.getTrainingCenter());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }

        return trainingHelper;
    }

    public ArrayList viewAllTraining() {
         TrainingLocal  trainingl = null;
         TrainingHelper trainingHelper = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = traininglh.findByAllTraining();
            itr = col.iterator();
            while(itr.hasNext()){
            trainingl = (TrainingLocal)itr.next();
            trainingHelper = new TrainingHelper(trainingl.getTrainingId().intValue(), trainingl.getTrainingDate(),
                    trainingl.getTrainingTime(), trainingl.getTrainingCenter());
        list.add(trainingHelper);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
