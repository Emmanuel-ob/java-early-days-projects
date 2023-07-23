/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import entitypackages.ComplainLocal;
import entitypackages.ComplainLocalHome;
import entitypackages.CustomerLocal;
import entitypackages.CustomerLocalHome;
import entitypackages.UserMgrLocal;
import entitypackages.UserMgrLocalHome;
import entitypackages.UserProfileLocal;
import entitypackages.UserProfileLocalHome;
import helperpackages.ComplainHelper;
import helperpackages.UserMgrHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
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
 * @author Obute
 */
public class TicketLogicBean implements SessionBean {
    
    private SessionContext context;
    ComplainLocalHome complainlh = null;
    CustomerLocalHome customerlh = null;
    UserMgrLocalHome userMgrlh = null;
    UserProfileLocalHome userProfilelh = null;
    
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
        complainlh = lookupComplainBean();
        customerlh = lookupCustomerBean();
        userMgrlh = lookupUserMgrBean();
        userProfilelh = lookupUserProfileBean();
        
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        complainlh = null;
        customerlh = null;
        userMgrlh = null;
        userProfilelh = null;
        
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
        complainlh = null;
        customerlh = null;
        userMgrlh = null;
        userProfilelh = null;
        
    }
    
    // </editor-fold>;

    /**
     * See section 7.10.3 of the EJB 2.0 specification
     * See section 7.11.3 of the EJB 2.1 specification
     */
    public void ejbCreate() {
        complainlh = lookupComplainBean();
        customerlh = lookupCustomerBean();
        userMgrlh = lookupUserMgrBean();
        userProfilelh = lookupUserProfileBean();
        // TODO implement ejbCreate if necessary, acquire resources
        // This method has access to the JNDI context so resource aquisition
        // spanning all methods can be performed here such as home interfaces
        // and data sources.
    }

    private ComplainLocalHome lookupComplainBean() {
        try {
            Context c = new InitialContext();
            ComplainLocalHome rv = (ComplainLocalHome) c.lookup("java:comp/env/ComplainBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private CustomerLocalHome lookupCustomerBean() {
        try {
            Context c = new InitialContext();
            CustomerLocalHome rv = (CustomerLocalHome) c.lookup("java:comp/env/CustomerBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private UserMgrLocalHome lookupUserMgrBean() {
        try {
            Context c = new InitialContext();
            UserMgrLocalHome rv = (UserMgrLocalHome) c.lookup("java:comp/env/UserMgrBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private UserProfileLocalHome lookupUserProfileBean() {
        try {
            Context c = new InitialContext();
            UserProfileLocalHome rv = (UserProfileLocalHome) c.lookup("java:comp/env/UserProfileBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String create_staff(String email, String password, String role, String status, String firstName, String lastName) {
       UserMgrLocal userMgrl = null;
       String result = "";
        try {
            userMgrl = userMgrlh.create(email);
            userMgrl.setPassword(password);
            userMgrl.setFirstName(firstName);
            userMgrl.setLastName(lastName);
            userMgrl.setRole(role);
            userMgrl.setStatus(status);
            result = "Staff created successfully";
        } catch (CreateException ex) {
            result = "Staff was not created";
            ex.printStackTrace();
        }
        return result;
    }

     public String create_profile(String phoneNumber, String address, String dob, String email) {
         UserProfileLocal user_pl = null;
          UserMgrLocal user_mgrl =null;
          String result ="";

        try {
            user_mgrl = (UserMgrLocal) userMgrlh.findByPrimaryKey(email);
//            Integer num = user_mgrl.getUserId();
//            userId = num.intValue();
        } catch (FinderException ex) {
            ex.printStackTrace();
        }

          if(user_mgrl != null){
            try {
                user_pl = userProfilelh.create(email);
                user_pl.setPhoneNumber(phoneNumber);
                user_pl.setAddress(address);
                user_pl.setDob(dob);
                result = "Profile created successfully";
            } catch (CreateException ex) {
                result = "Profile creation failed, user email does not exist";
                ex.printStackTrace();
            }
          }else{

          }

        return result;
    }

     public String validateUser(String email) {
        String output = null;
        UserMgrLocal user_mgrl = null;
        try {
            user_mgrl = (UserMgrLocal) userMgrlh.findByPrimaryKey(email);
            output = user_mgrl.getEmail();
        } catch (FinderException ex) {
            output = "wrong email";
            ex.printStackTrace();
        }
        return output;
    }

    public String validatePassword(String email) {
        String password = null;
        UserMgrLocal user_mgrl = null;
        try {
            user_mgrl = (UserMgrLocal) userMgrlh.findByPrimaryKey(email);
            password = user_mgrl.getPassword();
        } catch (FinderException ex) {
            password =  "wrong email";
            ex.printStackTrace();
        }
        return password;
    }

    public UserMgrHelper viewUser(String email) {
        UserMgrLocal userMgrl = null;
        UserMgrHelper userMgrH = null;
        try {
            userMgrl = userMgrlh.findByPrimaryKey(email);
            userMgrH = new UserMgrHelper(userMgrl.getEmail(), userMgrl.getRole(), userMgrl.getStatus(), userMgrl.getFirstName(), userMgrl.getLastName());
        } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return userMgrH;
    }


    public ArrayList viewAllEngineers() {
         UserMgrLocal userMgrl = null;
         UserMgrHelper userMgrh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = userMgrlh.findByRole("engineer");
            itr = col.iterator();
            while(itr.hasNext()){
            userMgrl = (UserMgrLocal)itr.next();
            userMgrh = new UserMgrHelper(userMgrl.getEmail(), userMgrl.getRole(), userMgrl.getStatus(), userMgrl.getFirstName(), userMgrl.getLastName());
        list.add(userMgrh);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

    public ArrayList viewAllStaff() {
         UserMgrLocal userMgrl = null;
         UserMgrHelper userMgrh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = userMgrlh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            userMgrl = (UserMgrLocal)itr.next();
            userMgrh = new UserMgrHelper(userMgrl.getEmail(), userMgrl.getRole(), userMgrl.getStatus(), userMgrl.getFirstName(), userMgrl.getLastName());
        list.add(userMgrh);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

    public ArrayList viewAllTickets() {
         ComplainLocal complainl = null;
         ComplainHelper complainh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = complainlh.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            complainl = (ComplainLocal)itr.next();
            complainh = new ComplainHelper(complainl.getTicketNo(), complainl.getAssignedTo(), complainl.getDateReported(),
                    complainl.getDateResolved(), complainl.getProblemDescription(), complainl.getTicketStatus(), complainl.getPhoneNumber());
        list.add(complainh);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

     public ArrayList viewMyTickets(String email) {
         ComplainLocal complainl = null;
         ComplainHelper complainh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = complainlh.findByAssignedTo(email);
            itr = col.iterator();
            while(itr.hasNext()){
            complainl = (ComplainLocal)itr.next();
            complainh = new ComplainHelper(complainl.getTicketNo(), complainl.getAssignedTo(), complainl.getDateReported(),
                    complainl.getDateResolved(), complainl.getProblemDescription(), complainl.getTicketStatus(), complainl.getPhoneNumber());
        list.add(complainh);

            }
            } catch (FinderException ex) {
            ex.printStackTrace();
        }
        return list;

    }

    public String createTicket(String customer_email, String assigned_to, String problem_description, String ticket_status) {
        CustomerLocal customerl = null;
        ComplainLocal complainl = null;
        String result ="";
        try {
            customerl = (CustomerLocal) customerlh.findByPrimaryKey(customer_email);
            String phoneNumber = customerl.getPhoneNumber();
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
            SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy/MM/dd");
            String date_reported = sdf1.format(date);
            String dateTime = sdf.format(date);
            String dateStamp = dateTime.substring(2, 4) + dateTime.substring(5, 7) + dateTime.substring(8, 10) + dateTime.substring(11, 13) +
            dateTime.substring(14, 16);
            complainl = complainlh.create(dateStamp);
            complainl.setAssignedTo(assigned_to);
            complainl.setProblemDescription(problem_description);
            complainl.setTicketStatus(ticket_status);
            complainl.setDateReported(date_reported);
            complainl.setPhoneNumber(phoneNumber);
            result = "Ticket created successfully";
        } catch (Exception ex) {
            result = "Ticket creation failed";
            ex.printStackTrace();
        }
        return result;
    }

    public String respond_to_ticket(String ticket_no, String response) {
        ComplainLocal complainl = null;
        UserMgrLocal userMgrl = null;
        String result ="";
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String date_resolved = sdf.format(date);
        try {
           
            if(response.equals("Resolved")){
            complainl = (ComplainLocal) complainlh.findByPrimaryKey(ticket_no);
            complainl.setTicketStatus(response);
            complainl.setDateResolved(date_resolved);
            result = "Ticket resolved";
            }else{
             complainl = (ComplainLocal) complainlh.findByPrimaryKey(ticket_no);
             userMgrl  = userMgrlh.findByPrimaryKey("rf@gmail.com");
             String rf_email = userMgrl.getEmail();
             complainl.setTicketStatus(response);
             complainl.setAssignedTo(rf_email);
             result = "Ticket Transfered";
            }
        } catch (FinderException ex) {
            result = "Ticket not resolved";
            ex.printStackTrace();
        }
        return result;
    }

    public String reassign_ticket(String ticket_no) {
        ComplainLocal complainl = null;
        String result ="";
        try {
            complainl = (ComplainLocal) complainlh.findByPrimaryKey(ticket_no);
            complainl.setTicketStatus("Reassigned");
            result = "Ticket reassigned successfully";
        } catch (FinderException ex) {
            result = "Ticket not reassigned successfully";
            ex.printStackTrace();
        }
        return result;
    }

    public String create_customer(String device_no, String firstName, String lastName, String email, String phoneNumber, String address) {
        CustomerLocal customerl = null;
        String result ="";
        try {
            customerl = customerlh.create(email);
            customerl.setFirstName(firstName);
            customerl.setLastName(lastName);
            customerl.setDeviceNo(device_no);
            customerl.setPhoneNumber(phoneNumber);
            customerl.setAddress(address);
            result = "Customer created successfully";
        } catch (CreateException ex) {
            result = "Customer creation failed";
            ex.printStackTrace();
        }

        return result;
    }

    public String deactivate_staff(String email) {
         UserMgrLocal userMgrl = null;
         String result = "";
        try {
            userMgrl = userMgrlh.findByPrimaryKey(email);
            userMgrl.setStatus("inactive");
            result = "Staff deactivated successfully";
        } catch (FinderException ex) {
            result = "Staff not deactivated successfully";
            ex.printStackTrace();
        }
        return result;
    }

 public String activate_staff(String email) {
         UserMgrLocal userMgrl = null;
         String result = "";
        try {
            userMgrl = userMgrlh.findByPrimaryKey(email);
            userMgrl.setStatus("active");
            result = "Staff activated successfully";
        } catch (FinderException ex) {
            result = "Staff not activated successfully";
            ex.printStackTrace();
        }
        return result;
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
    
}
