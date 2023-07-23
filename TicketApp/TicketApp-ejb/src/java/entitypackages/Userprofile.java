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
@Table(name = "userprofile")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Userprofile.findAll", query = "SELECT u FROM Userprofile u"),
    @NamedQuery(name = "Userprofile.findByCustomerId", query = "SELECT u FROM Userprofile u WHERE u.customerId = :customerId"),
    @NamedQuery(name = "Userprofile.findByUserId", query = "SELECT u FROM Userprofile u WHERE u.userId = :userId"),
    @NamedQuery(name = "Userprofile.findByPhoneNumber", query = "SELECT u FROM Userprofile u WHERE u.phoneNumber = :phoneNumber"),
    @NamedQuery(name = "Userprofile.findByAddress", query = "SELECT u FROM Userprofile u WHERE u.address = :address"),
    @NamedQuery(name = "Userprofile.findByDob", query = "SELECT u FROM Userprofile u WHERE u.dob = :dob")})
public class Userprofile implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "customerId")
    private Integer customerId;
    @Basic(optional = false)
    @Column(name = "userId")
    private String userId;
    @Basic(optional = false)
    @Column(name = "phoneNumber")
    private String phoneNumber;
    @Basic(optional = false)
    @Column(name = "address")
    private String address;
    @Basic(optional = false)
    @Column(name = "dob")
    private String dob;

    public Userprofile() {
    }

    public Userprofile(Integer customerId) {
        this.customerId = customerId;
    }

    public Userprofile(Integer customerId, String userId, String phoneNumber, String address, String dob) {
        this.customerId = customerId;
        this.userId = userId;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.dob = dob;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (customerId != null ? customerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Userprofile)) {
            return false;
        }
        Userprofile other = (Userprofile) object;
        if ((this.customerId == null && other.customerId != null) || (this.customerId != null && !this.customerId.equals(other.customerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitypackages.Userprofile[ customerId=" + customerId + " ]";
    }
    
}
