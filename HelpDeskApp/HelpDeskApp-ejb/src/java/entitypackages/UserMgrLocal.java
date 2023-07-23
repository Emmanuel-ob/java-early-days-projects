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

    Integer getUserId();

    void setUserId(Integer userId);

    String getEmail();

    void setEmail(String email);

    String getPassword();

    void setPassword(String password);

    String getRole();

    void setRole(String role);

    String getStatus();

    void setStatus(String status);

    String getName();

    void setName(String name);


}
