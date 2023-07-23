/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.EmployeerecordsLocal;
import entitypackages.EmployeerecordsLocalHome;
import helperpackages.EmployeeHelper;
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
public class EmployeeLogicBean implements SessionBean {
    
    private SessionContext context;
    EmployeerecordsLocalHome employeelh = null;
    
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
      employeelh = lookupEmployeerecordsBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        employeelh = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
       employeelh = null;
    }
    
    // </editor-fold>;

    /**
     * See section 7.10.3 of the EJB 2.0 specification
     * See section 7.11.3 of the EJB 2.1 specification
     */
    public void ejbCreate() {
        employeelh = lookupEmployeerecordsBean();
        // TODO implement ejbCreate if necessary, acquire resources
        // This method has access to the JNDI context so resource aquisition
        // spanning all methods can be performed here such as home interfaces
        // and data sources.
    }

    private EmployeerecordsLocalHome lookupEmployeerecordsBean() {
        try {
            Context c = new InitialContext();
            EmployeerecordsLocalHome rv = (EmployeerecordsLocalHome) c.lookup("java:comp/env/EmployeerecordsBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String createEmployee(int staffId, String surName, String otherNames, String sex, int age, String email, String department) {
        EmployeerecordsLocal employeeRecordsl = null;
        String result = null;
        try {
            employeeRecordsl = employeelh.create(new Integer(staffId));
            employeeRecordsl.setSurName(surName);
            employeeRecordsl.setOtherNames(otherNames);
            employeeRecordsl.setSex(sex);
            employeeRecordsl.setAge(age);
            employeeRecordsl.setEmail(email);
            employeeRecordsl.setDepartment(department);
            result = "created successfully";
        } catch (CreateException ex) {
           result = "fail to create";
        }


        return result;
    }

    public EmployeeHelper viewEmployee(int staffId) {
         EmployeerecordsLocal employeeRecordsl = null;
         EmployeeHelper employeeh = null;
        try {
            employeeRecordsl = employeelh.findByPrimaryKey(new Integer(staffId));
            employeeh = new EmployeeHelper(employeeRecordsl.getStaffId().intValue(), employeeRecordsl.getSurName(),
                    employeeRecordsl.getOtherNames(), employeeRecordsl.getSex(), employeeRecordsl.getAge(),
                    employeeRecordsl.getEmail(), employeeRecordsl.getDepartment());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return employeeh;
    }

    public String updateEmployee(int staffId, String surName, String otherNames, String sex, int age, String email, String department) {
        EmployeerecordsLocal employeeRecordsl = null;
        String result ="";
        try {
            employeeRecordsl = employeelh.findByPrimaryKey(new Integer(staffId));
            employeeRecordsl.setSurName(surName);
            employeeRecordsl.setOtherNames(otherNames);
            employeeRecordsl.setSex(sex);
            employeeRecordsl.setAge(age);
            employeeRecordsl.setEmail(email);
            employeeRecordsl.setDepartment(department);
            result = "update successful";
        } catch (FinderException ex) {
            result = "update successful";
        }
        return result;
    }

    public String deleteEmployer(int staffId) {
        EmployeerecordsLocal employeeRecordsl = null;
        String result ="";
        try {
            employeeRecordsl = employeelh.findByPrimaryKey(new Integer(staffId));
            employeeRecordsl.remove();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public ArrayList viewAllEmployee() {

       EmployeerecordsLocal employeeRecordsl = null;
         EmployeeHelper employeeh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = employeelh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            employeeRecordsl = (EmployeerecordsLocal)itr.next();
            employeeh = new EmployeeHelper(employeeRecordsl.getStaffId().intValue(), employeeRecordsl.getSurName(), employeeRecordsl.getOtherNames(),
                    employeeRecordsl.getSex(), employeeRecordsl.getAge(), employeeRecordsl.getEmail(), employeeRecordsl.getDepartment());
        list.add(employeeh);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;
        
    }


    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
