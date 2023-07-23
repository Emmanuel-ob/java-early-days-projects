/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.BiodatatableLocal;
import entitypackages.BiodatatableLocalHome;
import entitypackages.LocalgovernmentLocal;
import entitypackages.LocalgovernmentLocalHome;
import entitypackages.StateLocal;
import entitypackages.StateLocalHome;
import entitypackages.StudenttableLocal;
import entitypackages.StudenttableLocalHome;
import entitypackages.UsertableLocal;
import entitypackages.UsertableLocalHome;
import helperpackages.SchoolHelper;
import helperpackages.StateHelper;
import helperpackages.localGovtHelper;
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
public class SchoolLogicBean implements SessionBean {
    
    private SessionContext context;
    BiodatatableLocalHome biodataTablelh = null;
    StudenttableLocalHome studenttablelh = null;
    UsertableLocalHome userTablelh = null;
    LocalgovernmentLocalHome localgovtlh = null;
    StateLocalHome statelh = null;
    
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
        biodataTablelh = lookupBiodatatableBean();
        studenttablelh = lookupStudenttableBean();
        userTablelh = lookupUsertableBean();
        localgovtlh = lookupLocalgovernmentBean();
        statelh = lookupStateBean();

    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
     biodataTablelh = null;
     studenttablelh = null;
     userTablelh = null;
     localgovtlh = null;
     statelh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
        biodataTablelh = null;
        studenttablelh = null;
        userTablelh = null;
        localgovtlh = null;
        statelh = null;
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
        biodataTablelh = lookupBiodatatableBean();
        studenttablelh = lookupStudenttableBean();
        userTablelh = lookupUsertableBean();
        localgovtlh = lookupLocalgovernmentBean();
        statelh = lookupStateBean();
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

    private StudenttableLocalHome lookupStudenttableBean() {
        try {
            Context c = new InitialContext();
            StudenttableLocalHome rv = (StudenttableLocalHome) c.lookup("java:comp/env/StudenttableBean");
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


    public void createUser(String userId, String password, String role, String status) {
        UsertableLocal userTablel = null;
        try {
            userTablel = userTablelh.create(userId);
                 userTablel.setPassword(password);
                 userTablel.setRole(role);
                 userTablel.setStatus(status);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }
    }

    private LocalgovernmentLocalHome lookupLocalgovernmentBean() {
        try {
            Context c = new InitialContext();
            LocalgovernmentLocalHome rv = (LocalgovernmentLocalHome) c.lookup("java:comp/env/LocalgovernmentBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

 private StateLocalHome lookupStateBean() {
        try {
            Context c = new InitialContext();
            StateLocalHome rv = (StateLocalHome) c.lookup("java:comp/env/StateBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public void createStudent(String studentId, String surName, String otherNames, String faculty, String department, String course, String level) {
StudenttableLocal studentTablel = null;
        try {
            studentTablel = studenttablelh.create(studentId);
            studentTablel.setSurName(surName);
            studentTablel.setOtherNames(otherNames);
            studentTablel.setFaculty(faculty);
            studentTablel.setDepartment(department);
            studentTablel.setCourse(course);
            studentTablel.setLevel(level);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }
    }

    public void createBiodata(String studentId, int age, String stateOfOrigin, String lga, String permHomeAddr, String contactAddr, String maidenName, int phoneNumber, String email) {
    BiodatatableLocal biodataTablel = null;
        try {
            biodataTablel = biodataTablelh.create(studentId);
            biodataTablel.setAge(age);
            biodataTablel.setStateOfOrigin(stateOfOrigin);
            biodataTablel.setLga(lga);
            biodataTablel.setPermHomeAddr(permHomeAddr);
            biodataTablel.setContactAddr(contactAddr);
            biodataTablel.setMaidenName(maidenName);
            biodataTablel.setPhoneNumber(phoneNumber);
            biodataTablel.setEmail(email);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }
    }

    public SchoolHelper viewUser(String userId) {
        SchoolHelper schoolH = null;
       UsertableLocal userTablel = null;
        try {
            userTablel = userTablelh.findByPrimaryKey(userId);
            schoolH =  new SchoolHelper(userTablel.getUserId(), userTablel.getPassword(), userTablel.getRole(),
                    userTablel.getStatus());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }

        return schoolH;
    }

    public String updateUser(String userId, String password, String role, String status) {
        String result;
        UsertableLocal userTablel = null;
        try {
            userTablel = userTablelh.findByPrimaryKey(userId);
            userTablel.setPassword(password);
            userTablel.setRole(role);
            userTablel.setStatus(status);
            result = "Update Successful";
        } catch (FinderException ex) {
             result = "Update failed";
            ex.printStackTrace();
        }
        return result;
    }

    public String authenticate(String userId) {
        UsertableLocal userTablel = null;
        try {
            userTablel = (UsertableLocal)userTablelh.findByPrimaryKey(userId);
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return userTablel.getPassword();
    }

    public void createState(String stateId, String state) {
        StateLocal statel = null;
        try {
            statel = statelh.create(stateId);
            statel.setState(state);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }
    }

    public void createLga(String lgaId, String lgaName, String state) {
        LocalgovernmentLocal localGovtl = null;
        try {
            localGovtl = localgovtlh.create(lgaId);
            localGovtl.setLgaName(lgaName);
            localGovtl.setState(state);
        } catch (CreateException ex) {
            ex.printStackTrace();
        }
    }

    public ArrayList viewAllState() {

        StateLocal statel = null;
         StateHelper stateh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = statelh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            statel = (StateLocal)itr.next();
            stateh = new StateHelper(statel.getStateId(), statel.getState());
        list.add(stateh);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

    public ArrayList viewAllLga() {
         LocalgovernmentLocal localGovtl = null;
         localGovtHelper localGovth = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = localgovtlh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            localGovtl = (LocalgovernmentLocal)itr.next();
            localGovth = new localGovtHelper(localGovtl.getLgaId(), localGovtl.getLgaName(), localGovtl.getState());

        list.add(localGovth);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

    public ArrayList ViewByState(String state) {

        LocalgovernmentLocal localGovtl = null;
         localGovtHelper localGovth = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = localgovtlh.findByState(state);
            itr = col.iterator();
            while(itr.hasNext()){
            localGovtl = (LocalgovernmentLocal)itr.next();
            localGovth = new localGovtHelper(localGovtl.getLgaId(), localGovtl.getLgaName(), localGovtl.getState());

        list.add(localGovth);

           }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

    public String deleteUser(String userId) {
        String result;
        UsertableLocal userTablel = null;
        try {
            userTablel = userTablelh.findByPrimaryKey(userId);
            userTablel.remove();
            result = "Record deleted successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            result = "Record not deleted successfully";
        }
        return result;
    }

    public ArrayList viewAllUser() {
        SchoolHelper schoolH = null;
       UsertableLocal userTablel = null;
       Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = userTablelh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            userTablel = (UsertableLocal)itr.next();
            schoolH = new SchoolHelper(userTablel.getUserId(), userTablel.getPassword(), userTablel.getRole(), userTablel.getStatus());

        list.add(schoolH);

           }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }



    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
