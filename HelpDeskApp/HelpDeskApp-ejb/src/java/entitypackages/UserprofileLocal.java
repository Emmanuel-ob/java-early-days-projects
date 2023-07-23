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
public interface UserprofileLocal extends EJBLocalObject {

    Integer getCustomerId();

    void setCustomerId(Integer customerId);

    String getUserId();

    void setUserId(String userId);

    String getPhoneNumber();

    void setPhoneNumber(String phoneNumber);

    String getAddress();

    void setAddress(String address);

    String getDob();

    void setDob(String dob);


}
