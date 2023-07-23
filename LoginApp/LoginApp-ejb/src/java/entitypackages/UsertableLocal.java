/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Admin
 */
public interface UsertableLocal extends EJBLocalObject {

    String getUserId();

    void setUserId(String userId);

    String getPassword();

    void setPassword(String password);

    String getRole();

    void setRole(String role);

    String getStatus();

    void setStatus(String status);


}
