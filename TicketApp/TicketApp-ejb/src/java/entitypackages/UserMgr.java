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
@Table(name = "user_mgr")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserMgr.findAll", query = "SELECT u FROM UserMgr u"),
    @NamedQuery(name = "UserMgr.findByUserId", query = "SELECT u FROM UserMgr u WHERE u.userId = :userId"),
    @NamedQuery(name = "UserMgr.findByEmail", query = "SELECT u FROM UserMgr u WHERE u.email = :email"),
    @NamedQuery(name = "UserMgr.findByPassword", query = "SELECT u FROM UserMgr u WHERE u.password = :password"),
    @NamedQuery(name = "UserMgr.findByRole", query = "SELECT u FROM UserMgr u WHERE u.role = :role"),
    @NamedQuery(name = "UserMgr.findByStatus", query = "SELECT u FROM UserMgr u WHERE u.status = :status")})
public class UserMgr implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "userId")
    private Integer userId;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @Column(name = "role")
    private boolean role;
    @Basic(optional = false)
    @Column(name = "status")
    private String status;

    public UserMgr() {
    }

    public UserMgr(Integer userId) {
        this.userId = userId;
    }

    public UserMgr(Integer userId, String email, String password, boolean role, String status) {
        this.userId = userId;
        this.email = email;
        this.password = password;
        this.role = role;
        this.status = status;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userId != null ? userId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserMgr)) {
            return false;
        }
        UserMgr other = (UserMgr) object;
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitypackages.UserMgr[ userId=" + userId + " ]";
    }
    
}
