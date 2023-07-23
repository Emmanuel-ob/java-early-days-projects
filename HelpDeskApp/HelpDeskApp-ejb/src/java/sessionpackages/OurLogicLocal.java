/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionpackages;

import java.util.ArrayList;
import javax.ejb.EJBLocalObject;

/**
 *
 * @author Obute
 */
public interface OurLogicLocal extends EJBLocalObject {

     String create_staff(String email, String password, String status, String role, String name);

     String create_profile(long phoneNumber, String address, String dob, String email);
     String validateUser(String email);
     String validatePassword(String email);
     ArrayList viewAllEngineers();
     ArrayList viewAllTickets();
     ArrayList viewMyTickets(String email);
     String createTicket(String customer_email, String assigned_to, String problem_description, String ticket_status);

     String resolve_ticket(String ticket_no);
     String reassign_ticket(String ticket_no);

     String create_customer(String device_no, String firstName, String lastName, String email, String phoneNumber);
}
