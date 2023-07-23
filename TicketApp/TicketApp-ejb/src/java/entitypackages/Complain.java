/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entitypackages;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Obute
 */
@Entity
@Table(name = "complain")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Complain.findAll", query = "SELECT c FROM Complain c"),
    @NamedQuery(name = "Complain.findByComplainId", query = "SELECT c FROM Complain c WHERE c.complainId = :complainId"),
    @NamedQuery(name = "Complain.findByCustomerId", query = "SELECT c FROM Complain c WHERE c.customerId = :customerId"),
    @NamedQuery(name = "Complain.findByTicketNo", query = "SELECT c FROM Complain c WHERE c.ticketNo = :ticketNo"),
    @NamedQuery(name = "Complain.findByAssignedTo", query = "SELECT c FROM Complain c WHERE c.assignedTo = :assignedTo"),
    @NamedQuery(name = "Complain.findByDateReported", query = "SELECT c FROM Complain c WHERE c.dateReported = :dateReported"),
    @NamedQuery(name = "Complain.findByDateResolved", query = "SELECT c FROM Complain c WHERE c.dateResolved = :dateResolved"),
    @NamedQuery(name = "Complain.findByProblemDescription", query = "SELECT c FROM Complain c WHERE c.problemDescription = :problemDescription"),
    @NamedQuery(name = "Complain.findByTicketStatus", query = "SELECT c FROM Complain c WHERE c.ticketStatus = :ticketStatus")})
public class Complain implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "complainId")
    private Integer complainId;
    @Basic(optional = false)
    @Column(name = "customerId")
    private String customerId;
    @Basic(optional = false)
    @Column(name = "ticket_no")
    private String ticketNo;
    @Basic(optional = false)
    @Column(name = "assigned_to")
    private String assignedTo;
    @Basic(optional = false)
    @Column(name = "date_reported")
    private String dateReported;
    @Basic(optional = false)
    @Column(name = "date_resolved")
    private String dateResolved;
    @Basic(optional = false)
    @Column(name = "problem_description")
    private String problemDescription;
    @Basic(optional = false)
    @Column(name = "ticket_status")
    private String ticketStatus;

    public Complain() {
    }

    public Complain(Integer complainId) {
        this.complainId = complainId;
    }

    public Complain(Integer complainId, String customerId, String ticketNo, String assignedTo, String dateReported, String dateResolved, String problemDescription, String ticketStatus) {
        this.complainId = complainId;
        this.customerId = customerId;
        this.ticketNo = ticketNo;
        this.assignedTo = assignedTo;
        this.dateReported = dateReported;
        this.dateResolved = dateResolved;
        this.problemDescription = problemDescription;
        this.ticketStatus = ticketStatus;
    }

    public Integer getComplainId() {
        return complainId;
    }

    public void setComplainId(Integer complainId) {
        this.complainId = complainId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getTicketNo() {
        return ticketNo;
    }

    public void setTicketNo(String ticketNo) {
        this.ticketNo = ticketNo;
    }

    public String getAssignedTo() {
        return assignedTo;
    }

    public void setAssignedTo(String assignedTo) {
        this.assignedTo = assignedTo;
    }

    public String getDateReported() {
        return dateReported;
    }

    public void setDateReported(String dateReported) {
        this.dateReported = dateReported;
    }

    public String getDateResolved() {
        return dateResolved;
    }

    public void setDateResolved(String dateResolved) {
        this.dateResolved = dateResolved;
    }

    public String getProblemDescription() {
        return problemDescription;
    }

    public void setProblemDescription(String problemDescription) {
        this.problemDescription = problemDescription;
    }

    public String getTicketStatus() {
        return ticketStatus;
    }

    public void setTicketStatus(String ticketStatus) {
        this.ticketStatus = ticketStatus;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (complainId != null ? complainId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Complain)) {
            return false;
        }
        Complain other = (Complain) object;
        if ((this.complainId == null && other.complainId != null) || (this.complainId != null && !this.complainId.equals(other.complainId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitypackages.Complain[ complainId=" + complainId + " ]";
    }
    
}
