/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.BiodataLocal;
import entitypackages.BiodataLocalHome;
import entitypackages.UsertableLocal;
import entitypackages.UsertableLocalHome;
import helperpackages.LoginHelper;
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
public class LoginLogicBean implements SessionBean {
    
    private SessionContext context;
    BiodataLocalHome biodatalh = null;
    UsertableLocalHome userTablelh = null;
    
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
     biodatalh =lookupBiodataBean();
     userTablelh = lookupUsertableBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
       biodatalh = null;
       userTablelh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
     biodatalh = null;
     userTablelh = null;
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
        biodatalh =lookupBiodataBean();
        userTablelh = lookupUsertableBean();
    }

    private BiodataLocalHome lookupBiodataBean() {
        try {
            Context c = new InitialContext();
            BiodataLocalHome rv = (BiodataLocalHome) c.lookup("java:comp/env/BiodataBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private UsertableLocalHome lookupUsertableBean() {
        try {
            Context c = new InitialContext();
            UsertableLocalHome rv = (UsertableLocalHome) c.lookup("java:comp/env/UsertableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String signUp(String userId, String password, String role, String status) {

        UsertableLocal userTablel = null;
        String result = "";
        try {
            userTablel = userTablelh.create(userId);
            userTablel.setPassword(password);
            userTablel.setRole(role);
            userTablel.setStatus(status);
            result = "created successfully";
        } catch (CreateException ex) {
            result = " fail to create user";
            ex.printStackTrace();
        }

        return result;
    }


    public String createBiodata(String userId, String surName, String otherNames, String sex, String nationality) {

        BiodataLocal biodatal = null;
        String result = "";
        try {
            biodatal = biodatalh.create(userId);
            biodatal.setSurName(surName);
            biodatal.setOtherNames(otherNames);
            biodatal.setSex(sex);
            biodatal.setNationality(nationality);
            result = "created successfully";
        } catch (CreateException ex) {
            result = " fail to create biodata";
            ex.printStackTrace();
        }

        return null;
    }

    public LoginHelper viewLoginData(String userId) {

        UsertableLocal userTablel = null;
        LoginHelper loginh = null;
        try {
            userTablel = userTablelh.findByPrimaryKey(userId);
            loginh = new LoginHelper(userTablel.getUserId(), userTablel.getPassword(), userTablel.getRole(),
                    userTablel.getStatus());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return loginh;
    }

    public String authenticate(String userId) {
        UsertableLocal userTablel = null;
        String password = "";
        try {
            userTablel = userTablelh.findByPrimaryKey(userId);
            password = userTablel.getPassword();
        } catch (FinderException ex) {
            password = "fail";
            ex.printStackTrace();
        }
        return password;
    }

    public String getPassWordHint(String userId) {
        UsertableLocal userTablel = null;
        String password = "";
        try {
            userTablel = userTablelh.findByPrimaryKey(userId);
            password = userTablel.getPassword();
        } catch (FinderException ex) {
            password = "userId doesn't exist";
            ex.printStackTrace();
        }
        return password;
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
