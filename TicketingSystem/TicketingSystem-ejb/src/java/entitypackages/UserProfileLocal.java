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
public interface UserProfileLocal extends EJBLocalObject {

    String getEmail();

    void setEmail(String email);

    String getPhoneNumber();

    void setPhoneNumber(String phoneNumber);

    String getAddress();

    void setAddress(String address);

    String getDob();

    void setDob(String dob);


}
