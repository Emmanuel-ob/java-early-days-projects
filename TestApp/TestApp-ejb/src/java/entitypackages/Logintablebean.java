/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Uche
 */
@Entity
@Table(name = "logintablebean")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Logintablebean.findAll", query = "SELECT l FROM Logintablebean l"),
    @NamedQuery(name = "Logintablebean.findByEmail", query = "SELECT l FROM Logintablebean l WHERE l.email = :email"),
    @NamedQuery(name = "Logintablebean.findByName", query = "SELECT l FROM Logintablebean l WHERE l.name = :name"),
    @NamedQuery(name = "Logintablebean.findByPassword", query = "SELECT l FROM Logintablebean l WHERE l.password = :password")})
public class Logintablebean implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "email")
    private String email;
    @Size(max = 250)
    @Column(name = "name")
    private String name;
    @Size(max = 250)
    @Column(name = "password")
    private String password;

    public Logintablebean() {
    }

    public Logintablebean(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (email != null ? email.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Logintablebean)) {
            return false;
        }
        Logintablebean other = (Logintablebean) object;
        if ((this.email == null && other.email != null) || (this.email != null && !this.email.equals(other.email))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitypackages.Logintablebean[ email=" + email + " ]";
    }
    
}
