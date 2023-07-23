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
public interface StateLocal extends EJBLocalObject {

    String getStateId();

    void setStateId(String stateId);

    String getState();

    void setState(String state);


}
