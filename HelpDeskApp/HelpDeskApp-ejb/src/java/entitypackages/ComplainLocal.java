/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Obute
 */
public interface ComplainLocal extends EJBLocalObject {

    Integer getComplainId();

    void setComplainId(Integer complainId);

    String getCustomerId();

    void setCustomerId(String customerId);

    String getTicketNo();

    void setTicketNo(String ticketNo);

    String getAssignedTo();

    void setAssignedTo(String assignedTo);

    String getDateReported();

    void setDateReported(String dateReported);

    String getDateResolved();

    void setDateResolved(String dateResolved);

    String getProblemDescription();

    void setProblemDescription(String problemDescription);

    String getTicketStatus();

    void setTicketStatus(String ticketStatus);


}
