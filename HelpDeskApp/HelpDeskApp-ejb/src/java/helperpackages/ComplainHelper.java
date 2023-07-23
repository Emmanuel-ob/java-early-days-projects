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
    private int complainId;
    private Integer customerId;
    private String ticket_no;
    private String assigned_to;
    private String date_reported;
    private String date_resolved;
    private String problem_description;
    private String ticket_status;

    public ComplainHelper(Integer customerId, String ticket_no, String assigned_to, String date_reported, String date_resolved, String problem_description, String ticket_status) {
        this.customerId = customerId;
        this.ticket_no = ticket_no;
        this.assigned_to = assigned_to;
        this.date_reported = date_reported;
        this.date_resolved = date_resolved;
        this.problem_description = problem_description;
        this.ticket_status = ticket_status;
    }

    public String getAssigned_to() {
        return assigned_to;
    }

    public void setAssigned_to(String assigned_to) {
        this.assigned_to = assigned_to;
    }

    public int getComplainId() {
        return complainId;
    }

    public void setComplainId(int complainId) {
        this.complainId = complainId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
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


}
