/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import helperpackages.UserMgrHelper;
import java.util.ArrayList;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Obute
 */
public interface TicketLogicLocal extends EJBLocalObject {

    String create_staff(String email, String password, String role, String status, String firstName, String lastName);
    
    String create_profile(String phoneNumber, String address, String dob, String email);

    String validateUser(String email);

    String validatePassword(String email);

    UserMgrHelper viewUser(String email);

    ArrayList viewAllEngineers();

    ArrayList viewAllStaff();

    ArrayList viewAllTickets();

    ArrayList viewMyTickets(String email);

   String createTicket(String customer_email, String assigned_to, String problem_description, String ticket_status);

   String respond_to_ticket(String ticket_no, String response);

   String reassign_ticket(String ticket_no);

   String create_customer(String device_no, String firstName, String lastName, String email, String phoneNumber, String address);

   String deactivate_staff(String email);

   String activate_staff(String email);

   

}
