/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entitypackages;

import javax.ejb.EJBLocalObject;

/**
 *
 * @author Uche
 */
public interface FeetableLocal extends EJBLocalObject {

    String getUserId();

    void setUserId(String userId);

    String getPin();

    void setPin(String pin);

    String getFeestatus();

    void setFeestatus(String feestatus);


}
