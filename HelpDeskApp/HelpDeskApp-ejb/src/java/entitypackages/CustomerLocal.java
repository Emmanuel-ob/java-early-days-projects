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
public interface CustomerLocal extends EJBLocalObject {

    Integer getCustomerId();

    void setCustomerId(Integer customerId);

    String getDeviceNo();

    void setDeviceNo(String deviceNo);

    String getFirstName();

    void setFirstName(String firstName);

    String getLastName();

    void setLastName(String lastName);

    String getEmail();

    void setEmail(String email);

    String getPhoneNumber();

    void setPhoneNumber(String phoneNumber);


}
