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
public interface UserMgrLocal extends EJBLocalObject {

    String getEmail();

    void setEmail(String email);

    String getPassword();

    void setPassword(String password);

    String getRole();

    void setRole(String role);

    String getStatus();

    void setStatus(String status);

    String getFirstName();

    void setFirstName(String firstName);

    String getLastName();

    void setLastName(String lastName);


}
