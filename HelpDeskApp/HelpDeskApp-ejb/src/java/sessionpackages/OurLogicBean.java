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
import entitypackages.UserprofileLocal;
import entitypackages.UserprofileLocalHome;
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
public class OurLogicBean implements SessionBean {
    
    private SessionContext context;
    ComplainLocalHome complainLH = null;
    CustomerLocalHome customerLH = null;
    UserMgrLocalHome userMgrLH = null;
    UserprofileLocalHome userProfileLH = null;
    
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
        complainLH = lookupComplainBean();
        customerLH = lookupCustomerBean();
        userMgrLH = lookupUserMgrBean();
        userProfileLH = lookupUserprofileBean();
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbPassivate()
     */
    public void ejbPassivate() {
        complainLH = null;
        customerLH = null;
        userMgrLH = null;
        userProfileLH = null;
    }
    
    /**
     * @see javax.ejb.SessionBean#ejbRemove()
     */
    public void ejbRemove() {
      complainLH = null;
      customerLH = null;
       userMgrLH = null;
       userProfileLH = null;
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
        complainLH = lookupComplainBean();
        customerLH = lookupCustomerBean();
        userMgrLH = lookupUserMgrBean();
        userProfileLH = lookupUserprofileBean();
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

    private UserprofileLocalHome lookupUserprofileBean() {
        try {
            Context c = new InitialContext();
            UserprofileLocalHome rv = (UserprofileLocalHome) c.lookup("java:comp/env/UserprofileBean");
            return rv;
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String create_staff(String email, String password, String status, String role, String name) {
        UserMgrLocal user_mgrl =null;
        String result;
        try {
//            user_mgrl = userMgrLH.create(new Integer(userId));
//            age =  String.valueOf(employeeh.getAge());
//            int ageInt = Integer.parseInt(age);
            user_mgrl = userMgrLH.create(email);
            user_mgrl.setPassword(password);
            user_mgrl.setStatus(status);
            user_mgrl.setRole(role);
            user_mgrl.setName(name);
            result = "User created successfully";
        } catch (CreateException ex) {
            result = "User creation failed";
            ex.printStackTrace();
        }
        return result;
    }

     public String create_profile(long phoneNumber, String address, String dob, String email) {
         UserprofileLocal user_pl = null;
          UserMgrLocal user_mgrl =null;
          String result ="";
          int userId = 0;
        try {
            user_mgrl = (UserMgrLocal) userMgrLH.findByEmail(email);
            Integer num = user_mgrl.getUserId();
            userId = num.intValue();
        } catch (FinderException ex) {
            userId = 0;
            ex.printStackTrace();
        }

          if(userId != 0){
            try {
                user_pl = userProfileLH.create(String.valueOf(userId));
                user_pl.setPhoneNumber(email);
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
            user_mgrl = (UserMgrLocal) userMgrLH.findByEmail(email);
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
            user_mgrl = (UserMgrLocal) userMgrLH.findByEmail(email);
            password = user_mgrl.getPassword();
        } catch (FinderException ex) {
            password =  "wrong email";
            ex.printStackTrace();
        }
        return password;
    }


    public ArrayList viewAllEngineers() {
         UserMgrLocal userMgrl = null;
         UserMgrHelper userMgrh = null;
         Collection col = null;
         ArrayList list = new ArrayList();
         Iterator itr = null;

        try {
            col = userMgrLH.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            userMgrl = (UserMgrLocal)itr.next();
            userMgrh = new UserMgrHelper(userMgrl.getEmail(), userMgrl.getRole(), userMgrl.getStatus(), userMgrl.getName());
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
            col = complainLH.findByAll();
            itr = col.iterator();
            while(itr.hasNext()){
            complainl = (ComplainLocal)itr.next();
            complainh = new ComplainHelper(complainl.getComplainId(), complainl.getTicketNo(), complainl.getAssignedTo(), complainl.getDateReported(),
                    complainl.getDateResolved(), complainl.getProblemDescription(), complainl.getTicketStatus());
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
            col = complainLH.findByAssignedTo(email);
            itr = col.iterator();
            while(itr.hasNext()){
            complainl = (ComplainLocal)itr.next();
            complainh = new ComplainHelper(complainl.getComplainId(), complainl.getTicketNo(), complainl.getAssignedTo(), complainl.getDateReported(),
                    complainl.getDateResolved(), complainl.getProblemDescription(), complainl.getTicketStatus());
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
            customerl = (CustomerLocal) customerLH.findByEmail(customer_email);
            String customerId = String.valueOf(customerl.getCustomerId());
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
            SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy/MM/dd");
            String date_reported = sdf1.format(date);
            String dateTime = sdf.format(date);
            String dateStamp = dateTime.substring(2, 4) + dateTime.substring(5, 7) + dateTime.substring(8, 10) + dateTime.substring(11, 13) +
            dateTime.substring(14, 16);
            complainl = complainLH.create(customerId);
            complainl.setAssignedTo(assigned_to);
            complainl.setTicketNo(dateStamp);
            complainl.setProblemDescription(problem_description);
            complainl.setTicketStatus(ticket_status);
            complainl.setDateReported(date_reported);
            result = "Ticket created successfully";
        } catch (Exception ex) {
            result = "Ticket creation failed";
            ex.printStackTrace();
        }
        return result;
    }

    public String resolve_ticket(String ticket_no) {
        ComplainLocal complainl = null;
        String result ="";
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String date_resolved = sdf.format(date);
        try {
            complainl = (ComplainLocal) complainLH.findByTicketNo(ticket_no);
            complainl.setTicketStatus("Resolved");
            complainl.setDateResolved(date_resolved);
            result = "Ticket resolved";
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
            complainl = (ComplainLocal) complainLH.findByTicketNo(ticket_no);
            complainl.setTicketStatus("Reassigned");
            result = "Ticket reassigned successfully";
        } catch (FinderException ex) {
            result = "Ticket not reassigned successfully";
            ex.printStackTrace();
        }
        return result;
    }

    public String create_customer(String device_no, String firstName, String lastName, String email, String phoneNumber) {
        CustomerLocal customerl = null;
        String result ="";
        try {
            customerl = customerLH.create(device_no);
            customerl.setFirstName(firstName);
            customerl.setLastName(lastName);
            customerl.setEmail(email);
            customerl.setPhoneNumber(phoneNumber);
            result = "Customer created successfully";
        } catch (CreateException ex) {
            result = "Customer creation failed";
            ex.printStackTrace();
        }

        return result;
    }




//      public ComplainHelper viewMyTickect(String email) {
//        UserstableLocal usersTablel = null;
//        UsersHelper usersH = null;
//        try {
//            usersTablel = usersTablelh.findByPrimaryKey(userId);
//            usersH = new UsersHelper(usersTablel.getUserId(), usersTablel.getPassword(), usersTablel.getRole(), usersTablel.getStatus());
//        } catch (FinderException ex) {
//            ex.printStackTrace();
//        }
//        return usersH;
//    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method" or "Web Service > Add Operation")
  



 
}
