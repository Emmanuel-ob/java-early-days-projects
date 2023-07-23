/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package helperpackages;

/**
 *
 * @author Obute
 */
public class ComplainHelper {
    private String ticket_no;
    private String assigned_to;
    private String date_reported;
    private String date_resolved;
    private String problem_description;
    private String ticket_status;
    private String phoneNumber;

    public ComplainHelper(String ticket_no, String assigned_to, String date_reported, String date_resolved, String problem_description, String ticket_status, String phoneNumber) {
        this.ticket_no = ticket_no;
        this.assigned_to = assigned_to;
        this.date_reported = date_reported;
        this.date_resolved = date_resolved;
        this.problem_description = problem_description;
        this.ticket_status = ticket_status;
        this.phoneNumber =  phoneNumber;
    }

    public String getAssigned_to() {
        return assigned_to;
    }

    public void setAssigned_to(String assigned_to) {
        this.assigned_to = assigned_to;
    }

    public String getDate_reported() {
        return date_reported;
    }

    public void setDate_reported(String date_reported) {
        this.date_reported = date_reported;
    }

    public String getDate_resolved() {
        return date_resolved;
    }

    public void setDate_resolved(String date_resolved) {
        this.date_resolved = date_resolved;
    }

    public String getProblem_description() {
        return problem_description;
    }

    public void setProblem_description(String problem_description) {
        this.problem_description = problem_description;
    }

    public String getTicket_no() {
        return ticket_no;
    }

    public void setTicket_no(String ticket_no) {
        this.ticket_no = ticket_no;
    }

    public String getTicket_status() {
        return ticket_status;
    }

    public void setTicket_status(String ticket_status) {
        this.ticket_status = ticket_status;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


}
