/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.BiodatatableLocal;
import entitypackages.BiodatatableLocalHome;
import entitypackages.FeetableLocalHome;
import entitypackages.LocalgovttableLocal;
import entitypackages.LocalgovttableLocalHome;
import entitypackages.SemesterregistrationLocalHome;
import entitypackages.StatetableLocal;
import entitypackages.StatetableLocalHome;
import entitypackages.UserstableLocal;
import entitypackages.UserstableLocalHome;
import helperpackages.BiodataHelper;
import helperpackages.LocalGovtHelper;
import helperpackages.StateHelper;
import helperpackages.UsersHelper;
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
 * @author Uche
 */
public class UniversityLogicBean implements SessionBean {
    
    private SessionContext context;
    UserstableLocalHome usersTablelh = null;
    BiodatatableLocalHome biodataTablelh = null;
    FeetableLocalHome feeTablelh = null;
    SemesterregistrationLocalHome semesterRegistrationlh = null;
    StatetableLocalHome stateTablelh = null;
    LocalgovttableLocalHome localGovtTablelh = null;
    
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
     usersTablelh = lookupUserstableBean();
     biodataTablelh = lookupBiodatatableBean();
     feeTablelh = lookupFeetableBean();
     semesterRegistrationlh = lookupSemesterregistrationBean();
     stateTablelh = lookupStatetableBean();
     localGovtTablelh = lookupLocalgovttableBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
     usersTablelh = null;
     biodataTablelh = null;
     feeTablelh = null;
     semesterRegistrationlh = null;
     stateTablelh = null;
     localGovtTablelh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
     usersTablelh = null;
     biodataTablelh = null;
     feeTablelh = null;
     semesterRegistrationlh = null;
     stateTablelh = null;
     localGovtTablelh = null;
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
        usersTablelh = lookupUserstableBean();
        biodataTablelh = lookupBiodatatableBean();
        feeTablelh = lookupFeetableBean();
        semesterRegistrationlh = lookupSemesterregistrationBean();
        stateTablelh = lookupStatetableBean();
        localGovtTablelh = lookupLocalgovttableBean();
    }

    private UserstableLocalHome lookupUserstableBean() {
        try {
            Context c = new InitialContext();
            UserstableLocalHome rv = (UserstableLocalHome) c.lookup("java:comp/env/UserstableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private BiodatatableLocalHome lookupBiodatatableBean() {
        try {
            Context c = new InitialContext();
            BiodatatableLocalHome rv = (BiodatatableLocalHome) c.lookup("java:comp/env/BiodatatableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private FeetableLocalHome lookupFeetableBean() {
        try {
            Context c = new InitialContext();
            FeetableLocalHome rv = (FeetableLocalHome) c.lookup("java:comp/env/FeetableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private SemesterregistrationLocalHome lookupSemesterregistrationBean() {
        try {
            Context c = new InitialContext();
            SemesterregistrationLocalHome rv = (SemesterregistrationLocalHome) c.lookup("java:comp/env/SemesterregistrationBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

 private StatetableLocalHome lookupStatetableBean() {
        try {
            Context c = new InitialContext();
            StatetableLocalHome rv = (StatetableLocalHome) c.lookup("java:comp/env/StatetableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private LocalgovttableLocalHome lookupLocalgovttableBean() {
        try {
            Context c = new InitialContext();
            LocalgovttableLocalHome rv = (LocalgovttableLocalHome) c.lookup("java:comp/env/LocalgovttableBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }


    public String createUser(String userId, String password, String role, String status) {
        String result;
        UserstableLocal usersTablel = null;
        try {
            usersTablel = usersTablelh.create(userId);
            usersTablel.setPassword(password);
            usersTablel.setRole(role);
            usersTablel.setStatus(status);
            result = "User created successfully";
        } catch (CreateException ex) {
            result = "User creation failed";
            ex.printStackTrace();
        }
        return result;
    }

    public String updateUser(String userId, String password, String role, String status) {
        String result;
        UserstableLocal usersTablel = null;
        try {
            usersTablel = usersTablelh.findByPrimaryKey(userId);
            usersTablel.setPassword(password);
            usersTablel.setRole(role);
            usersTablel.setStatus(status);
            result = "User update successfully";
        } catch (FinderException ex) {
            result = "User update failed";
            ex.printStackTrace();
        }
        return result;
    }

    public UsersHelper viewUsers(String userId) {
        UserstableLocal usersTablel = null;
        UsersHelper usersH = null;
        try {
            usersTablel = usersTablelh.findByPrimaryKey(userId);
            usersH = new UsersHelper(usersTablel.getUserId(), usersTablel.getPassword(), usersTablel.getRole(), usersTablel.getStatus());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return usersH;
    }

    public String createBiodata(String userId, String surName, String firstName, String otherName, String maidenName, String sex, String maritalStatus, String dob, String permHomeAddr, String contactAddr, String stateOfOrigin, String localGovt, String homeTown, String country, long phoneNumber, String email) {
        BiodatatableLocal biodataTablel = null;
        String result;
        try {
            biodataTablel = biodataTablelh.create(userId);
            biodataTablel.setSurName(surName);
            biodataTablel.setFirstName(firstName);
            biodataTablel.setOtherName(otherName);
            biodataTablel.setMaidenName(maidenName);
            biodataTablel.setSex(sex);
            biodataTablel.setMaritalStatus(maritalStatus);
            biodataTablel.setDob(dob);
            biodataTablel.setPermHomeAddr(permHomeAddr);
            biodataTablel.setContactAddr(contactAddr);
            biodataTablel.setStateOfOrigin(stateOfOrigin);
            biodataTablel.setLocalGovt(localGovt);
            biodataTablel.setHomeTown(homeTown);
            biodataTablel.setCountry(country);
            biodataTablel.setPhoneNumber(phoneNumber);
            biodataTablel.setEmail(email);
            result = "Biodata created successfully";
        } catch (CreateException ex) {
            result = "Biodata creation failed";
            ex.printStackTrace();
        }
        return result;
    }

    public String updateBiodata(String userId, String surName, String firstName, String otherName, String maidenName, String sex, String maritalStatus, String dob, String permHomeAddr, String contactAddr, String stateOfOrigin, String localGovt, String homeTown, String country, long phoneNumber, String email) {
       BiodatatableLocal biodataTablel = null;
        String result;
        try {
            biodataTablel = biodataTablelh.findByPrimaryKey(userId);
            biodataTablel.setSurName(surName);
            biodataTablel.setFirstName(firstName);
            biodataTablel.setOtherName(otherName);
            biodataTablel.setMaidenName(maidenName);
            biodataTablel.setSex(sex);
            biodataTablel.setMaritalStatus(maritalStatus);
            biodataTablel.setDob(dob);
            biodataTablel.setPermHomeAddr(permHomeAddr);
            biodataTablel.setContactAddr(contactAddr);
            biodataTablel.setStateOfOrigin(stateOfOrigin);
            biodataTablel.setLocalGovt(localGovt);
            biodataTablel.setHomeTown(homeTown);
            biodataTablel.setCountry(country);
            biodataTablel.setPhoneNumber(phoneNumber);
            biodataTablel.setEmail(email);
            result = "Biodata updated successfully";
        } catch (FinderException ex) {
            result = "Biodata update failed";
            ex.printStackTrace();
        }
        return result;
    }

    public BiodataHelper viewBiodata(String userId) {
        BiodatatableLocal biodataTablel = null;
        BiodataHelper biodataH = null;
        try {
            biodataTablel = biodataTablelh.findByPrimaryKey(userId);
            biodataH = new BiodataHelper(biodataTablel.getUserId(), biodataTablel.getSurName(), biodataTablel.getFirstName(), biodataTablel.getOtherName(), biodataTablel.getMaidenName(), biodataTablel.getSex(), biodataTablel.getMaritalStatus(), biodataTablel.getDob(), biodataTablel.getPermHomeAddr(),
                    biodataTablel.getContactAddr(), biodataTablel.getStateOfOrigin(), biodataTablel.getLocalGovt(), biodataTablel.getHomeTown(), biodataTablel.getCountry(), biodataTablel.getPhoneNumber(), biodataTablel.getEmail());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return biodataH;
    }

    public String validateUser(String userId) {
        String output = null;
        UserstableLocal usersTablel = null;
        try {
            usersTablel = usersTablelh.findByPrimaryKey(userId);
            output = usersTablel.getUserId();
        } catch (FinderException ex) {
            output = "wrong userId";
            ex.printStackTrace();
        }
        return output;
    }

    public String validatePassword(String userId) {
        String password = null;
        UserstableLocal usersTablel = null;
        try {
            usersTablel = usersTablelh.findByPrimaryKey(userId);
            password = usersTablel.getPassword();
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return password;
    }

    public ArrayList viewAllState() {
        StatetableLocal stateTablel = null;
         StateHelper stateh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = stateTablelh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            stateTablel = (StatetableLocal)itr.next();
            stateh = new StateHelper(stateTablel.getStateId(), stateTablel.getState());
        list.add(stateh);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

    public ArrayList viewAllLga() {
        LocalgovttableLocal localGovtTablel = null;
         LocalGovtHelper localGovth = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = localGovtTablelh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            localGovtTablel = (LocalgovttableLocal)itr.next();
            localGovth = new LocalGovtHelper(localGovtTablel.getLgaId(), localGovtTablel.getLgaName(), localGovtTablel.getState());

        list.add(localGovth);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public ArrayList viewByState(String state) {
       LocalgovttableLocal localGovtTablel = null;
         LocalGovtHelper localGovth = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = localGovtTablelh.findByState(state);
            itr = col.iterator();
            while(itr.hasNext()){
            localGovtTablel = (LocalgovttableLocal)itr.next();
            localGovth = new LocalGovtHelper(localGovtTablel.getLgaId(), localGovtTablel.getLgaName(), localGovtTablel.getState());

        list.add(localGovth);

           }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;
    }


 

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
